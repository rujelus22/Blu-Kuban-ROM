.class Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;
.super Ljava/lang/Object;
.source "MPrintSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->onSearch(Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

.field final synthetic val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;Lcom/sec/android/app/mobileprint/MPrintPrinterItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 743
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iput-object p2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 748
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    if-nez v3, :cond_de

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (USB)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    .local v0, device:Ljava/lang/String;
    move-object v1, v0

    .line 757
    .local v1, deviceLog:Ljava/lang/String;
    :goto_1e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 758
    const-string v3, "MobilePrint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPrintSearchActivity.onSearch() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mPort:I

    const/16 v4, 0x277

    if-eq v3, v4, :cond_b8

    .line 760
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 761
    .local v2, spanned:Landroid/text/SpannableStringBuilder;
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mConnectedType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7e

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintCommon;->isTargetNetworkAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 762
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const/high16 v4, -0x1

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 764
    :cond_7e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->m_printIPSort:Ljava/util/Comparator;

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->sort(Ljava/util/Comparator;)V

    .line 769
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterItemList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1500(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->m_printItemIPSort:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 773
    .end local v2           #spanned:Landroid/text/SpannableStringBuilder;
    :cond_b8
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1900(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 774
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mPrinterList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$1800(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12e

    .line 775
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$2000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    :goto_dd
    return-void

    .line 753
    .end local v0           #device:Ljava/lang/String;
    .end local v1           #deviceLog:Ljava/lang/String;
    :cond_de
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    .restart local v0       #device:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mModelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->val$printer:Lcom/sec/android/app/mobileprint/MPrintPrinterItem;

    iget-object v4, v4, Lcom/sec/android/app/mobileprint/MPrintPrinterItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getIpAddressHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #deviceLog:Ljava/lang/String;
    goto/16 :goto_1e

    .line 778
    :cond_12e
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;

    iget-object v3, v3, Lcom/sec/android/app/mobileprint/MPrintSearchActivity$SearchCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->mNoDevicesText:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintSearchActivity;->access$2000(Lcom/sec/android/app/mobileprint/MPrintSearchActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_dd
.end method
