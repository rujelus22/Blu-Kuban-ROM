.class final Lcom/google/android/youtube/core/converter/http/fd;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 572
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
    .line 575
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->is3d(Z)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 577
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/eg;->a()Ljava/util/Map;

    move-result-object v1

    const-string v2, "source"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video$ThreeDSource;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Video$Builder;->threeDSource(Lcom/google/android/youtube/core/model/Video$ThreeDSource;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 578
    return-void
.end method
