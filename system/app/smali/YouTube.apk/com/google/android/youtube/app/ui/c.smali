.class final Lcom/google/android/youtube/app/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/b;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/b;)V
    .registers 2
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/c;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/b;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/c;-><init>(Lcom/google/android/youtube/app/ui/b;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 109
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/c;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/b;->a(Lcom/google/android/youtube/app/ui/b;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/c;->a:Lcom/google/android/youtube/app/ui/b;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/b;->e(Lcom/google/android/youtube/app/ui/b;)Lcom/google/android/youtube/app/adapter/c;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/google/android/youtube/app/adapter/c;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void
.end method
