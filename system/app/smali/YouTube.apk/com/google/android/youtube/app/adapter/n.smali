.class public final Lcom/google/android/youtube/app/adapter/n;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/youtube/core/b/ag;

.field private final c:Lcom/google/android/youtube/core/b/ae;

.field private final d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    .line 35
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->a:Landroid/content/Context;

    .line 36
    const-string v0, "gdataClient can\'t be null"

    invoke-static {p2, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->c:Lcom/google/android/youtube/core/b/ae;

    .line 37
    const-string v0, "imageClient can\'t be null"

    invoke-static {p3, v0}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->b:Lcom/google/android/youtube/core/b/ag;

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->d:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/n;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/adapter/n;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->b:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/app/adapter/n;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->d:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/app/adapter/n;)Lcom/google/android/youtube/core/b/ae;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/n;->c:Lcom/google/android/youtube/core/b/ae;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    new-instance v0, Lcom/google/android/youtube/app/adapter/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/app/adapter/o;-><init>(Lcom/google/android/youtube/app/adapter/n;Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method
