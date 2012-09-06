.class final Lcom/google/android/youtube/core/converter/http/fa;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2
    .parameter

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/google/android/youtube/core/converter/http/fa;->a:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 311
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 312
    const-string v1, "yt:name"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    const-string v2, "url"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 314
    const-string v3, "poster"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 340
    :cond_23
    :goto_23
    return-void

    .line 318
    :cond_24
    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 319
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->defaultThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 328
    :cond_2f
    :goto_2f
    const-string v3, "hqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 329
    iget-boolean v4, p0, Lcom/google/android/youtube/core/converter/http/fa;->a:Z

    if-eqz v4, :cond_57

    .line 331
    if-eqz v3, :cond_23

    .line 332
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_23

    .line 320
    :cond_3f
    const-string v3, "mqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 321
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->mqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_2f

    .line 322
    :cond_4b
    const-string v3, "hqdefault"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 323
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_2f

    .line 336
    :cond_57
    if-nez v3, :cond_23

    const-string v3, "default"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_23

    .line 337
    :cond_67
    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_23
.end method
