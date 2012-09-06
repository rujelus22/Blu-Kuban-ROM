.class public final Lcom/google/android/youtube/core/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/ui/q;


# direct methods
.method protected constructor <init>(Lcom/google/android/youtube/core/ui/q;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/ui/r;->a:Lcom/google/android/youtube/core/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/r;->a:Lcom/google/android/youtube/core/ui/q;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/q;->h:Lcom/google/android/youtube/core/a/d;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/a/d;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 87
    check-cast p1, Landroid/net/Uri;

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/core/ui/r;->a:Lcom/google/android/youtube/core/ui/q;

    iget-object v0, v0, Lcom/google/android/youtube/core/ui/q;->h:Lcom/google/android/youtube/core/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/core/a/d;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
