.class Lcom/android/ex/chips/RecipientEditTextView$7;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->showAddress(Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$currentChip:Lcom/android/ex/chips/RecipientChip;

.field final synthetic val$popup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;Landroid/widget/ListPopupWindow;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1812
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/RecipientChip;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 1815
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$currentChip:Lcom/android/ex/chips/RecipientChip;

    #calls: Lcom/android/ex/chips/RecipientEditTextView;->unselectChip(Lcom/android/ex/chips/RecipientChip;)V
    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->access$900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientChip;)V

    .line 1816
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$7;->val$popup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1817
    return-void
.end method
