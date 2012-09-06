.class Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;
.super Ljava/lang/Object;
.source "PurchaseDocumentDetailsViewBinder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->initTab(Landroid/view/LayoutInflater;ILjava/lang/String;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

.field final synthetic val$content:Landroid/view/View;

.field final synthetic val$radioButton:Landroid/widget/RadioButton;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;Landroid/view/View;ILandroid/widget/RadioButton;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$content:Landroid/view/View;

    iput p3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$visibility:I

    iput-object p4, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$radioButton:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$content:Landroid/view/View;

    if-eqz p2, :cond_26

    move v1, v2

    :goto_6
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    if-eqz p2, :cond_20

    .line 243
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$100(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Lcom/google/android/finsky/layout/CustomRadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/layout/CustomRadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 244
    .local v0, parent:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 246
    .end local v0           #parent:Landroid/view/ViewGroup;
    :cond_20
    iget-object v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #calls: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->requestContentLayout()V
    invoke-static {v1}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$200(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)V

    .line 247
    return-void

    .line 241
    :cond_26
    iget v1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->val$visibility:I

    goto :goto_6
.end method
