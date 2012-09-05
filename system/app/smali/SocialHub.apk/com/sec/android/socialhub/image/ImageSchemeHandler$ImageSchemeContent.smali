.class public Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeContent;
.super Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.source "ImageSchemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSchemeContent"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "scheme"

    .prologue
    .line 262
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    return-void
.end method


# virtual methods
.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 271
    if-nez p1, :cond_d

    .line 273
    const-string v0, "ImageSchemeContent"

    const-string v1, "getPath()"

    const-string v2, "uri is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x0

    .line 277
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sec/android/socialhub/image/ImageSchemeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/android/socialhub/util/SocialHubUtil;->getImagePathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
