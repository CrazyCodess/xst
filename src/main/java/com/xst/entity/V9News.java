package com.xst.entity;

import javax.persistence.*;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by sl on 16-4-30.
 */
@Entity
@Table(name = "v9_news", schema = "db_xst_new")
public class V9News implements java.io.Serializable {

	private Integer id;
	private short catid;
	private short typeid;
	private String title;
	private String style;
	private String thumb;
	private String keywords;
	private String description;
	private boolean posids;
	private String url;
	private byte listorder;
	private byte status;
	private boolean sysadd;
	private boolean islink;
	private String username;
	private String inputtime;
	private String updatetime;
	private String arr_group_id;
	private String type;
	private String content;

	public V9News() {
	}

	public V9News(String title, String description, String content, String arr_group_id, String type, String username) {
		this.title = title;
		this.description = description;
		this.content = content;
		this.arr_group_id = arr_group_id;
		this.type = type;
		this.username = username;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "catid", nullable = true)
	public short getCatid() {
		return this.catid;
	}

	public void setCatid(short catid) {
		this.catid = catid;
	}

	@Column(name = "typeid", nullable = true)
	public short getTypeid() {
		return this.typeid;
	}

	public void setTypeid(short typeid) {
		this.typeid = typeid;
	}

	@Column(name = "title", nullable = true, length = 80)
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "style", nullable = true, length = 24)
	public String getStyle() {
		return this.style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	@Column(name = "thumb", nullable = true, length = 100)
	public String getThumb() {
		return this.thumb;
	}

	public void setThumb(String thumb) {
		this.thumb = thumb;
	}

	@Column(name = "keywords", nullable = true, length = 40)
	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	@Column(name = "description", nullable = true, length = 16777215)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "posids", nullable = true)
	public boolean isPosids() {
		return this.posids;
	}

	public void setPosids(boolean posids) {
		this.posids = posids;
	}

	@Column(name = "url", nullable = true, length = 100)
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	@Column(name = "listorder", nullable = true)
	public byte getListorder() {
		return this.listorder;
	}

	public void setListorder(byte listorder) {
		this.listorder = listorder;
	}

	@Column(name = "status", nullable = true)
	public byte getStatus() {
		return this.status;
	}

	public void setStatus(byte status) {
		this.status = status;
	}

	@Column(name = "sysadd", nullable = true)
	public boolean isSysadd() {
		return this.sysadd;
	}

	public void setSysadd(boolean sysadd) {
		this.sysadd = sysadd;
	}

	@Column(name = "islink", nullable = true)
	public boolean isIslink() {
		return this.islink;
	}

	public void setIslink(boolean islink) {
		this.islink = islink;
	}

	@Column(name = "username", nullable = true, length = 20)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "inputtime", nullable = true)
	public String getInputtime() {
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

//        String sd = sdf.format(new Date(Long.valueOf(this.inputtime)));
//		return sd;
		return this.inputtime;
	}

	public void setInputtime(String inputtime) {
		this.inputtime = inputtime;
	}

	@Column(name = "updatetime", nullable = true)
	public String getUpdatetime() {
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");

//        String sd = sdf.format(new Date(Long.valueOf(this.updatetime)));
//        return sd;
		return this.updatetime;
	}

	public void setUpdatetime(String updatetime) {
		this.updatetime = updatetime;
	}

	@Column(name = "arr_group_id", nullable = true)
	public String getArr_group_id() {
		return this.arr_group_id;
	}

	public void setArr_group_id(String arr_group_id) {
		this.arr_group_id = arr_group_id;
	}

/*	@OneToOne(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
	@JoinColumn(name = "id", nullable = true)
	public V9NewsData getV9NewsData(){
		return v9NewsData;
	}
	public void setV9NewsData(V9NewsData v9NewsData){
		this.v9NewsData=v9NewsData;
	}*/


	@Column(name = "type", nullable = true, length = 10)
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Column(name = "content", nullable = true, length = 16777215)
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	@Override
	public String toString() {
		return "V9News{" +
				"id=" + id +
				", catid=" + catid +
				", typeid=" + typeid +
				", title='" + title + '\'' +
				", style='" + style + '\'' +
				", thumb='" + thumb + '\'' +
				", keywords='" + keywords + '\'' +
				", description='" + description + '\'' +
				", posids=" + posids +
				", url='" + url + '\'' +
				", listorder=" + listorder +
				", status=" + status +
				", sysadd=" + sysadd +
				", islink=" + islink +
				", username='" + username + '\'' +
				", inputtime=" + inputtime +
				", updatetime=" + updatetime +
				", arr_group_id='" + arr_group_id + '\'' +
				", v9NewsData="  +'\''+
				",type= " + type+
				'}';
	}
}
