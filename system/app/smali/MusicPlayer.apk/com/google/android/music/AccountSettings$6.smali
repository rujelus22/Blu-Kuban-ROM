.class Lcom/google/android/music/AccountSettings$6;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AccountSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AccountSettings;


# direct methods
.method constructor <init>(Lcom/google/android/music/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 216
    iget-object v2, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v2}, Lcom/google/android/music/AccountSettings;->access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;

    move-result-object v2

    if-nez v2, :cond_9

    .line 233
    :goto_8
    return-void

    .line 221
    :cond_9
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    iget-object v2, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    invoke-direct {v0, v2}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :try_start_10
    iget-object v2, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    iget-object v3, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v3}, Lcom/google/android/music/AccountSettings;->access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    new-instance v4, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;

    iget-object v5, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    iget-object v6, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    #getter for: Lcom/google/android/music/AccountSettings;->mClickedAccount:Lcom/google/android/music/AccountPreference;
    invoke-static {v6}, Lcom/google/android/music/AccountSettings;->access$700(Lcom/google/android/music/AccountSettings;)Lcom/google/android/music/AccountPreference;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/music/AccountSettings$GetAuthTokenCallback;-><init>(Lcom/google/android/music/AccountSettings;Lcom/google/android/music/AccountPreference;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_31
    .catch Landroid/accounts/AuthenticatorException; {:try_start_10 .. :try_end_31} :catch_32

    goto :goto_8

    .line 229
    :catch_32
    move-exception v1

    .line 230
    .local v1, e:Landroid/accounts/AuthenticatorException;
    iget-object v2, p0, Lcom/google/android/music/AccountSettings$6;->this$0:Lcom/google/android/music/AccountSettings;

    const v3, 0x7f0d0003

    const v4, 0x7f0d0004

    #calls: Lcom/google/android/music/AccountSettings;->authenticationFailed(II)V
    invoke-static {v2, v3, v4}, Lcom/google/android/music/AccountSettings;->access$800(Lcom/google/android/music/AccountSettings;II)V

    goto :goto_8
.end method
