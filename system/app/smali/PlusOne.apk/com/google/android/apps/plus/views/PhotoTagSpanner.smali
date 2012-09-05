.class public Lcom/google/android/apps/plus/views/PhotoTagSpanner;
.super Landroid/view/View;
.source "PhotoTagSpanner.java"


# instance fields
.field private mTagParent:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method private findParent(I)Landroid/view/View;
    .registers 5
    .parameter "id"

    .prologue
    .line 63
    move-object v1, p0

    .line 65
    .local v1, parent:Landroid/view/View;
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 66
    .local v0, p:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_13

    move-object v1, v0

    .line 67
    check-cast v1, Landroid/view/View;

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_14

    .line 75
    :goto_12
    return-object v1

    .line 72
    :cond_13
    const/4 v1, 0x0

    .line 74
    :cond_14
    if-nez v1, :cond_1

    goto :goto_12
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->setFixedWidth()V

    .line 33
    return-void
.end method

.method public setFixedWidth()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    if-nez v1, :cond_37

    .line 40
    const v1, 0x7f0d0126

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->findParent(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    if-nez v1, :cond_37

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/google/android/apps/plus/views/PhotoTagSpanner;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a parent with and ID of \'tag_approval\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_37
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    const v3, 0x7f0d0129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->mTagParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 51
    if-eqz v1, :cond_71

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    :goto_55
    sub-int v1, v3, v1

    .line 52
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_5d
    sub-int v0, v1, v0

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoTagSpanner;->setMeasuredDimension(II)V

    .line 57
    return-void

    :cond_71
    move v1, v0

    .line 51
    goto :goto_55
.end method
