.class Lcom/arcsoft/widget/QuickView$3;
.super Ljava/lang/Object;
.source "QuickView.java"

# interfaces
.implements Lcom/arcsoft/widget/TouchEventDetector$TouchEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/QuickView;-><init>(Lcom/arcsoft/widget/IBase;Lcom/arcsoft/widget/QuickView$FileListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/QuickView;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/QuickView;)V
    .registers 2
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1}, Lcom/arcsoft/widget/BounceView;->isBouncing()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 197
    :goto_11
    return v0

    .line 195
    :cond_12
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v2, 0x2

    #setter for: Lcom/arcsoft/widget/QuickView;->mTouchMode:I
    invoke-static {v1, v2}, Lcom/arcsoft/widget/QuickView;->access$202(Lcom/arcsoft/widget/QuickView;I)I

    .line 196
    iget-object v1, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    iget-object v1, v1, Lcom/arcsoft/widget/QuickView;->mBounceView:Lcom/arcsoft/widget/BounceView;

    invoke-virtual {v1, v0}, Lcom/arcsoft/widget/BounceView;->hideBounce(I)V

    .line 197
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleMultiTouchBegin(Lcom/arcsoft/widget/TouchEventDetector;)Z
    invoke-static {v0, p1}, Lcom/arcsoft/widget/QuickView;->access$300(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)Z

    move-result v0

    goto :goto_11
.end method

.method public OnMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V
    .registers 4
    .parameter "detector"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/widget/QuickView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/arcsoft/widget/QuickView;->access$202(Lcom/arcsoft/widget/QuickView;I)I

    .line 203
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleMultiTouchEnd(Lcom/arcsoft/widget/TouchEventDetector;)V
    invoke-static {v0, p1}, Lcom/arcsoft/widget/QuickView;->access$400(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)V

    .line 204
    return-void
.end method

.method public OnMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z
    .registers 3
    .parameter "detector"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleMultiTouchNext(Lcom/arcsoft/widget/TouchEventDetector;)Z
    invoke-static {v0, p1}, Lcom/arcsoft/widget/QuickView;->access$500(Lcom/arcsoft/widget/QuickView;Lcom/arcsoft/widget/TouchEventDetector;)Z

    move-result v0

    return v0
.end method

.method public onSingleKeyDown(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v1, 0x1

    #setter for: Lcom/arcsoft/widget/QuickView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/arcsoft/widget/QuickView;->access$202(Lcom/arcsoft/widget/QuickView;I)I

    .line 216
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleSingleKeyDown(II)V
    invoke-static {v0, p1, p2}, Lcom/arcsoft/widget/QuickView;->access$600(Lcom/arcsoft/widget/QuickView;II)V

    .line 217
    return-void
.end method

.method public onSingleKeyMove(II)V
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleSingleKeyMove(II)V
    invoke-static {v0, p1, p2}, Lcom/arcsoft/widget/QuickView;->access$700(Lcom/arcsoft/widget/QuickView;II)V

    .line 222
    return-void
.end method

.method public onSingleKeyUp(II)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    const/4 v1, 0x0

    #setter for: Lcom/arcsoft/widget/QuickView;->mTouchMode:I
    invoke-static {v0, v1}, Lcom/arcsoft/widget/QuickView;->access$202(Lcom/arcsoft/widget/QuickView;I)I

    .line 227
    iget-object v0, p0, Lcom/arcsoft/widget/QuickView$3;->this$0:Lcom/arcsoft/widget/QuickView;

    #calls: Lcom/arcsoft/widget/QuickView;->handleSingleKeyUp(II)V
    invoke-static {v0, p1, p2}, Lcom/arcsoft/widget/QuickView;->access$800(Lcom/arcsoft/widget/QuickView;II)V

    .line 228
    return-void
.end method
