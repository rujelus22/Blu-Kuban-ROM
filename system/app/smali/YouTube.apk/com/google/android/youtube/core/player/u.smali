.class final Lcom/google/android/youtube/core/player/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 893
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t retrieve branding info from [uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->e(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/youtube/core/player/x;->a(Lcom/google/android/youtube/core/model/Branding;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 893
    check-cast p2, Lcom/google/android/youtube/core/model/Branding;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/u;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->e(Lcom/google/android/youtube/core/player/p;)Lcom/google/android/youtube/core/player/x;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/youtube/core/player/x;->a(Lcom/google/android/youtube/core/model/Branding;)V

    return-void
.end method
