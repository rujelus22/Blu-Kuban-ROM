.class public Lcom/google/android/apps/books/app/AccountPickerFragment;
.super Landroid/app/DialogFragment;
.source "AccountPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$State;,
        Lcom/google/android/apps/books/app/AccountPickerFragment$Arguments;
    }
.end annotation


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mCurrentAccountPosition:I

.field private mListView:Landroid/widget/ListView;

.field private mProgressView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->refreshAccounts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/AccountPickerFragment;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/AccountPickerFragment;Ljava/lang/Exception;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/AccountPickerFragment;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/accounts/Account;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->onAccountClick(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/apps/books/app/AccountPickerFragment;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/accounts/Account;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->selectCurrentAccount()V

    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 139
    const-string v0, "AccountPickerFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 140
    const-string v0, "AccountPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception raised while retrieving accounts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_21
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setAccountInScene(Landroid/accounts/Account;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->dismiss()V

    .line 145
    :cond_2b
    return-void
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "array"
    .parameter "value"

    .prologue
    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 251
    aget-object v1, p0, v0

    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 255
    .end local v0           #i:I
    :goto_c
    return v0

    .line 250
    .restart local v0       #i:I
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 255
    :cond_10
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private onAccountClick(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 184
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_b

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->dismiss()V

    .line 188
    :cond_b
    return-void
.end method

.method private refreshAccounts()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 130
    new-array v1, v5, [Ljava/lang/String;

    .line 131
    .local v1, features:[Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V

    .line 132
    .local v0, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<[Landroid/accounts/Account;>;"
    iget-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.google"

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 135
    invoke-direct {p0, v5}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V

    .line 136
    return-void
.end method

.method private selectCurrentAccount()V
    .registers 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 193
    return-void
.end method

.method private setAccountInScene(Landroid/accounts/Account;)Z
    .registers 4
    .parameter "account"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v0

    .line 169
    .local v0, scene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-interface {v0, p1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->finishedPickingAccount(Landroid/accounts/Account;)V

    .line 170
    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->isActive()Z

    move-result v1

    return v1
.end method

.method private setState(I)V
    .registers 6
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 149
    packed-switch p1, :pswitch_data_2c

    .line 156
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 159
    const v0, 0x7f0e0052

    .line 161
    .local v0, titleId:I
    :goto_19
    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setTitle(I)V

    .line 162
    return-void

    .line 151
    .end local v0           #titleId:I
    :pswitch_1d
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 153
    const v0, 0x7f0e0053

    .line 154
    .restart local v0       #titleId:I
    goto :goto_19

    .line 149
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1d
    .end packed-switch
.end method

.method private setTitle(I)V
    .registers 4
    .parameter "titleId"

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 175
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_d

    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    :cond_d
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 113
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/google/android/apps/books/app/AccountPickerFragment$Arguments;->getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    .line 116
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mAccountManager:Landroid/accounts/AccountManager;

    .line 117
    invoke-direct {p0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->refreshAccounts()V

    .line 118
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 84
    .local v1, result:Landroid/view/ViewGroup;
    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;

    .line 85
    const v2, 0x7f0f0035

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;

    .line 87
    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 88
    .local v0, addAccountButton:Landroid/widget/Button;
    new-instance v2, Lcom/google/android/apps/books/app/AccountPickerFragment$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/app/AccountPickerFragment$1;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    .line 122
    const-string v0, "AccountPickerFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 123
    const-string v0, "AccountPickerFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss() with current account = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_23
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment;->setAccountInScene(Landroid/accounts/Account;)Z

    .line 127
    return-void
.end method
