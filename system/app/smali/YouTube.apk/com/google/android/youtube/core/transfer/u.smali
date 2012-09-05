.class final Lcom/google/android/youtube/core/transfer/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/s;

.field private final b:Lcom/google/android/youtube/core/transfer/t;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/t;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/u;->a:Lcom/google/android/youtube/core/transfer/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const-string v0, "upload cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/t;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    .line 350
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->a:Lcom/google/android/youtube/core/transfer/s;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/s;->b(Lcom/google/android/youtube/core/transfer/s;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->a:Lcom/google/android/youtube/core/transfer/s;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/s;->c(Lcom/google/android/youtube/core/transfer/s;)Lcom/google/android/youtube/core/transfer/v;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/transfer/v;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 344
    check-cast p2, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/t;->g(Lcom/google/android/youtube/core/transfer/t;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->a:Lcom/google/android/youtube/core/transfer/s;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/s;->a(Lcom/google/android/youtube/core/transfer/s;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/t;->b(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/t;->c(Lcom/google/android/youtube/core/transfer/t;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/u;->a:Lcom/google/android/youtube/core/transfer/s;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/u;->b:Lcom/google/android/youtube/core/transfer/t;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/s;->a(Lcom/google/android/youtube/core/transfer/s;Lcom/google/android/youtube/core/transfer/t;)V

    return-void
.end method
