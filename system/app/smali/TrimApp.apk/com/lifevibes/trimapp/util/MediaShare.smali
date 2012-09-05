.class public Lcom/lifevibes/trimapp/util/MediaShare;
.super Ljava/lang/Object;
.source "MediaShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lifevibes/trimapp/util/MediaShare$1;,
        Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;,
        Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;,
        Lcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;,
        Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;
    }
.end annotation


# instance fields
.field private mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

.field public final mContext:Landroid/content/Context;

.field public final mLibraryVersion:I

.field private mLoaded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5
    .parameter "context"
    .parameter "version"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLoaded:Z

    .line 136
    iput-object p1, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mContext:Landroid/content/Context;

    .line 137
    iput p2, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLibraryVersion:I

    .line 139
    iget v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLibraryVersion:I

    packed-switch v0, :pswitch_data_20

    .line 144
    const-string v0, "TrimApp_MS"

    const-string v1, "the current model is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :goto_16
    return-void

    .line 141
    :pswitch_17
    new-instance v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;-><init>(Lcom/lifevibes/trimapp/util/MediaShare;Lcom/lifevibes/trimapp/util/MediaShare$1;)V

    iput-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    goto :goto_16

    .line 139
    :pswitch_data_20
    .packed-switch 0x1f
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public createThumbnail(Ljava/lang/String;II)Z
    .registers 6
    .parameter "input"
    .parameter "maximumWidth"
    .parameter "maximumHeight"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_d

    .line 182
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    .line 185
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->createThumbnail(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_c
.end method

.method public getProperties(Ljava/lang/String;Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;)I
    .registers 5
    .parameter "input"
    .parameter "properties"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_e

    .line 174
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/high16 v0, 0x4000

    .line 177
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0, p1, p2}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->getProperties(Ljava/lang/String;Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;)I

    move-result v0

    goto :goto_d
.end method

.method public getThumbnail(III)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "width"
    .parameter "height"
    .parameter "timeMillis"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_d

    .line 199
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    .line 202
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->getThumbnail(III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c
.end method

.method public getTrimmingStatus()I
    .registers 3

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_d

    .line 235
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, 0x0

    .line 238
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->getTrimmingStatus()I

    move-result v0

    goto :goto_c
.end method

.method public isNullEncordingAvailable(III)Z
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "videoFormat"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0, p1, p2, p3}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->isNullEncordingAvailable(III)Z

    move-result v0

    return v0
.end method

.method public loadLibrary()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 154
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLoaded:Z

    if-nez v0, :cond_2a

    .line 155
    iget v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLibraryVersion:I

    packed-switch v0, :pswitch_data_2e

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    .line 164
    const-string v0, "TrimApp_MS"

    const-string v2, "the current model is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 169
    :goto_16
    return v0

    .line 157
    :pswitch_17
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    check-cast v0, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShare31_API;->loadLibrary()Z

    move-result v0

    if-nez v0, :cond_23

    move v0, v1

    .line 158
    goto :goto_16

    .line 160
    :cond_23
    const-string v0, "TrimApp_MS"

    const-string v1, "------------ loaded MS3.1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2a
    iput-boolean v2, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mLoaded:Z

    move v0, v2

    .line 169
    goto :goto_16

    .line 155
    :pswitch_data_2e
    .packed-switch 0x1f
        :pswitch_17
    .end packed-switch
.end method

.method public releaseThumbnail()Z
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_d

    .line 215
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->releaseThumbnail()Z

    move-result v0

    goto :goto_c
.end method

.method public releaseTrimming()Z
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    invoke-interface {v0}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->releaseTrimming()Z

    move-result v0

    return v0
.end method

.method public startTrimming(Ljava/lang/String;Ljava/lang/String;IILcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;)I
    .registers 12
    .parameter "input"
    .parameter "output"
    .parameter "beginMillis"
    .parameter "endMillis"
    .parameter "listener"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    if-nez v0, :cond_e

    .line 223
    const-string v0, "TrimApp_MS"

    const-string v1, "library was not loaded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/high16 v0, 0x4000

    .line 226
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, Lcom/lifevibes/trimapp/util/MediaShare;->mApi:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareAPI;->startTrimming(Ljava/lang/String;Ljava/lang/String;IILcom/lifevibes/trimapp/util/MediaShare$MediaShareListener;)I

    move-result v0

    goto :goto_d
.end method
