.class final Lcom/google/android/youtube/coreicecream/e;
.super Landroid/view/TextureView;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/coreicecream/d;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    .line 116
    invoke-direct {p0, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 117
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    if-eqz v0, :cond_20

    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v1}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/e;->setMeasuredDimension(II)V

    .line 128
    :goto_1f
    return-void

    .line 124
    :cond_20
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/coreicecream/e;->getDefaultSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/e;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v1}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v1

    invoke-static {v1, p2}, Lcom/google/android/youtube/coreicecream/e;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/coreicecream/e;->setMeasuredDimension(II)V

    goto :goto_1f
.end method
