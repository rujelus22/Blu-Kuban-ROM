.class Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;
.super Ljava/lang/Object;
.source "TutorialSelectAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;


# direct methods
.method constructor <init>(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;)V
    .registers 2
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 142
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$300(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    move-result-object v4

    if-nez v4, :cond_b

    .line 162
    :cond_a
    return-void

    .line 152
    :cond_b
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->onAccountsChanged()V
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    .line 153
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$500(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$600(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 154
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAccounts:[Landroid/accounts/Account;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$100(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)[Landroid/accounts/Account;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_30
    if-ge v2, v3, :cond_a

    aget-object v0, v1, v2

    .line 155
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v5, v5, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$500(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_65

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v5, v5, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$600(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_65

    .line 156
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;
    invoke-static {v4, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$202(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 157
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$300(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->notifyDataSetChanged()V

    .line 158
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->selectAccount()V
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$700(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    .line 154
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_30
.end method
