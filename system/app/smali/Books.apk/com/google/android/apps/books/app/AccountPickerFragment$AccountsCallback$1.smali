.class Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->run(Landroid/accounts/AccountManagerFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

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
    .line 209
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    iget-object v1, v0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;->this$1:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    iget-object v0, v0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    invoke-static {v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$300(Lcom/google/android/apps/books/app/AccountPickerFragment;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->onAccountClick(Landroid/accounts/Account;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$500(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V

    .line 210
    return-void
.end method
