.class Lcom/google/android/apps/circles/people/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic d:Lcom/google/android/apps/circles/people/MultiLineLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/circles/people/MultiLineLayout;Lcom/google/android/apps/circles/people/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/android/apps/circles/people/c;-><init>(Lcom/google/android/apps/circles/people/MultiLineLayout;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 15
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v9

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingTop()I

    move-result v10

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingTop()I

    move-result v3

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingRight()I

    move-result v1

    sub-int v11, v0, v1

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getChildCount()I

    move-result v12

    move v8, v7

    move v0, v7

    .line 77
    :goto_31
    if-ge v8, v12, :cond_69

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v1, v8}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_45

    .line 77
    :goto_41
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_31

    .line 83
    :cond_45
    invoke-virtual {p0, v1}, Lcom/google/android/apps/circles/people/c;->a(Landroid/view/View;)V

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 88
    add-int v6, v2, v4

    if-le v6, v11, :cond_6a

    .line 89
    iget-object v2, p0, Lcom/google/android/apps/circles/people/c;->d:Lcom/google/android/apps/circles/people/MultiLineLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/circles/people/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 90
    add-int/2addr v0, v10

    add-int/2addr v3, v0

    move v6, v7

    :goto_5d
    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/circles/people/c;->a(Landroid/view/View;IIII)V

    .line 95
    add-int v0, v4, v9

    add-int/2addr v2, v0

    .line 96
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_41

    .line 98
    :cond_69
    return-void

    :cond_6a
    move v6, v0

    goto :goto_5d
.end method

.method protected a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method protected a(Landroid/view/View;IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    return-void
.end method
