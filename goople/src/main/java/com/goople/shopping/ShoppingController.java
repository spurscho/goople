package com.goople.shopping;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.goople.cart.CartDAO;
import com.goople.cart.CartDTO;
import com.goople.member.SessionDTO;
import com.goople.shopping.ProductDAO;
import com.goople.shopping.ProductDetailDAO;
import com.goople.shopping.ProductDTO;
import com.goople.shopping.ProductDetailDTO;
import com.goople.util.MyUtil;

@Controller
public class ShoppingController {
	
	@Autowired
	private Upload upload;
	
	@Autowired
	ProductDAO dao;
	
	@Autowired
	MyUtil myUtil;
	
	@Autowired
	ProductDetailDAO pdao;
		
	@Autowired
	CartDAO cdao;
	
	@RequestMapping(value="/shopping/")
	public String mode() {
		return "/shopping/index";
	}
	
	//���Ͼ��ε� ( �Է��ҳ��� �ۼ�â) ����
	@RequestMapping(value="/shopping/fileUpload",method=RequestMethod.GET)
	public ModelAndView uploadForm() {
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/shopping/file_Submit");
		
		return mav;
		
	}
	
	//���Ͼ��ε� ( �̹���  �� ��ǰ���� ) ����
	@RequestMapping(value="/shopping/fileUpload", method=RequestMethod.POST)
	public ModelAndView fileUpload(MultipartHttpServletRequest mRequest) throws IllegalStateException, IOException {
		
		
		ModelAndView mav = new ModelAndView();
		
		
		if(upload.fileUpload(mRequest)) {
			mav.addObject("result", "���� ���ε� ����!!");
			
			ProductDTO dto = new ProductDTO();
			dto.setNum(dao.getMaxNum()+1);
			dto.setPamount(Integer.parseInt(mRequest.getParameter("pamount")));//���߿� �������Է�â���� �ű⼭ �޾ƿ°ɷ�
			dto.setCompany(mRequest.getParameter("company"));
			dto.setPname(mRequest.getParameter("pname"));
			dto.setPrice(Integer.parseInt(mRequest.getParameter("price")));
			dto.setSubject(mRequest.getParameter("subject"));
			dto.setContent(mRequest.getParameter("content"));
			dto.setPstate(mRequest.getParameter("pstate"));
			dto.setModel(mRequest.getParameter("model"));
			dto.setSpec(mRequest.getParameter("spec"));
			dto.setPsize(mRequest.getParameter("psize"));
			dto.setEtc(mRequest.getParameter("etc"));
			ProductDetailDTO pdto = new ProductDetailDTO();
			pdto.setDnum(dto.getNum());
			pdto.setDcompany(dto.getCompany());
			pdto.setDname(dto.getPname());
			pdto.setDsubject(dto.getSubject());
			pdto.setDcontent(dto.getContent());
			pdto.setDsellcount(Integer.parseInt("0"));
			pdto.setDamount(Integer.parseInt("30"));
			pdto.setDmodel(dto.getModel());
			pdto.setDprice(dto.getPrice());
			pdto.setDstate(dto.getPstate());
			pdto.setDspec(dto.getSpec());
			pdto.setDsize(dto.getPsize());
			pdto.setDetc(dto.getEtc());
			//���⼭���� ���ϳ��ӱ��ϱ����Ѱ�
			Iterator<String> iterator =	mRequest.getFileNames();
			String uploadPath = "C:/Users/itwill/git/repository/Goople/src/main/webapp/resources/shopping/img/";
			while(iterator.hasNext()) {
				String uploadFileName = iterator.next();
				MultipartFile mFile =	mRequest.getFile(uploadFileName);
				String originFileName = mFile.getOriginalFilename();
				String saveFileName = originFileName;
				
				if(saveFileName != null && !saveFileName.equals("")) {
					if(new File(uploadPath + saveFileName).exists()) {
						saveFileName = saveFileName + "_" + System.currentTimeMillis();
					}
						mFile.transferTo(new File(uploadPath+saveFileName));
			}
			
			dto.setImg(mFile.getOriginalFilename());
			pdto.setDimg(dto.getImg());
			}
			dao.insertData(dto);
			pdao.insertData(pdto);
		}else {
			mav.addObject("result","���Ͼ��ε� ����!!");
		}
		
		mav.setViewName("/shopping/uploadResult");
		
		
		return mav;
		
	}

	//�̹����Խ��� ����
	@RequestMapping(value="/shopping/fileImage.action", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView fileImage(HttpServletRequest req,HttpServletResponse resp ) throws Exception {
					
		String cp = req.getContextPath();
		String selected = ""; 
		selected = req.getParameter("selected");
		ModelAndView mav = new ModelAndView();
		String pageNum = req.getParameter("pageNum");
		int currentPage = 1;
		int currentPage1 = 1;
		
		if (pageNum != null)
			currentPage = Integer.parseInt(pageNum);
		
		if (pageNum != null)
			currentPage1 = Integer.parseInt(pageNum);
		
		String searchKey = req.getParameter("searchKey");
		String searchValue = req.getParameter("searchValue");
		
		if (searchKey == null) {
			
			searchKey = "pname";
			searchValue = "";
			
		} else {
			
			if (req.getMethod().equalsIgnoreCase("GET"))
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			
			
		}
		
		//��ü�����Ͱ���(����)
		int dataCount = dao.getAppleDataCount(searchKey, searchValue);
		
		//��ü�����Ͱ���(����)
		int dataCount1 = dao.getGoogleDataCount(searchKey, searchValue);
		
		
		//��ü��������
		int numPerPage = 6;
		//��ü��������(����)
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		//��ü��������(����)
		int totalPage1 = myUtil.getPageCount(numPerPage, dataCount1);
		
		if (currentPage > totalPage)
			currentPage = totalPage;
		
		if (currentPage1 > totalPage1)
			currentPage1 = totalPage1;
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;

		int start1 = (currentPage1-1)*numPerPage+1;
		int end1 = currentPage1*numPerPage;
		
		List<ProductDTO> lists = dao.getAppleList(start, end, searchKey, searchValue);
	
		if(selected.equals("����")) {
		lists = dao.getGoogleList(start1, end1, searchKey, searchValue);
			
		}
		
		//����¡ ó��
				String param = "";
				if (!searchValue.equals("")) {
					param = "searchKey=" + searchKey;
					param+= "&searchValue=" 
						+ URLEncoder.encode(searchValue, "UTF-8");
				}
		
				String listUrl = cp + "/fileImage.action";
				if (!param.equals("")) {
					listUrl = listUrl + "&" + param;				
				}
				
				String articleUrl = 
						cp + "/shopping/fileArticle.action?selected=����&pageNum=" + currentPage;
		
				
				
				
		if(selected.equals("����")){
			lists = dao.getAppleList(start, end, searchKey, searchValue);
			
			listUrl = cp + "/shopping/fileImage.action?selected=����";
			if (!param.equals("")) {
				listUrl = listUrl + "&" + param;				
			}
			articleUrl = 
					cp + "/shopping/fileArticle.action?selected=����&pageNum=" + currentPage;
					
				if (!param.equals(""))
					articleUrl = articleUrl + "&" + param;
				
				String pageIndexList =
						myUtil.pageIndexList(currentPage, totalPage, listUrl);
				mav.addObject("pageIndexList",pageIndexList);
				
		}
		if(selected.equals("����")){
			lists = dao.getGoogleList(start1, end1, searchKey, searchValue);
			listUrl = cp + "/shopping/fileImage.action?selected=����";
			if (!param.equals("")) {
				listUrl = listUrl + "&" + param;				
			}
			articleUrl = 
					cp + "/shopping/fileArticle.action?selected=����&pageNum=" + currentPage;
					
				if (!param.equals(""))
					articleUrl = articleUrl + "&" + param;
				
				String pageIndexList =
						myUtil.pageIndexList(currentPage1, totalPage1, listUrl);
				mav.addObject("pageIndexList",pageIndexList);
		}
		
		
		
		
		
		
/*		String pageIndexList =
				myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
*/	
		//�ۺ��� �ּ� ����	
		
		
		mav.addObject("lists",lists);
		mav.addObject("imagePath","../resources/shopping/img");
		mav.addObject("dataCount",dataCount);
		mav.addObject("articleUrl",articleUrl);
		mav.addObject("searchValue",searchValue);
		mav.addObject("selected",selected);
		mav.setViewName("/shopping/file_Image");
		
		return mav;
		
	}
	
	
	//Article ����
		@RequestMapping(value="/shopping/fileArticle", method= {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView fileArticle(HttpServletRequest req,HttpServletResponse resp) throws Exception {
						
			
			int num = Integer.parseInt(req.getParameter("num"));
			String cp = req.getContextPath();
			
			String pageNum = req.getParameter("pageNum");
			int currentPage = 1;
			
			String models = req.getParameter("models");
			
			if (pageNum != null)
				currentPage = Integer.parseInt(pageNum);
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if (searchKey == null) {
				
				searchKey = "dname";
				/*searchValue = "";*/
				
			} else {
				
				if (req.getMethod().equalsIgnoreCase("GET"))
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				
			}
			ProductDTO pdto = dao.getReadData(num);
			
			ProductDetailDTO dto = new ProductDetailDTO();

			if(pdto != null) {
			dto = pdao.getReadData(pdto.getModel());
			}
			
			
			// �� (�˻��������ٲ㼭 ����Ʈ������)
			if (models == null) {
				searchKey = "pname";
			}else {
				searchKey = "dname";
				dto = pdao.getReadData(models);
			}
			
			//��ü�����Ͱ���
			int dataCount = pdao.getDataCount(searchKey, searchValue);
			
			//��ü��������
			int numPerPage = 6;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if (currentPage > totalPage)
				currentPage = totalPage;
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			
			// �˻��Ѱ� �������� GoopleProductDTO quickdto = pdao.
			
/*			int quickNum = pdao.getModelDataCount("dname", dto.getDname());
*/			List<ProductDetailDTO> lists = pdao.getList(start, end, searchKey, searchValue);
			 
			int lineSu = dto.getDcontent().split("\n").length;
			
			dto.setDcontent(dto.getDcontent().replaceAll("\n", "<br/>"));
			
			String param = "pageNum=" + pageNum;
			if(searchKey!=null){
				param += "&searchKey=" + searchKey;
				param += "&searchValue=" 
					+ URLEncoder.encode(searchValue, "UTF-8");
			}
			String articleUrl = 
					cp + "/shopping/fileArticle.action?pageNum=" + currentPage;
					
				if (!param.equals(""))
					articleUrl = articleUrl + "&" + param;
				
				
			
			
			ModelAndView mav = new ModelAndView();
			
			
			mav.addObject("dto", dto);
			mav.addObject("imagePath","../resources/shopping/img");
			mav.addObject("lineSu",lineSu);
			mav.addObject("pageNum",pageNum);
			/*mav.addObject("quickNum",quickNum);*/
			mav.addObject("articleUrl",articleUrl);
			mav.addObject("lists",lists);
			mav.addObject("models",models);
			//���޴� 
			mav.setViewName("/shopping/productArticle");
			return mav;
			
		}
		
		
		@RequestMapping(value="/fileModelImage", method= {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView fileModelImage(HttpServletRequest req,HttpServletResponse resp) throws Exception {
						
		String cp = req.getContextPath();
		int num = Integer.parseInt(req.getParameter("num"));
		
		
		String pageNum = req.getParameter("pageNum");
		int currentPage = 1;
		
		if (pageNum != null)
			currentPage = Integer.parseInt(pageNum);
		
		String searchKey = req.getParameter("searchKey");
		String searchValue = req.getParameter("searchValue");
		
		if (searchKey == null) {
			
			searchKey = "dname";
			/*searchValue = "";*/
			
		} else {
			
			if (req.getMethod().equalsIgnoreCase("GET"))
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			
		}
		
		//��ü�����Ͱ���
		int dataCount = dao.getDataCount(searchKey, searchValue);
		
		//��ü��������
		int numPerPage = 6;
		int totalPage = myUtil.getPageCount(numPerPage, dataCount);
		
		if (currentPage > totalPage)
			currentPage = totalPage;
		
		int start = (currentPage-1)*numPerPage+1;
		int end = currentPage*numPerPage;
		
		List<ProductDetailDTO> lists = pdao.getModelList(start, end, searchKey, searchValue);
		
		//����¡ ó��
		String param = "";
		if (!searchValue.equals("")) {
			param = "searchKey=" + searchKey;
			param+= "&searchValue=" 
				+ URLEncoder.encode(searchValue, "UTF-8");
		}
		
		String listUrl = cp + "/shopping/fileImage.action";
		if (!param.equals("")) {
			listUrl = listUrl + "?" + param;				
		}
		
		String pageIndexList =
			myUtil.pageIndexList(currentPage, totalPage, listUrl);
		
		//�ۺ��� �ּ� ����
		String articleUrl = 
			cp + "/shopping/fileArticle.action?pageNum=" + currentPage;
			
		if (!param.equals(""))
			articleUrl = articleUrl + "&" + param;
		
		
		ModelAndView mav = new ModelAndView();
		
		
		mav.addObject("lists",lists);
		mav.addObject("imagePath","../resources/shopping/img");
		mav.addObject("pageIndexList",pageIndexList);
		mav.addObject("dataCount",dataCount);
		mav.addObject("articleUrl",articleUrl);
		mav.setViewName("/shopping/file_ModelImage");
		
		return mav;
		
			
			
		}
		@RequestMapping(value="/shopping/modelUpload",method=RequestMethod.GET)
		public ModelAndView modelUpload(HttpServletRequest req) throws IllegalStateException, IOException {
			
			ModelAndView mav = new ModelAndView();
			
			ProductDetailDTO pdto = new ProductDetailDTO();
			
			int num = Integer.parseInt(req.getParameter("num"));
			
			String models = req.getParameter("models");
			
			ProductDTO dto=	dao.getReadData(num);
			
			if(dto == null) {
				pdto = pdao.getReadData(models);
				
			}
			if(dto != null) {
			pdto = pdao.getReadData(dto.getModel());
			}
			
			mav.addObject("dname",pdto.getDname());
			mav.addObject("dcompany",pdto.getDcompany());
			
			mav.setViewName("/shopping/model_Submit");
			
			return mav;
		}
		
		
		@RequestMapping(value="/shopping/modelUpload_ok", method=RequestMethod.POST)
		public ModelAndView modelUpload_ok(MultipartHttpServletRequest mRequest) throws IllegalStateException, IOException {
			
			
			ModelAndView mav = new ModelAndView();
			
			
			if(upload.fileUpload(mRequest)) {
				mav.addObject("result", "���� ���ε� ����!!");
				
				ProductDetailDTO pdto = new ProductDetailDTO();
				
				
				
				pdto.setDnum(pdao.getMaxNum()+1);
				pdto.setDcompany(mRequest.getParameter("dcompany"));
				pdto.setDname(mRequest.getParameter("dname"));
				pdto.setDsubject(mRequest.getParameter("dsubject"));
				pdto.setDcontent(mRequest.getParameter("dcontent"));
				pdto.setDsellcount(Integer.parseInt(mRequest.getParameter("dsellcount")));
				pdto.setDamount(Integer.parseInt(mRequest.getParameter("damount")));
				pdto.setDmodel(mRequest.getParameter("dmodel"));
				pdto.setDprice(Integer.parseInt(mRequest.getParameter("dprice")));
				pdto.setDstate(mRequest.getParameter("dstate"));
				pdto.setDspec(mRequest.getParameter("dspec"));
				pdto.setDsize(mRequest.getParameter("dsize"));
				pdto.setDetc(mRequest.getParameter("detc"));
				pdto.setDstate(mRequest.getParameter("dstate"));
				//���⼭���� ���ϳ��ӱ��ϱ����Ѱ�
				Iterator<String> iterator =	mRequest.getFileNames();
				String uploadPath = "C:/Users/itwill/git/repository/Goople/src/main/webapp/resources/shopping/img/";
				while(iterator.hasNext()) {
					String uploadFileName = iterator.next();
					MultipartFile mFile =	mRequest.getFile(uploadFileName);
					String originFileName = mFile.getOriginalFilename();
					String saveFileName = originFileName;
					
					if(saveFileName != null && !saveFileName.equals("")) {
						if(new File(uploadPath + saveFileName).exists()) {
							saveFileName = saveFileName + "_" + System.currentTimeMillis();
						}
							mFile.transferTo(new File(uploadPath+saveFileName));
				}
				
				pdto.setDimg(mFile.getOriginalFilename());
				}
				pdao.insertData(pdto);
			}else {
				mav.addObject("result","���Ͼ��ε� ����!!");
			}
			
			mav.setViewName("/shopping/uploadResult");
			
			
			return mav;
		}

		@RequestMapping(value="/shopping/deleteModel",method=RequestMethod.GET)
		public ModelAndView deleteModel(HttpServletRequest req) throws IllegalStateException, IOException {
			
			
			ModelAndView mav = new ModelAndView();
			
			ProductDetailDTO pdto = new ProductDetailDTO();
			
			int num = Integer.parseInt(req.getParameter("num"));
			
			String models = req.getParameter("models");
			String selected = req.getParameter("selected");
			ProductDTO dto=	dao.getReadData(num);
			
			if(dto == null) {
				pdto = pdao.getReadData(models);
				
			}
			if(dto != null) {
			pdto = pdao.getReadData(dto.getModel());
			}
			dao.deleteData(models);
			pdao.deleteData(models);
			System.out.println(selected);
			//String���� if�� ���⼭ ���������� ���ڿ��� ���� / ���п��� mav�� �ѱ������
			//View�ܿ��� prompt�� �ش繮�ڸ��޾Ƽ� ���� / ���и� �߰�����. 
			
			mav.addObject("selected",selected);
			mav.setViewName("redirect:/shopping/fileImage.action");
			
			return mav;
		}
		
		@RequestMapping(value="/shopping/ajax",method=RequestMethod.GET)
		@ResponseBody
		public String ajax(String data,String models,int addCart,CartDTO dto,HttpSession session) {

			
			
			//data = size�� �޾ƿ� ������ , models�� ã�Ƽ� size�����ϴ� ����.
			/*	pdao.selectSize(models, data);*/
			System.out.println(data);
			System.out.println(models);
			System.out.println(addCart);
			
				return "Ajax Success";
			
			
			
		}
		
		@RequestMapping(value="/shopping/ajax",method=RequestMethod.POST)
		@ResponseBody
		public ModelAndView ajax2(String data,String models,int addCart,CartDTO dto,HttpSession session) {
			
			
			ModelAndView mav = new ModelAndView();
			
			//data = size�� �޾ƿ� ������ , models�� ã�Ƽ� size�����ϴ� ����.
			/*	pdao.selectSize(models, data);*/
			/*System.out.println(data);
			System.out.println(models);
			System.out.println(addCart);*/
			
			if(addCart == 0) {
				
				System.out.println("x");
				mav.setViewName("");
				return mav;
			}else if(addCart == 1) {
				
				
				//īƮ DB�� �ִ� �ڵ� ( �޾ƿ� models  , ������� data�� �޾ƿ� , dao. ~~�ؼ� �ֱ�)
				System.out.println("īƮ�� �־���.");
				
				
				SessionDTO info = (SessionDTO) session.getAttribute("info");
				String userId = info.getId();
				dto.setUserId(userId);
				
				CartDTO cdto = cdao.getIdModel(dto);
				
				if(cdto==null) {
					
					int maxNum = cdao.getMaxCartNo();
					dto.setAmount(1);
					dto.setCartNo(maxNum+1);
					
					cdao.insertCart(dto);
					
					mav.addObject("data",data);
					mav.addObject("models",models);
					mav.addObject("addCart",addCart);
					mav.setViewName("redirect:/cart/cartInsert.action");
				}
				
				return mav;
			}
			
			
			
			return mav;
		}
		
			
}
