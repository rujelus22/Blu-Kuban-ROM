.class Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;
.super Ljava/lang/Object;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/MultiLineLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Rules"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/MultiLineLayout;Lcom/google/android/apps/plus/views/MultiLineLayout$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V

    return-void
.end method


# virtual methods
.method public apply(I)V
    .registers 15
    .parameter "totalWidth"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v7

    .line 67
    .local v7, horizontalSpacing:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingTop()I

    move-result v11

    .line 69
    .local v11, verticalSpacing:I
    const/4 v10, 0x0

    .line 70
    .local v10, rowHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 71
    .local v2, childLeft:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingTop()I

    move-result v3

    .line 72
    .local v3, childTop:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v12, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingRight()I

    move-result v12

    sub-int v9, v0, v12

    .line 73
    .local v9, innerWidth:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getChildCount()I

    move-result v6

    .line 74
    .local v6, count:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_30
    if-ge v8, v6, :cond_68

    .line 75
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 76
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v12, 0x8

    if-ne v0, v12, :cond_43

    .line 74
    :goto_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_30

    .line 80
    :cond_43
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->measure(Landroid/view/View;)V

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 83
    .local v4, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 85
    .local v5, childHeight:I
    add-int v0, v2, v4

    if-le v0, v9, :cond_5c

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 87
    add-int v0, v10, v11

    add-int/2addr v3, v0

    .line 88
    const/4 v10, 0x0

    :cond_5c
    move-object v0, p0

    .line 91
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->layout(Landroid/view/View;IIII)V

    .line 92
    add-int v0, v4, v7

    add-int/2addr v2, v0

    .line 93
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_40

    .line 95
    .end local v1           #child:Landroid/view/View;
    .end local v4           #childWidth:I
    .end local v5           #childHeight:I
    :cond_68
    return-void
.end method

.method protected layout(Landroid/view/View;IIII)V
    .registers 6
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 98
    return-void
.end method

.method protected measure(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 97
    return-void
.end method
