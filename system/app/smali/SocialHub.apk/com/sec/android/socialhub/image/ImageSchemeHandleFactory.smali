.class public Lcom/sec/android/socialhub/image/ImageSchemeHandleFactory;
.super Ljava/lang/Object;
.source "ImageSchemeHandleFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSchemeHandler(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/image/ImageSchemeHandler;
    .registers 6
    .parameter "context"
    .parameter "scheme"

    .prologue
    .line 16
    if-eqz p1, :cond_46

    .line 18
    const-string v0, "ImageSchemeHandleFactory"

    const-string v1, "createSchemeHandler()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scheme - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 21
    new-instance v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeFile;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeFile;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    :goto_29
    return-object v0

    .line 23
    :cond_2a
    const-string v0, "content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 25
    new-instance v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeContent;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeContent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    .line 27
    :cond_38
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 29
    new-instance v0, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeHttp;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/socialhub/image/ImageSchemeHandler$ImageSchemeHttp;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_29

    .line 33
    :cond_46
    const/4 v0, 0x0

    goto :goto_29
.end method
