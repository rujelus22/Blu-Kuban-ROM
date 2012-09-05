.class public Lcom/sprint/dsa/data/FeatureItem;
.super Ljava/lang/Object;
.source "FeatureItem.java"


# static fields
.field public static final CRITICAL_YES:Ljava/lang/String; = "Y"

.field public static final FUNCTION_CICD:Ljava/lang/String; = "cicd"

.field public static final FUNCTION_CIFO:Ljava/lang/String; = "cifo"

.field public static final FUNCTION_PRL:Ljava/lang/String; = "ciprl"

.field public static final PRL_CRITICAL:Ljava/lang/String; = "prlCrtical"

.field public static final PRL_VER:Ljava/lang/String; = "prlVer"

.field public static final STRING_NULL:Ljava/lang/String; = "null"

.field public static final SWUPDATE_CABLE:Ljava/lang/String; = "Cable"

.field public static final SWUPDATE_FUMO:Ljava/lang/String; = "fumo"

.field public static final SWUPDATE_GOOGLE:Ljava/lang/String; = "Google"

.field public static final SWUPDATE_INTENT:Ljava/lang/String; = "Intent"

.field public static final SWUPDATE_MESSAGE:Ljava/lang/String; = "Message"

.field public static final SW_ACTION:Ljava/lang/String; = "swAction"

.field public static final SW_CRITICAL:Ljava/lang/String; = "swCrtical"

.field public static final SW_DETAILS:Ljava/lang/String; = "swDetails"

.field public static final SW_MESSAGE:Ljava/lang/String; = "swMessage"

.field public static final SW_MOD:Ljava/lang/String; = "swMOD"

.field public static final SW_VER:Ljava/lang/String; = "swVer"


# instance fields
.field mAction:Ljava/lang/String;

.field mCampaign:Ljava/lang/String;

.field mCost:Ljava/lang/String;

.field mCritical:Z

.field mDescription:Ljava/lang/String;

.field mEnabled:Z

.field mExpiration:J

.field mExtra:Ljava/lang/String;

.field mIcon:Landroid/graphics/Bitmap;

.field mId:J

.field mImageUrl:Ljava/lang/String;

.field mInstalled:Z

.field mMessage:Ljava/lang/String;

.field mMore:Z

.field mPackId:Ljava/lang/String;

.field mRating:J

.field mScheme:Ljava/lang/String;

.field mSid:J

.field mTitle:Ljava/lang/String;

.field mUri:Ljava/lang/String;

.field mVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mId:J

    .line 57
    iput-boolean v3, p0, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    .line 58
    iput-boolean v3, p0, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    .line 59
    iput-boolean v2, p0, Lcom/sprint/dsa/data/FeatureItem;->mInstalled:Z

    .line 60
    iput-boolean v2, p0, Lcom/sprint/dsa/data/FeatureItem;->mMore:Z

    .line 61
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mCampaign:Ljava/lang/String;

    return-object v0
.end method

.method public getCost()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mCost:Ljava/lang/String;

    return-object v0
.end method

.method public getCritical()Z
    .registers 2

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mCritical:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiration()J
    .registers 3

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mExpiration:J

    return-wide v0
.end method

.method public getExtra()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()J
    .registers 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mRating:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public isActivate()Z
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v1, "activate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConnectionTest()Z
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v1, "connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    return v0
.end method

.method public isFactoryReset()Z
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v1, "factory_reset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFunction()Z
    .registers 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mAction:Ljava/lang/String;

    const-string v1, "function"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isInstalled()Z
    .registers 2

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mInstalled:Z

    return v0
.end method

.method public isMore()Z
    .registers 2

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mMore:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    return v0
.end method

.method public setCritical(Z)V
    .registers 2
    .parameter "critical"

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mCritical:Z

    .line 206
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "descr"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mDescription:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mEnabled:Z

    .line 170
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 2
    .parameter "icon"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mIcon:Landroid/graphics/Bitmap;

    .line 146
    return-void
.end method

.method public setInstalled(Z)V
    .registers 2
    .parameter "install"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mInstalled:Z

    .line 190
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mMessage:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setMore()V
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sprint/dsa/data/FeatureItem;->mMore:Z

    .line 154
    return-void
.end method

.method public setVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/sprint/dsa/data/FeatureItem;->mVisible:Z

    .line 174
    return-void
.end method
