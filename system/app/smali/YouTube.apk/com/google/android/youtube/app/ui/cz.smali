.class final Lcom/google/android/youtube/app/ui/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/cv;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/cv;)V
    .registers 3
    .parameter

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/ui/cz;-><init>(Lcom/google/android/youtube/app/ui/cv;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/app/ui/cv;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 413
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5
    .parameter

    .prologue
    .line 401
    check-cast p1, Lcom/google/android/plus1/u;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/cv;->c(Lcom/google/android/youtube/app/ui/cv;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/plus1/u;->a:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_32

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Helper got +1 for video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/cz;->a:Lcom/google/android/youtube/app/ui/cv;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/cv;->d(Lcom/google/android/youtube/app/ui/cv;)Lcom/google/android/youtube/core/a/d;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/a/x;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/youtube/app/a/x;->a(Ljava/lang/String;Lcom/google/android/plus1/u;)V

    :cond_32
    return-void
.end method
