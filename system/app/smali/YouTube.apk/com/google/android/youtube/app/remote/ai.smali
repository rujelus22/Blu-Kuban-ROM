.class final Lcom/google/android/youtube/app/remote/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/ao;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/ab;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/remote/ab;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/remote/ab;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/remote/ai;-><init>(Lcom/google/android/youtube/app/remote/ab;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4
    .parameter

    .prologue
    .line 323
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->f(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v1

    if-ne v0, v1, :cond_33

    .line 324
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/ab;->g(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/android/youtube/app/remote/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/remote/at;->u()Lcom/google/android/youtube/app/remote/bb;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 326
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/ai;->a:Lcom/google/android/youtube/app/remote/ab;

    invoke-static {v1}, Lcom/google/android/youtube/app/remote/ab;->a(Lcom/google/android/youtube/app/remote/ab;)Lcom/google/common/collect/bj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/common/collect/bj;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 327
    invoke-static {v0, p1}, Lcom/android/athome/picker/media/r;->a(Ljava/lang/Object;I)V

    .line 330
    :cond_33
    return-void
.end method
