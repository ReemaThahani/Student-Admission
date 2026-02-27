@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'Zzccit_Dt_9292'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCC_CIT_DT_9292
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCR_CIT_DT_9292
  association [1..1] to ZZCR_CIT_DT_9292 as _BaseEntity on $projection.STUDENTID = _BaseEntity.STUDENTID
{
  key StudentID,
  FirstName,
  LastName,
  DateOfBirth,
  Gender,
  Email,
  PhoneNumber,
  AdmissionDate,
  CourseCode,
  Department,
  Semester,
  @Consumption: {
    Valuehelpdefinition: [ {
      Entity.Element: 'Currency', 
      Entity.Name: 'I_CurrencyStdVH', 
      Useforvalidation: true
    } ]
  }
  Currency,
  CreatedBy,
  CreatedOn,
  LastChangedBy,
  LastChangedOn,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
