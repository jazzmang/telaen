
// this init the editor
tinyMCE.init({
	mode : "textareas",
	theme : "modern",
	language : "en",
    plugins : 'table,advlist,spellchecker,insertdatetime,preview,searchreplace,print,contextmenu,paste,directionality,fullscreen,emoticons',
	theme_advanced_buttons1 : "fontselect,fontsizeselect,bold,italic,underline,separator,undo,redo,separator,spellchecker,separator,charmap,outdent,indent,blockquote,strikethrough,separator,justifyleft,justifycenter,justifyright,justifyfull,bullist,numlist,separator,forecolor,backcolor,separator,emotions,hr,advhr,code,fullscreen",
	theme_advanced_buttons2 : "",
	theme_advanced_buttons3 : "",
	theme_advanced_toolbar_location : "top",
	theme_advanced_toolbar_align : "left",
	theme_advanced_disable : "styleselect",
	theme_advanced_statusbar_location : "bottom",
	theme_advanced_path : false,
	cleanup : true,
	fix_content_duplication : true,
	doctype: "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">",
	content_css : "inc/editors/tinymce/mycontent.css",
 	remove_linebreaks : false,
	force_p_newlines : false,
	force_br_newlines: true,
	plugin_insertdate_dateFormat : "%Y-%m-%d",
	plugin_insertdate_timeFormat : "%H:%M:%S",
	invalid_elements : "script,applet,iframe",
	extended_valid_elements : "hr[class|width|size|noshade],font[face|size|color|style],span[class|align|style]",
	external_link_list_url : "example_link_list.js",
	external_image_list_url : "example_image_list.js",
	flash_external_list_url : "example_flash_list.js",
	file_browser_callback : "fileBrowserCallBack",
	theme_advanced_resize_horizontal : true,
	theme_advanced_resizing : true,
	apply_source_formatting : true
});
