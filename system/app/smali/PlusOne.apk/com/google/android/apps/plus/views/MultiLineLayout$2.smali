.class Lcom/google/android/apps/plus/views/MultiLineLayout$2;
.super Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;
.source "MultiLineLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/views/MultiLineLayout;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mRequestedHeight:I

.field private mRequestedWidth:I

.field final synthetic this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

.field final synthetic val$heightConstraint:I

.field final synthetic val$widthConstraint:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/MultiLineLayout;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    iput-object p1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    iput p2, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$widthConstraint:I

    iput p3, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$heightConstraint:I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;-><init>(Lcom/google/android/apps/plus/views/MultiLineLayout;Lcom/google/android/apps/plus/views/MultiLineLayout$1;)V

    .line 36
    iput v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    .line 37
    iput v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    return-void
.end method


# virtual methods
.method public apply(I)V
    .registers 6
    .parameter "totalWidth"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/MultiLineLayout$Rules;->apply(I)V

    .line 55
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    .line 56
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    iget-object v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$widthConstraint:I

    invoke-static {v1, v2}, Landroid/view/View;->resolveSize(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    iget v3, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$heightConstraint:I

    invoke-static {v2, v3}, Landroid/view/View;->resolveSize(II)I

    move-result v2

    #calls: Lcom/google/android/apps/plus/views/MultiLineLayout;->setMeasuredDimension(II)V
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$200(Lcom/google/android/apps/plus/views/MultiLineLayout;II)V

    .line 59
    return-void
.end method

.method protected layout(Landroid/view/View;IIII)V
    .registers 8
    .parameter "child"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    add-int v1, p2, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedWidth:I

    .line 48
    iget v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    add-int v1, p3, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->mRequestedHeight:I

    .line 49
    return-void
.end method

.method protected measure(Landroid/view/View;)V
    .registers 5
    .parameter "child"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->this$0:Lcom/google/android/apps/plus/views/MultiLineLayout;

    iget v1, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$widthConstraint:I

    iget v2, p0, Lcom/google/android/apps/plus/views/MultiLineLayout$2;->val$heightConstraint:I

    #calls: Lcom/google/android/apps/plus/views/MultiLineLayout;->measureChild(Landroid/view/View;II)V
    invoke-static {v0, p1, v1, v2}, Lcom/google/android/apps/plus/views/MultiLineLayout;->access$100(Lcom/google/android/apps/plus/views/MultiLineLayout;Landroid/view/View;II)V

    .line 42
    return-void
.end method
