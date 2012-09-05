.class public Lcom/sprint/w/installer/psi/ServicePack;
.super Ljava/lang/Object;
.source "ServicePack.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/sprint/w/installer/psi/Listable;


# instance fields
.field private categories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPack:Z

.field private description:Ljava/lang/String;

.field public detailsIntent:Ljava/lang/String;

.field private devices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downloadFilePath:Ljava/lang/String;

.field public downloadPercent:I

.field private downloadUrl:Ljava/lang/String;

.field private transient iconBitmap:Landroid/graphics/Bitmap;

.field private iconUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field public installIntent:Ljava/lang/String;

.field private keywords:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseId:Ljava/lang/String;

.field private locked:Z

.field private notifyUrl:Ljava/lang/String;

.field private purchasedFlag:Z

.field private screenShot1:Ljava/lang/String;

.field private screenShot2:Ljava/lang/String;

.field private supportEmail:Ljava/lang/String;

.field private supportName:Ljava/lang/String;

.field private supportPhone:Ljava/lang/String;

.field private supportWebsite:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->id:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->licenseId:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->title:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->description:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->version:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconUrl:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadUrl:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->notifyUrl:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->keywords:Ljava/util/Vector;

    .line 23
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->devices:Ljava/util/Vector;

    .line 24
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->categories:Ljava/util/Vector;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->purchasedFlag:Z

    .line 26
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportName:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportWebsite:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportEmail:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportPhone:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot1:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot2:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadFilePath:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->videoUrl:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCategories()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->categories:Ljava/util/Vector;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDevices()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->devices:Ljava/util/Vector;

    return-object v0
.end method

.method public getDownloadFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconUrl:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/w/installer/util/Util;->getStoredContentBaseUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/dme/Preview?t=HS&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/psi/ServicePack;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconUrl:Ljava/lang/String;

    .line 70
    :cond_27
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getKeywords()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->keywords:Ljava/util/Vector;

    return-object v0
.end method

.method public getLicenseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->licenseId:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedFlag()Z
    .registers 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->purchasedFlag:Z

    return v0
.end method

.method public getScreenShot1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot1:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenShot2()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot2:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportPhone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportPhone:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportWebsite()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportWebsite:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isDefaultPack()Z
    .registers 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->defaultPack:Z

    return v0
.end method

.method public isLocked()Z
    .registers 2

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/sprint/w/installer/psi/ServicePack;->locked:Z

    return v0
.end method

.method public setCategories(Ljava/util/Vector;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, categories:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->categories:Ljava/util/Vector;

    .line 119
    return-void
.end method

.method public setDefaultPack(Z)V
    .registers 2
    .parameter "defaultPack"

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->defaultPack:Z

    .line 224
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "description"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->description:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setDevices(Ljava/util/Vector;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, devices:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->devices:Ljava/util/Vector;

    .line 127
    return-void
.end method

.method public setDownloadFilePath(Ljava/lang/String;)V
    .registers 2
    .parameter "downloadFilePath"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadFilePath:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "downloadUrl"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->downloadUrl:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "iconBitmap"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconBitmap:Landroid/graphics/Bitmap;

    .line 139
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "iconUrl"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->iconUrl:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->id:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setKeywords(Ljava/util/Vector;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, keywords:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->keywords:Ljava/util/Vector;

    .line 151
    return-void
.end method

.method public setLicenseId(Ljava/lang/String;)V
    .registers 2
    .parameter "licenseId"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->licenseId:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setLocked(Z)V
    .registers 2
    .parameter "locked"

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->locked:Z

    .line 232
    return-void
.end method

.method public setNotifyUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "notifyUrl"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->notifyUrl:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setPurchasedFlag(Z)V
    .registers 2
    .parameter "purchasedFlag"

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->purchasedFlag:Z

    .line 163
    return-void
.end method

.method public setScreenShot1(Ljava/lang/String;)V
    .registers 2
    .parameter "screenShot1"

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot1:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setScreenShot2(Ljava/lang/String;)V
    .registers 2
    .parameter "screenShot2"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->screenShot2:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setSupportEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "supportEmail"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportEmail:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setSupportName(Ljava/lang/String;)V
    .registers 2
    .parameter "supportName"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSupportPhone(Ljava/lang/String;)V
    .registers 2
    .parameter "supportPhone"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportPhone:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setSupportWebsite(Ljava/lang/String;)V
    .registers 2
    .parameter "supportWebsite"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->supportWebsite:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2
    .parameter "title"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->title:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .parameter "version"

    .prologue
    .line 186
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->version:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "videoUrl"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sprint/w/installer/psi/ServicePack;->videoUrl:Ljava/lang/String;

    .line 216
    return-void
.end method
