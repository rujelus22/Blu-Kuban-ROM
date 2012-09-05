.class Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;
.super Ljava/lang/Object;
.source "PurchaseDocumentDetailsViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->requestContentLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$200(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 252
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$200(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 253
    iget-object v0, p0, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder$2;->this$0:Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;

    #getter for: Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->mButtonStrip:Lcom/google/android/finsky/layout/CustomRadioGroup;
    invoke-static {v0}, Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;->access$000(Lcom/google/android/finsky/fragments/PurchaseDocumentDetailsViewBinder;)Lcom/google/android/finsky/layout/CustomRadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/layout/CustomRadioGroup;->invalidate()V

    .line 255
    :cond_1a
    return-void
.end method
