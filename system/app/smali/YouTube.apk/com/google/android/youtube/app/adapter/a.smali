.class public abstract Lcom/google/android/youtube/app/adapter/a;
.super Lcom/google/android/youtube/app/adapter/l;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/youtube/core/b/ae;

.field private final b:Lcom/google/android/youtube/core/b/ag;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/b/ag;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    const v0, 0x7f08003a

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/app/adapter/l;-><init>(Landroid/content/Context;I)V

    .line 29
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/a;->a:Lcom/google/android/youtube/core/b/ae;

    .line 30
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ag;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/a;->b:Lcom/google/android/youtube/core/b/ag;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/adapter/a;)Lcom/google/android/youtube/core/b/ag;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/a;->b:Lcom/google/android/youtube/core/b/ag;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Landroid/net/Uri;
.end method

.method protected final a(Ljava/lang/Object;Landroid/view/View;Lcom/google/android/youtube/core/async/l;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/adapter/a;->a:Lcom/google/android/youtube/core/b/ae;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/adapter/a;->a(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/app/adapter/b;

    invoke-direct {v2, p0, p3}, Lcom/google/android/youtube/app/adapter/b;-><init>(Lcom/google/android/youtube/app/adapter/a;Lcom/google/android/youtube/core/async/l;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/b/ae;->c(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    .line 36
    return-void
.end method
