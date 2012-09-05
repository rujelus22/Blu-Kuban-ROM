.class Lcom/android/contacts/list/PhoneNumberPickerFragment$1;
.super Ljava/lang/Object;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5
    .parameter "queryText"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 314
    :goto_e
    return v0

    .line 306
    :cond_f
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, p1, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 307
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v2

    if-nez v2, :cond_29

    .line 308
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 309
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    :cond_27
    :goto_27
    move v0, v1

    .line 314
    goto :goto_e

    .line 311
    :cond_29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 312
    iget-object v2, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->setSearchMode(Z)V

    goto :goto_27
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 5
    .parameter "queryText"

    .prologue
    .line 322
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    #getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$100(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 323
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_26

    .line 326
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    #getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$100(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 328
    :cond_26
    iget-object v1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    #getter for: Lcom/android/contacts/list/PhoneNumberPickerFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$100(Lcom/android/contacts/list/PhoneNumberPickerFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 330
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2f
    const/4 v1, 0x1

    return v1
.end method
