.class final Lcom/google/android/youtube/core/converter/http/al;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/al;->a:Lcom/google/android/youtube/core/converter/http/ag;

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
    .line 67
    const-string v0, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    const-string v1, "scheme"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 68
    const-string v0, "term"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :try_start_18
    invoke-static {v1}, Lcom/google/android/youtube/core/model/Event$Action;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Action;

    move-result-object v2

    .line 71
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Event$Builder;->action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_27} :catch_28

    .line 76
    :cond_27
    :goto_27
    return-void

    .line 73
    :catch_28
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected event action "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    goto :goto_27
.end method
