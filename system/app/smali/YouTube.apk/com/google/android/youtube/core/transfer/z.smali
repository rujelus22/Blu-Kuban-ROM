.class final Lcom/google/android/youtube/core/transfer/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/x;

.field private final b:Lcom/google/android/youtube/core/transfer/y;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/x;Lcom/google/android/youtube/core/transfer/y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    const-string v0, "upload cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/y;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    .line 409
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/x;->b(Lcom/google/android/youtube/core/transfer/x;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/x;->c(Lcom/google/android/youtube/core/transfer/x;)Lcom/google/android/youtube/core/transfer/aa;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/transfer/aa;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 403
    check-cast p2, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/y;->g(Lcom/google/android/youtube/core/transfer/y;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/x;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/x;->a(Lcom/google/android/youtube/core/transfer/x;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/y;->b(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/y;->d(Lcom/google/android/youtube/core/transfer/y;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/z;->a:Lcom/google/android/youtube/core/transfer/x;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/z;->b:Lcom/google/android/youtube/core/transfer/y;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/x;->a(Lcom/google/android/youtube/core/transfer/x;Lcom/google/android/youtube/core/transfer/y;)V

    return-void
.end method
