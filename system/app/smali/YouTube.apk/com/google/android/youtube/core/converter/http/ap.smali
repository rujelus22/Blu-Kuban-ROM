.class final Lcom/google/android/youtube/core/converter/http/ap;
.super Lcom/google/android/youtube/core/converter/http/ao;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/http/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/apache/http/HttpEntity;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 91
    check-cast p1, Lorg/apache/http/HttpResponse;

    invoke-super {p0, p1}, Lcom/google/android/youtube/core/converter/http/ao;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
