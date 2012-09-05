.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 903
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 907
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    .line 908
    .local v0, et:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$902(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Landroid/text/Editable;)Landroid/text/Editable;

    .line 910
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_38

    .line 911
    if-nez p2, :cond_39

    .line 912
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 914
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 946
    :cond_38
    :goto_38
    return-void

    .line 916
    :cond_39
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-ne v1, v2, :cond_ed

    .line 917
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    if-nez v1, :cond_7b

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 922
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_38

    .line 926
    :cond_7b
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-gt v1, v2, :cond_9f

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v1, v2, :cond_ce

    .line 929
    :cond_9f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 931
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 938
    :goto_bd
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1000(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1100(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    goto/16 :goto_38

    .line 935
    :cond_ce
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionStart:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1002(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    .line 936
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mSelectionEnd:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1102(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;I)I

    goto :goto_bd

    .line 942
    :cond_ed
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$7;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mTmpText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_38
.end method
