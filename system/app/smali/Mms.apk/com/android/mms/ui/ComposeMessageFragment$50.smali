.class Lcom/android/mms/ui/ComposeMessageFragment$50;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 5590
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 15
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    const/4 v3, 0x0

    const v7, 0x7f09017d

    const/4 v6, 0x0

    .line 5593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5595
    .local v0, expectedStr:Ljava/lang/StringBuilder;
    invoke-interface {p4, v6, p5}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5596
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5597
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-interface {p4, p5, v4}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5599
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v4

    if-nez v4, :cond_6a

    .line 5601
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getMessageCalculateParam(Ljava/lang/CharSequence;)[I

    move-result-object v2

    .line 5603
    .local v2, params:[I
    aget v4, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v4, v5, :cond_5b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsToMmsThreshold()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 5604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 5606
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I
    invoke-static {v3, v0, v6, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I

    move-result v1

    .line 5608
    .local v1, maxLength:I
    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5633
    .end local v1           #maxLength:I
    .end local v2           #params:[I
    :cond_5b
    :goto_5b
    return-object v3

    .line 5612
    .restart local v2       #params:[I
    :cond_5c
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showEditTextMaxCharExceedToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    .line 5613
    const-string v3, ""

    goto :goto_5b

    .line 5621
    .end local v2           #params:[I
    :cond_6a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_5b

    .line 5622
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 5624
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->calculateMaxTextLength(Ljava/lang/CharSequence;II)I
    invoke-static {v3, v0, v6, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/CharSequence;II)I

    move-result v1

    .line 5626
    .restart local v1       #maxLength:I
    invoke-interface {p1, v6, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_5b

    .line 5629
    .end local v1           #maxLength:I
    :cond_8b
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$50;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6800(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->showEditTextMaxCharExceedToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)V

    .line 5630
    const-string v3, ""

    goto :goto_5b
.end method