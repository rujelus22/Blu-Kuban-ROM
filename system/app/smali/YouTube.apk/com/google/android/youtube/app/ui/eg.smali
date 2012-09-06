.class final Lcom/google/android/youtube/app/ui/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/ec;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/ec;)V
    .registers 2
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/eg;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ec;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/eg;-><init>(Lcom/google/android/youtube/app/ui/ec;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 403
    check-cast p1, Lcom/google/android/plus1/u;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/eg;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ec;->c(Lcom/google/android/youtube/app/ui/ec;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Helper got +1 for video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/eg;->a:Lcom/google/android/youtube/app/ui/ec;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/ec;->d(Lcom/google/android/youtube/app/ui/ec;)Lcom/google/android/youtube/core/a/d;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/adapter/bt;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/app/adapter/bt;->a(Ljava/lang/String;Lcom/google/android/plus1/u;)V

    :cond_2e
    return-void
.end method
