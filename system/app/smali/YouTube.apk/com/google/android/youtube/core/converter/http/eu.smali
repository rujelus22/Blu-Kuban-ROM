.class final Lcom/google/android/youtube/core/converter/http/eu;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 393
    const-string v1, "role"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    const-string v2, "uploader"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 395
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Video$Builder;->owner(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 396
    const-string v1, "yt:display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 398
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->ownerDisplayName(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 403
    :cond_28
    :goto_28
    return-void

    .line 400
    :cond_29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 401
    invoke-virtual {v0, v1, p3}, Lcom/google/android/youtube/core/model/Video$Builder;->addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_28
.end method
