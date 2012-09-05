.class Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;
.super Ljava/lang/Object;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/AccountPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<[",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<[",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 201
    .local v0, accounts:[Landroid/accounts/Account;
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mProgressView:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$200(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    .local v1, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    new-instance v4, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    iget-object v5, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    invoke-direct {v4, v5, v1, v0}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment;Landroid/content/Context;[Landroid/accounts/Account;)V

    #setter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    invoke-static {v3, v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$302(Lcom/google/android/apps/books/app/AccountPickerFragment;Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    .line 204
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$400(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mAdapter:Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;
    invoke-static {v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$300(Lcom/google/android/apps/books/app/AccountPickerFragment;)Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mListView:Landroid/widget/ListView;
    invoke-static {v3}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$400(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback$1;-><init>(Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    iget-object v4, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #getter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccount:Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$700(Lcom/google/android/apps/books/app/AccountPickerFragment;)Landroid/accounts/Account;

    move-result-object v4

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    invoke-static {v0, v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$800([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    #setter for: Lcom/google/android/apps/books/app/AccountPickerFragment;->mCurrentAccountPosition:I
    invoke-static {v3, v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$602(Lcom/google/android/apps/books/app/AccountPickerFragment;I)I

    .line 214
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->selectCurrentAccount()V
    invoke-static {v3}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$900(Lcom/google/android/apps/books/app/AccountPickerFragment;)V

    .line 216
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    const/4 v4, 0x1

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->setState(I)V
    invoke-static {v3, v4}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1000(Lcom/google/android/apps/books/app/AccountPickerFragment;I)V
    :try_end_53
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_53} :catch_54
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_53} :catch_5b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_62

    .line 225
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #context:Landroid/content/Context;
    :goto_53
    return-void

    .line 218
    :catch_54
    move-exception v2

    .line 219
    .local v2, e:Landroid/accounts/OperationCanceledException;
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->handleError(Ljava/lang/Exception;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1100(Lcom/google/android/apps/books/app/AccountPickerFragment;Ljava/lang/Exception;)V

    goto :goto_53

    .line 220
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_5b
    move-exception v2

    .line 221
    .local v2, e:Landroid/accounts/AuthenticatorException;
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->handleError(Ljava/lang/Exception;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1100(Lcom/google/android/apps/books/app/AccountPickerFragment;Ljava/lang/Exception;)V

    goto :goto_53

    .line 222
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_62
    move-exception v2

    .line 223
    .local v2, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/google/android/apps/books/app/AccountPickerFragment$AccountsCallback;->this$0:Lcom/google/android/apps/books/app/AccountPickerFragment;

    #calls: Lcom/google/android/apps/books/app/AccountPickerFragment;->handleError(Ljava/lang/Exception;)V
    invoke-static {v3, v2}, Lcom/google/android/apps/books/app/AccountPickerFragment;->access$1100(Lcom/google/android/apps/books/app/AccountPickerFragment;Ljava/lang/Exception;)V

    goto :goto_53
.end method
