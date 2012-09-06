.class final Lcom/google/android/youtube/core/converter/http/ap;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ap;->a:Lcom/google/android/youtube/core/converter/http/ag;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 113
    const-string v0, "http://gdata.youtube.com/schemas/2007#video"

    const-string v1, "rel"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 114
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Video$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->offer(Ljava/lang/Object;)Z

    .line 116
    :cond_16
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/x;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const-string v0, "http://gdata.youtube.com/schemas/2007#video"

    const-string v1, "rel"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 120
    const-class v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v1

    .line 121
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 124
    :cond_25
    return-void
.end method
