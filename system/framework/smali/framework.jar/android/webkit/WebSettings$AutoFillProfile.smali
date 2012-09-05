.class public Landroid/webkit/WebSettings$AutoFillProfile;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoFillProfile"
.end annotation


# instance fields
.field private mAddressLine1:Ljava/lang/String;

.field private mAddressLine2:Ljava/lang/String;

.field private mCity:Ljava/lang/String;

.field private mCompanyName:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mFullName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mUniqueId:I

.field private mZipCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "uniqueId"
    .parameter "fullName"
    .parameter "email"
    .parameter "companyName"
    .parameter "addressLine1"
    .parameter "addressLine2"
    .parameter "city"
    .parameter "state"
    .parameter "zipCode"
    .parameter "country"
    .parameter "phoneNumber"

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput p1, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    .line 304
    iput-object p2, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    .line 305
    iput-object p3, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    .line 307
    iput-object p5, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    .line 308
    iput-object p6, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    .line 309
    iput-object p7, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    .line 310
    iput-object p8, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    .line 311
    iput-object p9, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    .line 312
    iput-object p10, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    .line 313
    iput-object p11, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    .line 314
    return-void
.end method


# virtual methods
.method public getAddressLine1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressLine2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 321
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mAddressLine2:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCompanyName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getUniqueId()I
    .registers 2

    .prologue
    .line 316
    iget v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mUniqueId:I

    return v0
.end method

.method public getZipCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Landroid/webkit/WebSettings$AutoFillProfile;->mZipCode:Ljava/lang/String;

    return-object v0
.end method
