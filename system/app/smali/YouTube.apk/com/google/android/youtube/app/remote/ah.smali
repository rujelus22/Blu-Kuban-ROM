.class final Lcom/google/android/youtube/app/remote/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ar;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/ab;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 244
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/ah;-><init>(Lcom/google/android/youtube/app/remote/ab;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/youtube/app/remote/ap;)V
    .registers 6
    .parameter

    .prologue
    .line 244
    check-cast p1, Lcom/google/android/youtube/app/remote/bb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YouTubeTvScreen removed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/bj;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->e(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_55

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_55
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/bj;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_71
    return-void
.end method

.method public final synthetic b(Lcom/google/android/youtube/app/remote/ap;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 244
    check-cast p1, Lcom/google/android/youtube/app/remote/bb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YouTubeTvScreen added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/bj;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "Already know about the screen - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->c(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/youtube/app/remote/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/r;->e(Ljava/lang/Object;I)V

    invoke-static {v0, v2}, Lcom/android/athome/picker/media/r;->f(Ljava/lang/Object;I)V

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->b(Ljava/lang/Object;I)V

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->d(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/ag;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;Lcom/android/athome/picker/media/d;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->b(Lcom/google/android/youtube/app/remote/ab;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ah;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/google/common/collect/bj;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25
.end method
