.class public final Lcom/android/athome/picker/media/aa;
.super Lcom/android/athome/picker/media/z;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/android/athome/picker/media/v;


# direct methods
.method constructor <init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/athome/picker/media/aa;->a:Lcom/android/athome/picker/media/v;

    .line 777
    invoke-direct {p0, p1, p2}, Lcom/android/athome/picker/media/z;-><init>(Lcom/android/athome/picker/media/v;Lcom/android/athome/picker/media/x;)V

    .line 778
    const/high16 v0, 0x80

    iput v0, p0, Lcom/android/athome/picker/media/aa;->d:I

    .line 779
    return-void
.end method


# virtual methods
.method public final c(I)V
    .registers 4
    .parameter

    .prologue
    .line 809
    iget v0, p0, Lcom/android/athome/picker/media/aa;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 810
    iget-object v0, p0, Lcom/android/athome/picker/media/aa;->m:Lcom/android/athome/picker/media/ab;

    if-nez v0, :cond_11

    .line 811
    const-string v0, "MediaRouterFallback"

    const-string v1, "Cannot requestSetVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_10
    :goto_10
    return-void

    .line 814
    :cond_11
    iget-object v0, p0, Lcom/android/athome/picker/media/aa;->m:Lcom/android/athome/picker/media/ab;

    iget-object v0, v0, Lcom/android/athome/picker/media/ab;->a:Lcom/android/athome/picker/media/d;

    invoke-virtual {v0, p0, p1}, Lcom/android/athome/picker/media/d;->b(Ljava/lang/Object;I)V

    goto :goto_10
.end method

.method public final d(I)V
    .registers 4
    .parameter

    .prologue
    .line 820
    iget v0, p0, Lcom/android/athome/picker/media/aa;->l:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 821
    iget-object v0, p0, Lcom/android/athome/picker/media/aa;->m:Lcom/android/athome/picker/media/ab;

    if-nez v0, :cond_11

    .line 822
    const-string v0, "MediaRouterFallback"

    const-string v1, "Cannot requestUpdateVolume on user route - no volume callback set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_10
    :goto_10
    return-void

    .line 825
    :cond_11
    iget-object v0, p0, Lcom/android/athome/picker/media/aa;->m:Lcom/android/athome/picker/media/ab;

    iget-object v0, v0, Lcom/android/athome/picker/media/ab;->a:Lcom/android/athome/picker/media/d;

    invoke-virtual {v0, p0, p1}, Lcom/android/athome/picker/media/d;->a(Ljava/lang/Object;I)V

    goto :goto_10
.end method
