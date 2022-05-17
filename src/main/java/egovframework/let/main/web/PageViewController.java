package egovframework.let.main.web;


import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.service.EgovFileMngService;
import egovframework.com.cmm.service.EgovFileMngUtil;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.cop.bbs.service.*;
import org.egovframe.rte.fdl.property.EgovPropertyService;
import org.egovframe.rte.ptl.mvc.tags.ui.pagination.PaginationInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springmodules.validation.commons.DefaultBeanValidator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class PageViewController {

    @Resource(name = "EgovBBSManageService")
    private EgovBBSManageService bbsMngService;

    @Resource(name = "EgovBBSAttributeManageService")
    private EgovBBSAttributeManageService bbsAttrbService;

    @Resource(name = "EgovFileMngService")
    private EgovFileMngService fileMngService;

    @Resource(name = "EgovFileMngUtil")
    private EgovFileMngUtil fileUtil;

    @Resource(name = "propertiesService")
    protected EgovPropertyService propertyService;

    @Resource(name="egovMessageSource")
    EgovMessageSource egovMessageSource;

    @Autowired
    private DefaultBeanValidator beanValidator;

    @RequestMapping("/cop/bbs/smartFactory.do")
    public String getSmartFactory(HttpServletRequest request) throws Exception
    {
        return "others/SmartFactory";
    }

    @RequestMapping("/cop/bbs/government.do")
    public String getGovernment(HttpServletRequest request) throws Exception
    {
        return "others/GovernmentBiz";
    }


    @RequestMapping("/cop/bbs/mes.do")
    public String getMES(HttpServletRequest request) throws Exception
    {
        return "others/MES";
    }

    @RequestMapping("/cop/bbs/smartFarm.do")
    public String getSmartFarm(HttpServletRequest request) throws Exception
    {
        return "others/SmartFarm";
    }

    @RequestMapping("/cop/bbs/googleMaps.do")
    public String getMap(HttpServletRequest request) throws Exception
    {
        return "others/Map";
    }

    @RequestMapping("/cop/bbs/organization.do")
    public String getOrganization(HttpServletRequest request) throws Exception
    {
        return "others/OrganizationChart";
    }

    @RequestMapping("/cop/bbs/system.do")
    public String getSystem(HttpServletRequest request) throws Exception
    {
        return "others/SystemGovBiz";
    }

    @RequestMapping("/cop/bbs/introduce.do")
    public String getIntroduce(HttpServletRequest request) throws Exception
    {
        return "others/Introduce";
    }


}
