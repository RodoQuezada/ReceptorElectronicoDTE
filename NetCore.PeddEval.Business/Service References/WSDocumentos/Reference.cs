﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace NetCore.PeddEval.Business.WSDocumentos {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="FileAttachment", Namespace="http://schemas.datacontract.org/2004/07/Negocio")]
    [System.SerializableAttribute()]
    public partial class FileAttachment : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string FileContentBase64Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool conBase64Field;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool esPrivadoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int intCategoriaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int intSubCategoriaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string strIdArchivoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string strNombreField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string strUrlArchivoField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string FileContentBase64 {
            get {
                return this.FileContentBase64Field;
            }
            set {
                if ((object.ReferenceEquals(this.FileContentBase64Field, value) != true)) {
                    this.FileContentBase64Field = value;
                    this.RaisePropertyChanged("FileContentBase64");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool conBase64 {
            get {
                return this.conBase64Field;
            }
            set {
                if ((this.conBase64Field.Equals(value) != true)) {
                    this.conBase64Field = value;
                    this.RaisePropertyChanged("conBase64");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool esPrivado {
            get {
                return this.esPrivadoField;
            }
            set {
                if ((this.esPrivadoField.Equals(value) != true)) {
                    this.esPrivadoField = value;
                    this.RaisePropertyChanged("esPrivado");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int intCategoria {
            get {
                return this.intCategoriaField;
            }
            set {
                if ((this.intCategoriaField.Equals(value) != true)) {
                    this.intCategoriaField = value;
                    this.RaisePropertyChanged("intCategoria");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int intSubCategoria {
            get {
                return this.intSubCategoriaField;
            }
            set {
                if ((this.intSubCategoriaField.Equals(value) != true)) {
                    this.intSubCategoriaField = value;
                    this.RaisePropertyChanged("intSubCategoria");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string strIdArchivo {
            get {
                return this.strIdArchivoField;
            }
            set {
                if ((object.ReferenceEquals(this.strIdArchivoField, value) != true)) {
                    this.strIdArchivoField = value;
                    this.RaisePropertyChanged("strIdArchivo");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string strNombre {
            get {
                return this.strNombreField;
            }
            set {
                if ((object.ReferenceEquals(this.strNombreField, value) != true)) {
                    this.strNombreField = value;
                    this.RaisePropertyChanged("strNombre");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string strUrlArchivo {
            get {
                return this.strUrlArchivoField;
            }
            set {
                if ((object.ReferenceEquals(this.strUrlArchivoField, value) != true)) {
                    this.strUrlArchivoField = value;
                    this.RaisePropertyChanged("strUrlArchivo");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="TbDocCategoria", Namespace="http://schemas.datacontract.org/2004/07/Negocio")]
    [System.SerializableAttribute()]
    [System.Runtime.Serialization.KnownTypeAttribute(typeof(NetCore.PeddEval.Business.WSDocumentos.TbDocSubCategoria))]
    public partial class TbDocCategoria : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private NetCore.PeddEval.Business.WSDocumentos.TbDocSubCategoria[] TbDocSubCategoriaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int intIdCategoriaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string vhrCarpetaDestinoField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string vhrDescripcionField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public NetCore.PeddEval.Business.WSDocumentos.TbDocSubCategoria[] TbDocSubCategoria {
            get {
                return this.TbDocSubCategoriaField;
            }
            set {
                if ((object.ReferenceEquals(this.TbDocSubCategoriaField, value) != true)) {
                    this.TbDocSubCategoriaField = value;
                    this.RaisePropertyChanged("TbDocSubCategoria");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int intIdCategoria {
            get {
                return this.intIdCategoriaField;
            }
            set {
                if ((this.intIdCategoriaField.Equals(value) != true)) {
                    this.intIdCategoriaField = value;
                    this.RaisePropertyChanged("intIdCategoria");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string vhrCarpetaDestino {
            get {
                return this.vhrCarpetaDestinoField;
            }
            set {
                if ((object.ReferenceEquals(this.vhrCarpetaDestinoField, value) != true)) {
                    this.vhrCarpetaDestinoField = value;
                    this.RaisePropertyChanged("vhrCarpetaDestino");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string vhrDescripcion {
            get {
                return this.vhrDescripcionField;
            }
            set {
                if ((object.ReferenceEquals(this.vhrDescripcionField, value) != true)) {
                    this.vhrDescripcionField = value;
                    this.RaisePropertyChanged("vhrDescripcion");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="TbDocSubCategoria", Namespace="http://schemas.datacontract.org/2004/07/Negocio")]
    [System.SerializableAttribute()]
    public partial class TbDocSubCategoria : NetCore.PeddEval.Business.WSDocumentos.TbDocCategoria {
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private int intIdSubCategoriaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool isExistsField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string vhrCodigoBusquedaField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string vhrDirVirtualDescField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string vhrSubCarpetaDestinoField;
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int intIdSubCategoria {
            get {
                return this.intIdSubCategoriaField;
            }
            set {
                if ((this.intIdSubCategoriaField.Equals(value) != true)) {
                    this.intIdSubCategoriaField = value;
                    this.RaisePropertyChanged("intIdSubCategoria");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool isExists {
            get {
                return this.isExistsField;
            }
            set {
                if ((this.isExistsField.Equals(value) != true)) {
                    this.isExistsField = value;
                    this.RaisePropertyChanged("isExists");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string vhrCodigoBusqueda {
            get {
                return this.vhrCodigoBusquedaField;
            }
            set {
                if ((object.ReferenceEquals(this.vhrCodigoBusquedaField, value) != true)) {
                    this.vhrCodigoBusquedaField = value;
                    this.RaisePropertyChanged("vhrCodigoBusqueda");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string vhrDirVirtualDesc {
            get {
                return this.vhrDirVirtualDescField;
            }
            set {
                if ((object.ReferenceEquals(this.vhrDirVirtualDescField, value) != true)) {
                    this.vhrDirVirtualDescField = value;
                    this.RaisePropertyChanged("vhrDirVirtualDesc");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string vhrSubCarpetaDestino {
            get {
                return this.vhrSubCarpetaDestinoField;
            }
            set {
                if ((object.ReferenceEquals(this.vhrSubCarpetaDestinoField, value) != true)) {
                    this.vhrSubCarpetaDestinoField = value;
                    this.RaisePropertyChanged("vhrSubCarpetaDestino");
                }
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="WSDocumentos.IAdmArchivos")]
    public interface IAdmArchivos {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/SubirArchivo", ReplyAction="http://tempuri.org/IAdmArchivos/SubirArchivoResponse")]
        System.Xml.Linq.XElement SubirArchivo(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/SubirArchivo", ReplyAction="http://tempuri.org/IAdmArchivos/SubirArchivoResponse")]
        System.Threading.Tasks.Task<System.Xml.Linq.XElement> SubirArchivoAsync(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/BajarArchivo", ReplyAction="http://tempuri.org/IAdmArchivos/BajarArchivoResponse")]
        NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] BajarArchivo(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/BajarArchivo", ReplyAction="http://tempuri.org/IAdmArchivos/BajarArchivoResponse")]
        System.Threading.Tasks.Task<NetCore.PeddEval.Business.WSDocumentos.FileAttachment[]> BajarArchivoAsync(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/ListarCategorias", ReplyAction="http://tempuri.org/IAdmArchivos/ListarCategoriasResponse")]
        NetCore.PeddEval.Business.WSDocumentos.TbDocCategoria[] ListarCategorias();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdmArchivos/ListarCategorias", ReplyAction="http://tempuri.org/IAdmArchivos/ListarCategoriasResponse")]
        System.Threading.Tasks.Task<NetCore.PeddEval.Business.WSDocumentos.TbDocCategoria[]> ListarCategoriasAsync();
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAdmArchivosChannel : NetCore.PeddEval.Business.WSDocumentos.IAdmArchivos, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AdmArchivosClient : System.ServiceModel.ClientBase<NetCore.PeddEval.Business.WSDocumentos.IAdmArchivos>, NetCore.PeddEval.Business.WSDocumentos.IAdmArchivos {
        
        public AdmArchivosClient() {
        }
        
        public AdmArchivosClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AdmArchivosClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdmArchivosClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdmArchivosClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public System.Xml.Linq.XElement SubirArchivo(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment) {
            return base.Channel.SubirArchivo(fileAttachment);
        }
        
        public System.Threading.Tasks.Task<System.Xml.Linq.XElement> SubirArchivoAsync(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment) {
            return base.Channel.SubirArchivoAsync(fileAttachment);
        }
        
        public NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] BajarArchivo(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment) {
            return base.Channel.BajarArchivo(fileAttachment);
        }
        
        public System.Threading.Tasks.Task<NetCore.PeddEval.Business.WSDocumentos.FileAttachment[]> BajarArchivoAsync(NetCore.PeddEval.Business.WSDocumentos.FileAttachment[] fileAttachment) {
            return base.Channel.BajarArchivoAsync(fileAttachment);
        }
        
        public NetCore.PeddEval.Business.WSDocumentos.TbDocCategoria[] ListarCategorias() {
            return base.Channel.ListarCategorias();
        }
        
        public System.Threading.Tasks.Task<NetCore.PeddEval.Business.WSDocumentos.TbDocCategoria[]> ListarCategoriasAsync() {
            return base.Channel.ListarCategoriasAsync();
        }
    }
}
