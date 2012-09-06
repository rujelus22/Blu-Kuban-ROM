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
    .line 76
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/MultiLineLayout;Lcom/google/android/apps/plus/views/MultiLineLayout$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;)V

    return-void
.end method


# virtual methods
.method public apply(I)V
    .registers 15
    .parameter "totalWidth"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v7

    .line 79
    .local v7, horizontalSpacing:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingTop()I

    move-result v11

    .line 81
    .local v11, verticalSpacing:I
    const/4 v10, 0x0

    .line 82
    .local v10, rowHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 83
    .local v2, childLeft:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingTop()I

    move-result v3

    .line 84
    .local v3, childTop:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v12, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingRight()I

    move-result v12

    sub-int v9, v0, v12

    .line 85
    .local v9, innerWidth:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getChildCount()I

    move-result v6

    .line 86
    .local v6, count:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    const/4 v12, 0x1

    #setter for: Lcom/google/android/apps/plus/views/MultiLineLayout;->mNumLines:I
    invoke-static {v0, v12}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$302(Lcom/google/android/apps/plus/views/MultiLineLayout;I)I

    .line 87
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    const/4 v12, 0x0

    #setter for: Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I
    invoke-static {v0, v12}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$402(Lcom/google/android/apps/plus/views/MultiLineLayout;I)I

    .line 88
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3c
    if-ge v8, v6, :cond_86

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0, v8}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v12, 0x8

    if-ne v0, v12, :cond_4f

    .line 88
    :goto_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 94
    :cond_4f
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->measure(Landroid/view/View;)V

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 97
    .local v4, childWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 98
    .local v5, childHeight:I
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    #getter for: Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I
    invoke-static {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$400(Lcom/google/android/apps/plus/views/MultiLineLayout;)I

    move-result v0

    if-ge v0, v5, :cond_67

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    #setter for: Lcom/google/android/apps/plus/views/MultiLineLayout;->mChipHeight:I
    invoke-static {v0, v5}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$402(Lcom/google/android/apps/plus/views/MultiLineLayout;I)I

    .line 102
    :cond_67
    add-int v0, v2, v4

    if-le v0, v9, :cond_7a

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-static {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$308(Lcom/google/android/apps/plus/views/MultiLineLayout;)I

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingLeft()I

    move-result v2

    .line 105
    add-int v0, v10, v11

    add-int/2addr v3, v0

    .line 106
    const/4 v10, 0x0

    :cond_7a
    move-object v0, p0

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->layout(Landroid/view/View;IIII)V

    .line 110
    add-int v0, v4, v7

    add-int/2addr v2, v0

    .line 111
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_4c

    .line 114
    .end local v1           #child:Landroid/view/View;
    .end local v4           #childWidth:I
    .end local v5           #childHeight:I
    :cond_86
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
    .line 117
    return-void
.end method

.method protected measure(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 116
    return-void
.end method
