.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 548
    if-eqz p2, :cond_1f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->isOptionMenuOpen:Z
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$0(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 549
    instance-of v0, p1, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1f

    move-object v0, p1

    .line 550
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_move:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$1(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    .line 562
    .end local p1
    :cond_1f
    :goto_1f
    return-void

    .restart local p1
    :cond_20
    move-object v0, p1

    .line 551
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_rotate:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$3(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x2

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_32
    move-object v0, p1

    .line 552
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_crop:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$4(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_44

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x3

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_44
    move-object v0, p1

    .line 553
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_adddel:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$5(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_56

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_56
    move-object v0, p1

    .line 554
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_brushsize:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$6(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_68

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x5

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_68
    move-object v0, p1

    .line 555
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_undo:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$7(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x6

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_7a
    move-object v0, p1

    .line 556
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_redo:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$8(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_8c

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x7

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_8c
    move-object v0, p1

    .line 557
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_color:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$9(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_9f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v1, 0x8

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto :goto_1f

    :cond_9f
    move-object v0, p1

    .line 558
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_filter:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$10(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v1

    if-ne v0, v1, :cond_b3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v1, 0x9

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_1f

    .line 559
    :cond_b3
    check-cast p1, Landroid/widget/ImageButton;

    .end local p1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bt_tool:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$11(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/widget/ImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$1;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/16 v1, 0xa

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->currentlyFocusedBtn:I
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$2(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;I)V

    goto/16 :goto_1f
.end method
