﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SpaceShoes.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class E_TicaretEntities : DbContext
    {
        public E_TicaretEntities()
            : base("name=E_TicaretEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adresler> Adresler { get; set; }
        public virtual DbSet<Favoriler> Favoriler { get; set; }
        public virtual DbSet<Kampanyalar> Kampanyalar { get; set; }
        public virtual DbSet<Kategoriler> Kategoriler { get; set; }
        public virtual DbSet<Kisiler> Kisiler { get; set; }
        public virtual DbSet<Markalar> Markalar { get; set; }
        public virtual DbSet<OzellikDeger> OzellikDeger { get; set; }
        public virtual DbSet<OzellikTip> OzellikTip { get; set; }
        public virtual DbSet<Resimler> Resimler { get; set; }
        public virtual DbSet<Roller> Roller { get; set; }
        public virtual DbSet<Sepet> Sepet { get; set; }
        public virtual DbSet<Siparisler> Siparisler { get; set; }
        public virtual DbSet<Urunler> Urunler { get; set; }
        public virtual DbSet<Iletisim> Iletisim { get; set; }
        public virtual DbSet<UrunOzellik> UrunOzellik { get; set; }
    
        public virtual int KullaniciBilgileriniGuncelle(Nullable<int> kisiId, string kisiAdi, string kisiSoyadi, string kullaniciAdi, string email, string sifre)
        {
            var kisiIdParameter = kisiId.HasValue ?
                new ObjectParameter("KisiId", kisiId) :
                new ObjectParameter("KisiId", typeof(int));
    
            var kisiAdiParameter = kisiAdi != null ?
                new ObjectParameter("KisiAdi", kisiAdi) :
                new ObjectParameter("KisiAdi", typeof(string));
    
            var kisiSoyadiParameter = kisiSoyadi != null ?
                new ObjectParameter("KisiSoyadi", kisiSoyadi) :
                new ObjectParameter("KisiSoyadi", typeof(string));
    
            var kullaniciAdiParameter = kullaniciAdi != null ?
                new ObjectParameter("KullaniciAdi", kullaniciAdi) :
                new ObjectParameter("KullaniciAdi", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var sifreParameter = sifre != null ?
                new ObjectParameter("Sifre", sifre) :
                new ObjectParameter("Sifre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("KullaniciBilgileriniGuncelle", kisiIdParameter, kisiAdiParameter, kisiSoyadiParameter, kullaniciAdiParameter, emailParameter, sifreParameter);
        }
    
        public virtual int KullaniciEkle(string kisiAdi, string kisiSoyadi, string kullaniciAdi, string email, string sifre)
        {
            var kisiAdiParameter = kisiAdi != null ?
                new ObjectParameter("KisiAdi", kisiAdi) :
                new ObjectParameter("KisiAdi", typeof(string));
    
            var kisiSoyadiParameter = kisiSoyadi != null ?
                new ObjectParameter("KisiSoyadi", kisiSoyadi) :
                new ObjectParameter("KisiSoyadi", typeof(string));
    
            var kullaniciAdiParameter = kullaniciAdi != null ?
                new ObjectParameter("KullaniciAdi", kullaniciAdi) :
                new ObjectParameter("KullaniciAdi", typeof(string));
    
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var sifreParameter = sifre != null ?
                new ObjectParameter("Sifre", sifre) :
                new ObjectParameter("Sifre", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("KullaniciEkle", kisiAdiParameter, kisiSoyadiParameter, kullaniciAdiParameter, emailParameter, sifreParameter);
        }
    
        public virtual ObjectResult<Login_Result> Login(string email, string password)
        {
            var emailParameter = email != null ?
                new ObjectParameter("Email", email) :
                new ObjectParameter("Email", typeof(string));
    
            var passwordParameter = password != null ?
                new ObjectParameter("Password", password) :
                new ObjectParameter("Password", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<Login_Result>("Login", emailParameter, passwordParameter);
        }
    
        public virtual int MarkaEkle(string markaAdi)
        {
            var markaAdiParameter = markaAdi != null ?
                new ObjectParameter("MarkaAdi", markaAdi) :
                new ObjectParameter("MarkaAdi", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("MarkaEkle", markaAdiParameter);
        }
    
        public virtual int MarkaGuncelle(Nullable<int> markaId, string markaAdi)
        {
            var markaIdParameter = markaId.HasValue ?
                new ObjectParameter("MarkaId", markaId) :
                new ObjectParameter("MarkaId", typeof(int));
    
            var markaAdiParameter = markaAdi != null ?
                new ObjectParameter("MarkaAdi", markaAdi) :
                new ObjectParameter("MarkaAdi", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("MarkaGuncelle", markaIdParameter, markaAdiParameter);
        }
    
        public virtual int UrunEkle(Nullable<int> kategoriId, Nullable<int> markaId, Nullable<int> resimId, string urunAdi, Nullable<decimal> satisFiyat, Nullable<int> stok, string urunAciklama)
        {
            var kategoriIdParameter = kategoriId.HasValue ?
                new ObjectParameter("KategoriId", kategoriId) :
                new ObjectParameter("KategoriId", typeof(int));
    
            var markaIdParameter = markaId.HasValue ?
                new ObjectParameter("MarkaId", markaId) :
                new ObjectParameter("MarkaId", typeof(int));
    
            var resimIdParameter = resimId.HasValue ?
                new ObjectParameter("ResimId", resimId) :
                new ObjectParameter("ResimId", typeof(int));
    
            var urunAdiParameter = urunAdi != null ?
                new ObjectParameter("UrunAdi", urunAdi) :
                new ObjectParameter("UrunAdi", typeof(string));
    
            var satisFiyatParameter = satisFiyat.HasValue ?
                new ObjectParameter("SatisFiyat", satisFiyat) :
                new ObjectParameter("SatisFiyat", typeof(decimal));
    
            var stokParameter = stok.HasValue ?
                new ObjectParameter("Stok", stok) :
                new ObjectParameter("Stok", typeof(int));
    
            var urunAciklamaParameter = urunAciklama != null ?
                new ObjectParameter("UrunAciklama", urunAciklama) :
                new ObjectParameter("UrunAciklama", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UrunEkle", kategoriIdParameter, markaIdParameter, resimIdParameter, urunAdiParameter, satisFiyatParameter, stokParameter, urunAciklamaParameter);
        }
    
        public virtual int UrunGuncelle(Nullable<int> urunId, Nullable<int> kategoriId, Nullable<int> markaId, Nullable<int> resimId, string urunAdi, Nullable<decimal> satisFiyat, Nullable<int> stok, string urunAciklama)
        {
            var urunIdParameter = urunId.HasValue ?
                new ObjectParameter("UrunId", urunId) :
                new ObjectParameter("UrunId", typeof(int));
    
            var kategoriIdParameter = kategoriId.HasValue ?
                new ObjectParameter("KategoriId", kategoriId) :
                new ObjectParameter("KategoriId", typeof(int));
    
            var markaIdParameter = markaId.HasValue ?
                new ObjectParameter("MarkaId", markaId) :
                new ObjectParameter("MarkaId", typeof(int));
    
            var resimIdParameter = resimId.HasValue ?
                new ObjectParameter("ResimId", resimId) :
                new ObjectParameter("ResimId", typeof(int));
    
            var urunAdiParameter = urunAdi != null ?
                new ObjectParameter("UrunAdi", urunAdi) :
                new ObjectParameter("UrunAdi", typeof(string));
    
            var satisFiyatParameter = satisFiyat.HasValue ?
                new ObjectParameter("SatisFiyat", satisFiyat) :
                new ObjectParameter("SatisFiyat", typeof(decimal));
    
            var stokParameter = stok.HasValue ?
                new ObjectParameter("Stok", stok) :
                new ObjectParameter("Stok", typeof(int));
    
            var urunAciklamaParameter = urunAciklama != null ?
                new ObjectParameter("UrunAciklama", urunAciklama) :
                new ObjectParameter("UrunAciklama", typeof(string));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction("UrunGuncelle", urunIdParameter, kategoriIdParameter, markaIdParameter, resimIdParameter, urunAdiParameter, satisFiyatParameter, stokParameter, urunAciklamaParameter);
        }
    }
}