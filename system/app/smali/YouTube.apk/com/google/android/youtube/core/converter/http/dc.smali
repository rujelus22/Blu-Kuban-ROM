.class public final Lcom/google/android/youtube/core/converter/http/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# instance fields
.field private final a:Lcom/google/android/youtube/core/converter/http/HttpMethod;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V
    .registers 3
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/dc;->a:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 21
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 15
    check-cast p1, Landroid/net/Uri;

    const-string v0, "the uri can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/dc;->a:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method
