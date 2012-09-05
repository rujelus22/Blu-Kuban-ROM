.class public Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeFile;
.super Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.source "ImageSchemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/image/ImageSchemeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSchemeFile"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "scheme"

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/sec/android/socialhub/image/ImageSchemeHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 248
    if-nez p1, :cond_d

    .line 250
    const-string v0, "ImageSchemeFile"

    const-string v1, "getPath()"

    const-string v2, "uri is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x0

    .line 254
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
