.class public final LDj;
.super Landroid/os/Handler;
.source "TextView.java"


# instance fields
.field private a:B

.field public a:F

.field private a:I

.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/apps/docs/editors/text/TextView;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field private final c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/editors/text/TextView;)V
    .registers 4
    .parameter

    .prologue
    .line 5913
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5902
    const/4 v0, 0x0

    iput-byte v0, p0, LDj;->a:B

    .line 5914
    invoke-virtual {p1}, Lcom/google/android/apps/docs/editors/text/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 5915
    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    const/high16 v1, 0x4204

    div-float/2addr v0, v1

    iput v0, p0, LDj;->c:F

    .line 5916
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LDj;->a:Ljava/lang/ref/WeakReference;

    .line 5917
    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 5969
    const/4 v0, 0x0

    iput v0, p0, LDj;->b:F

    .line 5970
    iget-object v0, p0, LDj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/text/TextView;

    .line 5971
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5972
    :cond_10
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 6001
    iget v0, p0, LDj;->f:F

    return v0
.end method

.method a()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 5941
    iget-byte v0, p0, LDj;->a:B

    if-eq v0, v3, :cond_6

    .line 5958
    :cond_5
    :goto_5
    return-void

    .line 5945
    :cond_6
    invoke-virtual {p0, v3}, LDj;->removeMessages(I)V

    .line 5947
    iget-object v0, p0, LDj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/text/TextView;

    .line 5948
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->isFocused()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5949
    :cond_1f
    iget v1, p0, LDj;->b:F

    iget v2, p0, LDj;->c:F

    add-float/2addr v1, v2

    iput v1, p0, LDj;->b:F

    .line 5950
    iget v1, p0, LDj;->b:F

    iget v2, p0, LDj;->d:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3c

    .line 5951
    iget v1, p0, LDj;->d:F

    iput v1, p0, LDj;->b:F

    .line 5952
    const/4 v1, 0x3

    const-wide/16 v2, 0x4b0

    invoke-virtual {p0, v1, v2, v3}, LDj;->sendEmptyMessageDelayed(IJ)Z

    .line 5956
    :goto_38
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    goto :goto_5

    .line 5954
    :cond_3c
    const-wide/16 v1, 0x21

    invoke-virtual {p0, v3, v1, v2}, LDj;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_38
.end method

.method public a(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5975
    if-nez p1, :cond_7

    .line 5976
    invoke-virtual {p0}, LDj;->b()V

    .line 5998
    :cond_6
    :goto_6
    return-void

    .line 5979
    :cond_7
    iput p1, p0, LDj;->a:I

    .line 5980
    iget-object v0, p0, LDj;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/editors/text/TextView;

    .line 5981
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    if-eqz v1, :cond_6

    .line 5982
    iput-byte v6, p0, LDj;->a:B

    .line 5983
    const/4 v1, 0x0

    iput v1, p0, LDj;->b:F

    .line 5984
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->e()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->f()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5987
    iget-object v2, v0, Lcom/google/android/apps/docs/editors/text/TextView;->a:LCl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LCl;->f(I)F

    move-result v2

    .line 5988
    int-to-float v3, v1

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    .line 5989
    int-to-float v4, v1

    sub-float v4, v2, v4

    add-float/2addr v4, v3

    iput v4, p0, LDj;->e:F

    .line 5990
    iget v4, p0, LDj;->e:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, p0, LDj;->d:F

    .line 5991
    add-float/2addr v3, v2

    iput v3, p0, LDj;->f:F

    .line 5992
    int-to-float v1, v1

    const/high16 v3, 0x40c0

    div-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, LDj;->g:F

    .line 5993
    iget v1, p0, LDj;->e:F

    add-float/2addr v1, v2

    add-float/2addr v1, v2

    iput v1, p0, LDj;->a:F

    .line 5995
    invoke-virtual {v0}, Lcom/google/android/apps/docs/editors/text/TextView;->invalidate()V

    .line 5996
    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, v6, v0, v1}, LDj;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 6005
    iget v0, p0, LDj;->b:F

    iget v1, p0, LDj;->g:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()V
    .registers 2

    .prologue
    .line 5961
    const/4 v0, 0x0

    iput-byte v0, p0, LDj;->a:B

    .line 5962
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LDj;->removeMessages(I)V

    .line 5963
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LDj;->removeMessages(I)V

    .line 5964
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LDj;->removeMessages(I)V

    .line 5965
    invoke-direct {p0}, LDj;->c()V

    .line 5966
    return-void
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 6009
    iget-byte v0, p0, LDj;->a:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, LDj;->b:F

    iget v1, p0, LDj;->e:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 6013
    iget-byte v0, p0, LDj;->a:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 6017
    iget-byte v0, p0, LDj;->a:B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 5921
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 5938
    :cond_6
    :goto_6
    return-void

    .line 5923
    :pswitch_7
    iput-byte v1, p0, LDj;->a:B

    .line 5924
    invoke-virtual {p0}, LDj;->a()V

    goto :goto_6

    .line 5927
    :pswitch_d
    invoke-virtual {p0}, LDj;->a()V

    goto :goto_6

    .line 5930
    :pswitch_11
    iget-byte v0, p0, LDj;->a:B

    if-ne v0, v1, :cond_6

    .line 5931
    iget v0, p0, LDj;->a:I

    if-ltz v0, :cond_1f

    .line 5932
    iget v0, p0, LDj;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LDj;->a:I

    .line 5934
    :cond_1f
    iget v0, p0, LDj;->a:I

    invoke-virtual {p0, v0}, LDj;->a(I)V

    goto :goto_6

    .line 5921
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method
