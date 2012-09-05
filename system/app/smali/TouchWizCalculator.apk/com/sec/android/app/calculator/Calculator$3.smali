.class Lcom/sec/android/app/calculator/Calculator$3;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private params:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 2
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "arg0"
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 618
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-virtual {v4}, Lcom/sec/android/app/calculator/Calculator;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    .line 619
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_c

    move v4, v5

    .line 665
    :goto_b
    return v4

    .line 622
    :cond_c
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/calculator/EventHandler;->showCursor()V

    .line 624
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const v7, 0x102001f

    if-eq v4, v7, :cond_27

    .line 625
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 627
    :cond_27
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_122

    move v4, v5

    .line 665
    goto :goto_b

    .line 630
    :pswitch_30
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    move v4, v5

    .line 631
    goto :goto_b

    .line 633
    :pswitch_3b
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    move v4, v5

    .line 634
    goto :goto_b

    .line 637
    :pswitch_46
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v1

    .line 638
    .local v1, start:I
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v0

    .line 640
    .local v0, end:I
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/calculator/EventHandler;->setFrontText(Ljava/lang/String;)V

    .line 641
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 642
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    const-string v7, ""

    invoke-interface {v4, v1, v0, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v2, strClip:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$300(Lcom/sec/android/app/calculator/Calculator;)Landroid/text/ClipboardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_10f

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v7, 0x2d

    if-eq v4, v7, :cond_c7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v7, 0xad

    if-eq v4, v7, :cond_c7

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v7, 0x2212

    if-ne v4, v7, :cond_10f

    :cond_c7
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_10f

    .line 649
    const-string v4, "\u00ad"

    invoke-virtual {v2, v5, v6, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    const-string v4, "("

    invoke-virtual {v2, v5, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iput-boolean v6, v4, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    .line 652
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    .line 653
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/sec/android/app/calculator/EventHandler;->setSignParenthesisState(Z)V

    .line 659
    :goto_fb
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/calculator/EventHandler;->goneCursor()V

    .line 660
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iput-boolean v5, v4, Lcom/sec/android/app/calculator/EventHandler;->mEnterEnd:Z

    move v4, v6

    .line 661
    goto/16 :goto_b

    .line 655
    :cond_10f
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    iput-boolean v6, v4, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    .line 656
    iget-object v4, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v4}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/calculator/EventHandler;->insert(Ljava/lang/StringBuilder;)V

    goto :goto_fb

    .line 627
    nop

    :pswitch_data_122
    .packed-switch 0x1020020
        :pswitch_3b
        :pswitch_30
        :pswitch_46
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 608
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->params:Landroid/widget/RelativeLayout$LayoutParams;

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->params:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->params:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I
    invoke-static {v2}, Lcom/sec/android/app/calculator/Calculator;->access$500(Lcom/sec/android/app/calculator/Calculator;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/calculator/EventListener;->clearBlocks()V

    .line 612
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #setter for: Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z
    invoke-static {v0, v3}, Lcom/sec/android/app/calculator/Calculator;->access$402(Lcom/sec/android/app/calculator/Calculator;Z)Z

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->params:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mActionBarHeight:I
    invoke-static {v2}, Lcom/sec/android/app/calculator/Calculator;->access$500(Lcom/sec/android/app/calculator/Calculator;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    .line 597
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mDisplay:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/sec/android/app/calculator/Calculator;->access$000(Lcom/sec/android/app/calculator/Calculator;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/calculator/EventHandler;->getCursor(Landroid/widget/EditText;Z)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;

    move-result-object v0

    iget v0, v0, Lcom/sec/android/app/calculator/EventListener;->mStart:I

    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mListener:Lcom/sec/android/app/calculator/EventListener;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$600(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventListener;

    move-result-object v1

    iget v1, v1, Lcom/sec/android/app/calculator/EventListener;->mEnd:I

    if-eq v0, v1, :cond_6b

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v0}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/calculator/EventHandler;->setSelecting(Z)V

    .line 603
    :cond_6b
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 577
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$300(Lcom/sec/android/app/calculator/Calculator;)Landroid/text/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 578
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->clipboard:Landroid/text/ClipboardManager;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$300(Lcom/sec/android/app/calculator/Calculator;)Landroid/text/ClipboardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, clip:Ljava/lang/String;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[A-Za-z]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 580
    :cond_29
    const v1, 0x1020022

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 581
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #getter for: Lcom/sec/android/app/calculator/Calculator;->mLogic:Lcom/sec/android/app/calculator/EventHandler;
    invoke-static {v1}, Lcom/sec/android/app/calculator/Calculator;->access$100(Lcom/sec/android/app/calculator/Calculator;)Lcom/sec/android/app/calculator/EventHandler;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/calculator/EventHandler;->mPaste:Z

    .line 586
    .end local v0           #clip:Ljava/lang/String;
    :cond_38
    iget-object v1, p0, Lcom/sec/android/app/calculator/Calculator$3;->this$0:Lcom/sec/android/app/calculator/Calculator;

    #setter for: Lcom/sec/android/app/calculator/Calculator;->isActionBarShown:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/calculator/Calculator;->access$402(Lcom/sec/android/app/calculator/Calculator;Z)Z

    .line 587
    return v3
.end method
