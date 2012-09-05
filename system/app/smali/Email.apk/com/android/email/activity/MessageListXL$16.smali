.class Lcom/android/email/activity/MessageListXL$16;
.super Ljava/lang/Object;
.source "MessageListXL.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageListXL;->setupSearchIndexView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 3617
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x10001

    const/16 v5, 0x8

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3620
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchAdapter:Lcom/android/email/activity/SearchTypeSelectorAdapter;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4500(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/SearchTypeSelectorAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/email/activity/SearchTypeSelectorAdapter;->setCurrentPosition(I)V

    .line 3621
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1900()I

    move-result v0

    if-ne p3, v0, :cond_5c

    .line 3622
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_43

    .line 3623
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3624
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$4600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 3633
    :cond_43
    :goto_43
    packed-switch p3, :pswitch_data_184

    .line 3688
    :goto_46
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1900()I

    move-result v0

    if-eq p3, v0, :cond_5b

    .line 3689
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mFragmentManager:Lcom/android/email/activity/MessageListXLFragmentManager;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$600(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/MessageListXLFragmentManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageListXLFragmentManager;->onSortBy(I)V

    .line 3690
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #calls: Lcom/android/email/activity/MessageListXL;->updateOrderManager()V
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4300(Lcom/android/email/activity/MessageListXL;)V

    .line 3692
    :cond_5b
    return-void

    .line 3627
    :cond_5c
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1900()I

    move-result v0

    if-eq v0, v4, :cond_64

    if-ne p3, v4, :cond_6f

    .line 3628
    :cond_64
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3630
    :cond_6f
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListXL;->onResultSearchRequested()Z

    goto :goto_43

    .line 3635
    :pswitch_75
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_a6

    .line 3636
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3637
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3638
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3641
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3643
    :cond_a6
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3644
    invoke-static {v3}, Lcom/android/email/activity/MessageListXL;->access$1902(I)I

    goto :goto_46

    .line 3647
    :pswitch_b3
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_e4

    .line 3648
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3649
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3650
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3652
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3653
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3655
    :cond_e4
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3656
    invoke-static {v2}, Lcom/android/email/activity/MessageListXL;->access$1902(I)I

    goto/16 :goto_46

    .line 3659
    :pswitch_f2
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mAnimationStarted:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4700(Lcom/android/email/activity/MessageListXL;)Z

    move-result v0

    if-nez v0, :cond_123

    .line 3660
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3661
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3662
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 3664
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3665
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v2}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3667
    :cond_123
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3668
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1902(I)I

    goto/16 :goto_46

    .line 3671
    :pswitch_132
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 3672
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3673
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3674
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryDummyText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4800(Lcom/android/email/activity/MessageListXL;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3675
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mQueryTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$2000(Lcom/android/email/activity/MessageListXL;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 3676
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    #getter for: Lcom/android/email/activity/MessageListXL;->mSearchViewSpinner:Lcom/android/email/activity/CustomSpinner;
    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$4900(Lcom/android/email/activity/MessageListXL;)Lcom/android/email/activity/CustomSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/activity/CustomSpinner;->requestFocus()Z

    .line 3677
    invoke-static {}, Lcom/android/email/activity/MessageListXL;->access$1900()I

    move-result v0

    if-eq p3, v0, :cond_173

    .line 3679
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v4}, Lcom/android/email/activity/MessageListXL;->showDialog2(I)V

    .line 3680
    :cond_173
    iget-object v0, p0, Lcom/android/email/activity/MessageListXL$16;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-virtual {v0, v3}, Lcom/android/email/activity/MessageListXL;->setImeVisibility(Z)V

    .line 3681
    invoke-static {v4}, Lcom/android/email/activity/MessageListXL;->access$1902(I)I

    goto/16 :goto_46

    .line 3684
    :pswitch_17d
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/email/activity/MessageListXL;->access$1902(I)I

    goto/16 :goto_46

    .line 3633
    nop

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_75
        :pswitch_b3
        :pswitch_f2
        :pswitch_132
        :pswitch_17d
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3696
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
