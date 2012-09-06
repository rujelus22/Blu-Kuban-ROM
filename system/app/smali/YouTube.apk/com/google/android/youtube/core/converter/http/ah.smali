.class final Lcom/google/android/youtube/core/converter/http/ah;
.super Lcom/google/android/youtube/core/converter/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/ag;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/ah;->a:Lcom/google/android/youtube/core/converter/http/ag;

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
    .line 99
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/x;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Builder;

    .line 100
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Event$Builder;->target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 101
    const-string v1, "display"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 105
    :cond_1a
    return-void
.end method
