.class public Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeHttp;
.super Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.source "ImageSchemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSchemeHttp"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "scheme"

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadImageInfo(Lcom/sec/android/socialhub/image/RemoteImageInfo;Ljava/io/File;Ljava/lang/Long;)V
    .registers 7
    .parameter "info"
    .parameter "file"
    .parameter "filesize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;
        }
    .end annotation

    .prologue
    .line 294
    new-instance v0, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;

    const-string v1, "web image does not supported"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/exception/SocialHubNotSupportException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public resizeImage(Landroid/net/Uri;Ljava/io/File;Ljava/lang/Long;)Landroid/net/Uri;
    .registers 5
    .parameter "uri"
    .parameter "file"
    .parameter "filesize"

    .prologue
    .line 300
    const/4 v0, 0x0

    return-object v0
.end method
