package com.smhrd.demo.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "tb_company")
public class CompanyModel {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer companyIdx; // 회사 식별자
	@Column(nullable = false)
	@JsonProperty("companyName") // JSON 키와 매핑
	private String companyName; // 회사 명
	@Column(nullable = false)
	private String companyAddr; // 회사 주소
	@Column(nullable = false)
	private String companyTel; // 회사 연락처

	
	public Integer getCompanyIdx() {
		return companyIdx;
	}
	public void setCompanyIdx(Integer companyIdx) {
		this.companyIdx = companyIdx;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyAddr() {
		return companyAddr;
	}
	public void setCompanyAddr(String companyAddr) {
		this.companyAddr = companyAddr;
	}
	public String getCompanyTel() {
		return companyTel;
	}
	public void setCompanyTel(String companyTel) {
		this.companyTel = companyTel;
	}
}
