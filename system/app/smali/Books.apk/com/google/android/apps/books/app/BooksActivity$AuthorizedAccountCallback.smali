.class Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;
.super Ljava/lang/Object;
.source "BooksActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/BooksActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthorizedAccountCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/BooksActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v9, 0x5

    const/4 v2, 0x1

    .line 1146
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    sget-object v7, Lcom/google/android/apps/books/app/BooksActivity$AccountState;->IDLE:Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    #setter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccountState:Lcom/google/android/apps/books/app/BooksActivity$AccountState;
    invoke-static {v6, v7}, Lcom/google/android/apps/books/app/BooksActivity;->access$2102(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$AccountState;)Lcom/google/android/apps/books/app/BooksActivity$AccountState;

    .line 1149
    :try_start_9
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1150
    .local v3, bundle:Landroid/os/Bundle;
    new-instance v0, Landroid/accounts/Account;

    const-string v6, "authAccount"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "accountType"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    .local v0, account:Landroid/accounts/Account;
    const-string v6, "authtoken"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 1155
    .local v5, validAccount:Z
    if-eqz v5, :cond_69

    .line 1156
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;
    invoke-static {v6}, Lcom/google/android/apps/books/app/BooksActivity;->access$400(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;

    move-result-object v6

    if-nez v6, :cond_46

    .line 1157
    .local v2, accountWasNull:Z
    :goto_30
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    const/4 v7, 0x1

    const/4 v8, 0x1

    #calls: Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;ZZ)Z
    invoke-static {v6, v0, v7, v8}, Lcom/google/android/apps/books/app/BooksActivity;->access$3000(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;ZZ)Z

    move-result v1

    .line 1158
    .local v1, accountChanged:Z
    if-nez v2, :cond_45

    if-eqz v1, :cond_45

    .line 1162
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v6}, Lcom/google/android/apps/books/app/BooksActivity;->access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V
    :try_end_45
    .catch Landroid/accounts/OperationCanceledException; {:try_start_9 .. :try_end_45} :catch_48
    .catch Landroid/accounts/AuthenticatorException; {:try_start_9 .. :try_end_45} :catch_73
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_45} :catch_95

    .line 1183
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountChanged:Z
    .end local v2           #accountWasNull:Z
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v5           #validAccount:Z
    :cond_45
    :goto_45
    return-void

    .line 1156
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v3       #bundle:Landroid/os/Bundle;
    .restart local v5       #validAccount:Z
    :cond_46
    const/4 v2, 0x0

    goto :goto_30

    .line 1167
    .end local v0           #account:Landroid/accounts/Account;
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v5           #validAccount:Z
    :catch_48
    move-exception v4

    .line 1168
    .local v4, e:Landroid/accounts/OperationCanceledException;
    const-string v6, "BooksActivity"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1169
    const-string v6, "BooksActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem authorizing account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    .end local v4           #e:Landroid/accounts/OperationCanceledException;
    :cond_69
    :goto_69
    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;->this$0:Lcom/google/android/apps/books/app/BooksActivity;

    #getter for: Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;
    invoke-static {v6}, Lcom/google/android/apps/books/app/BooksActivity;->access$3100(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    goto :goto_45

    .line 1171
    :catch_73
    move-exception v4

    .line 1172
    .local v4, e:Landroid/accounts/AuthenticatorException;
    const-string v6, "BooksActivity"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1173
    const-string v6, "BooksActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem authorizing account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 1175
    .end local v4           #e:Landroid/accounts/AuthenticatorException;
    :catch_95
    move-exception v4

    .line 1176
    .local v4, e:Ljava/io/IOException;
    const-string v6, "BooksActivity"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 1177
    const-string v6, "BooksActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "problem authorizing account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69
.end method
