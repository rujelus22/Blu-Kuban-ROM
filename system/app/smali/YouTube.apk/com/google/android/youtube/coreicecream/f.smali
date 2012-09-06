.class final Lcom/google/android/youtube/coreicecream/f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/coreicecream/d;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/coreicecream/d;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    .line 146
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    return-void
.end method


# virtual methods
.method protected final onMeasure(II)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/coreicecream/f;->measureChildren(II)V

    .line 153
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    invoke-static {v0, p1}, Lcom/google/android/youtube/coreicecream/f;->getDefaultSize(II)I

    move-result v1

    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/coreicecream/f;->getDefaultSize(II)I

    move-result v0

    .line 155
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    if-lez v2, :cond_50

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    if-lez v2, :cond_50

    .line 156
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v3

    mul-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    .line 157
    const v3, 0x3c23d70a

    cmpl-float v3, v2, v3

    if-lez v3, :cond_88

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v0}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v0

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    div-int/2addr v0, v2

    .line 164
    :cond_50
    :goto_50
    invoke-virtual {p0, v1, v0}, Lcom/google/android/youtube/coreicecream/f;->setMeasuredDimension(II)V

    .line 166
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    if-eqz v2, :cond_87

    .line 167
    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->c(Lcom/google/android/youtube/coreicecream/d;)Lcom/google/android/youtube/coreicecream/e;

    move-result-object v2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v3}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/coreicecream/e;->setScaleX(F)V

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v1}, Lcom/google/android/youtube/coreicecream/d;->c(Lcom/google/android/youtube/coreicecream/d;)Lcom/google/android/youtube/coreicecream/e;

    move-result-object v1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/coreicecream/e;->setScaleY(F)V

    .line 170
    :cond_87
    return-void

    .line 159
    :cond_88
    const v3, -0x43dc28f6

    cmpg-float v2, v2, v3

    if-gez v2, :cond_50

    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v1}, Lcom/google/android/youtube/coreicecream/d;->a(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v1

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/youtube/coreicecream/f;->a:Lcom/google/android/youtube/coreicecream/d;

    invoke-static {v2}, Lcom/google/android/youtube/coreicecream/d;->b(Lcom/google/android/youtube/coreicecream/d;)I

    move-result v2

    div-int/2addr v1, v2

    goto :goto_50
.end method
