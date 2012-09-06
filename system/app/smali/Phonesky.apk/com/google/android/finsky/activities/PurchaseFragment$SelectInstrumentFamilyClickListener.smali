.class Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;
.super Ljava/lang/Object;
.source "PurchaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectInstrumentFamilyClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/PurchaseFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/PurchaseFragment;Lcom/google/android/finsky/activities/PurchaseFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;-><init>(Lcom/google/android/finsky/activities/PurchaseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 11
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    .line 183
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2c

    .line 184
    iget-object v7, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    #calls: Lcom/google/android/finsky/activities/PurchaseFragment;->showAddInstrumentScreen(I)V
    invoke-static {v7, v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$500(Lcom/google/android/finsky/activities/PurchaseFragment;I)V

    .line 203
    :cond_2b
    :goto_2b
    return-void

    .line 187
    :cond_2c
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 188
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v6, "select_instr_family_dialog"

    invoke-virtual {v2, v6}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_2b

    .line 192
    const v5, 0x7f07005d

    .line 193
    .local v5, titleResourceId:I
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 194
    .local v0, addTextList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 195
    .local v3, i:Ljava/lang/Integer;
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mInstrumentFactory:Lcom/google/android/finsky/billing/InstrumentFactory;
    invoke-static {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$700(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/InstrumentFactory;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/google/android/finsky/billing/InstrumentFactory;->getAddText(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 197
    .end local v3           #i:Ljava/lang/Integer;
    :cond_6d
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    #getter for: Lcom/google/android/finsky/activities/PurchaseFragment;->mCheckoutPurchase:Lcom/google/android/finsky/billing/CheckoutPurchase;
    invoke-static {v6}, Lcom/google/android/finsky/activities/PurchaseFragment;->access$600(Lcom/google/android/finsky/activities/PurchaseFragment;)Lcom/google/android/finsky/billing/CheckoutPurchase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/billing/CheckoutPurchase;->getEligibleInstrumentFamilies()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v0, v5, v8}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->newInstance(Ljava/util/List;Ljava/util/List;II)Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;

    move-result-object v1

    .line 200
    .local v1, dialog:Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;
    iget-object v6, p0, Lcom/google/android/finsky/activities/PurchaseFragment$SelectInstrumentFamilyClickListener;->this$0:Lcom/google/android/finsky/activities/PurchaseFragment;

    invoke-virtual {v1, v6, v8}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 201
    const-string v6, "select_instr_family_dialog"

    invoke-virtual {v1, v2, v6}, Lcom/google/android/finsky/activities/SelectInstrumentFamilyDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2b
.end method
