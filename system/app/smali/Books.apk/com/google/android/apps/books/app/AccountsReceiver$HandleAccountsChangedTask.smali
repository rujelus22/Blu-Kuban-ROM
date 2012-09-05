.class Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;
.super Landroid/os/AsyncTask;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleAccountsChangedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/android/apps/books/app/AccountsReceiver;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/AccountsReceiver;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "context"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->this$0:Lcom/google/android/apps/books/app/AccountsReceiver;

    .line 66
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 58
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 17
    .parameter "params"

    .prologue
    .line 73
    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 74
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v12, "com.google"

    invoke-virtual {v2, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v11

    .line 77
    .local v11, systemAccounts:[Landroid/accounts/Account;
    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/google/android/apps/books/provider/BooksProvider;->getAllAccountNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v9

    .line 79
    .local v9, providerAccountNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v9, :cond_39

    .line 80
    move-object v3, v11

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_17
    if-ge v4, v5, :cond_23

    aget-object v0, v3, v4

    .line 81
    .local v0, account:Landroid/accounts/Account;
    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 85
    .end local v0           #account:Landroid/accounts/Account;
    :cond_23
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_39

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, accountToRemove:Ljava/lang/String;
    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/google/android/apps/books/provider/BooksProvider;->removeAccount(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_27

    .line 91
    .end local v1           #accountToRemove:Ljava/lang/String;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #len$:I
    :cond_39
    new-instance v8, Lcom/google/android/apps/books/preference/LocalPreferences;

    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-direct {v8, v12}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 92
    .local v8, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v8}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    .line 93
    .local v10, selectedAccount:Landroid/accounts/Account;
    if-eqz v10, :cond_50

    #calls: Lcom/google/android/apps/books/app/AccountsReceiver;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v11, v10}, Lcom/google/android/apps/books/app/AccountsReceiver;->access$000([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    .line 94
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 98
    :cond_50
    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/google/android/apps/books/app/BooksApplication;->getAccountsWithPlusOneData(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, plusOneAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object v3, v11

    .restart local v3       #arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_59
    if-ge v4, v5, :cond_65

    aget-object v0, v3, v4

    .line 101
    .restart local v0       #account:Landroid/accounts/Account;
    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    .line 106
    .end local v0           #account:Landroid/accounts/Account;
    :cond_65
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .restart local v1       #accountToRemove:Ljava/lang/String;
    iget-object v12, p0, Lcom/google/android/apps/books/app/AccountsReceiver$HandleAccountsChangedTask;->mContext:Landroid/content/Context;

    invoke-static {v12, v1}, Lcom/google/android/apps/books/app/BooksApplication;->getPlusOnePathForAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 109
    .local v6, path:Ljava/io/File;
    const-string v12, "AccountsReceiver"

    const/4 v13, 0x3

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_aa

    .line 110
    const-string v12, "AccountsReceiver"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removing +1 data for account "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " at path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_aa
    invoke-static {v6}, Lcom/google/android/apps/books/util/FileUtils;->recursiveDelete(Ljava/io/File;)Z

    goto :goto_69

    .line 116
    .end local v1           #accountToRemove:Ljava/lang/String;
    .end local v6           #path:Ljava/io/File;
    :cond_ae
    const/4 v12, 0x0

    return-object v12
.end method
