.class Lcom/google/android/gm/preference/GmailPreferenceActivity$1;
.super Ljava/lang/Object;
.source "GmailPreferenceActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/preference/GmailPreferenceActivity;->asyncInitAccounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/preference/GmailPreferenceActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 209
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<[Landroid/accounts/Account;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    .line 210
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    iget-object v2, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    #getter for: Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->access$000(Lcom/google/android/gm/preference/GmailPreferenceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/accounts/Account;

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/google/android/gm/AccountHelper;->mergeAccountLists(Ljava/util/List;[Landroid/accounts/Account;Z)Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;
    invoke-static {v3, v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->access$002(Lcom/google/android/gm/preference/GmailPreferenceActivity;Ljava/util/List;)Ljava/util/List;

    .line 212
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    #getter for: Lcom/google/android/gm/preference/GmailPreferenceActivity;->mAccounts:Ljava/util/List;
    invoke-static {v4}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->access$000(Lcom/google/android/gm/preference/GmailPreferenceActivity;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/google/android/gm/persistence/Persistence;->cacheConfiguredGoogleAccounts(Landroid/content/Context;ZLjava/lang/Iterable;)V
    :try_end_26
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_26} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_2e
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_26} :catch_30

    .line 223
    iget-object v2, p0, Lcom/google/android/gm/preference/GmailPreferenceActivity$1;->this$0:Lcom/google/android/gm/preference/GmailPreferenceActivity;

    invoke-virtual {v2}, Lcom/google/android/gm/preference/GmailPreferenceActivity;->invalidateHeaders()V

    .line 224
    .end local v0           #context:Landroid/content/Context;
    :goto_2b
    return-void

    .line 215
    :catch_2c
    move-exception v1

    .line 216
    .local v1, e:Landroid/accounts/OperationCanceledException;
    goto :goto_2b

    .line 217
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_2e
    move-exception v1

    .line 218
    .local v1, e:Ljava/io/IOException;
    goto :goto_2b

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :catch_30
    move-exception v1

    .line 220
    .local v1, e:Landroid/accounts/AuthenticatorException;
    goto :goto_2b
.end method
