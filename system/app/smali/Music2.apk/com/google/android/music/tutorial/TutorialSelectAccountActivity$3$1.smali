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
    .line 129
    iput-object p1, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 131
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->onAccountsChanged()V
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$300(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    .line 132
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$500(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    .line 133
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
    :goto_25
    if-ge v2, v3, :cond_5d

    aget-object v0, v1, v2

    .line 134
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v5, v5, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountName:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$400(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_5a

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v5, v5, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mCreatedAccountType:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$500(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_5a

    .line 135
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #setter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mSelectedAccount:Landroid/accounts/Account;
    invoke-static {v4, v0}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$202(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;Landroid/accounts/Account;)Landroid/accounts/Account;

    .line 136
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #getter for: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$600(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$AccountsAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3$1;->this$1:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;

    iget-object v4, v4, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity$3;->this$0:Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;

    #calls: Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->selectAccount()V
    invoke-static {v4}, Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;->access$700(Lcom/google/android/music/tutorial/TutorialSelectAccountActivity;)V

    .line 133
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 141
    .end local v0           #a:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_5d
    return-void
.end method
