.class public Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;
.super Ljava/lang/Object;
.source "AuthenticationHelperEclairAndLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/AuthenticationHelper;


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final context:Landroid/content/Context;

.field private final dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/googlevoice/DependencyResolver;)V
    .registers 4
    .parameter "context"
    .parameter "dependencyResolver"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->context:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 54
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILandroid/os/Bundle;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivitySuccess(Landroid/app/Activity;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;ILjava/lang/Integer;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;)Landroid/accounts/AccountManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;IILandroid/os/Bundle;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V

    return-void
.end method

.method private getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 9
    .parameter "accountName"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 293
    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 294
    .local v0, accounts:[Landroid/accounts/Account;
    move-object v2, v0

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_b
    if-ge v3, v4, :cond_1d

    aget-object v1, v2, v3

    .line 295
    .local v1, anAccount:Landroid/accounts/Account;
    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    if-nez p1, :cond_1a

    .line 300
    .end local v1           #anAccount:Landroid/accounts/Account;
    :cond_19
    :goto_19
    return-object v1

    .line 294
    .restart local v1       #anAccount:Landroid/accounts/Account;
    :cond_1a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 300
    .end local v1           #anAccount:Landroid/accounts/Account;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V
    .registers 7
    .parameter "activity"
    .end parameter
    .parameter "requestCode"
    .end parameter
    .parameter "errorCode"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, replyBundle:Landroid/os/Bundle;
    if-eqz p3, :cond_11

    .line 253
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #replyBundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 254
    .restart local v0       #replyBundle:Landroid/os/Bundle;
    const-string v1, "errorCode"

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 256
    :cond_11
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 257
    return-void
.end method

.method private postActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
    .registers 12
    .parameter "activity"
    .end parameter
    .parameter "requestCode"
    .end parameter
    .parameter "resultCode"
    .end parameter
    .parameter "bundle"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 261
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$4;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/app/Activity;IILandroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method private postActivitySuccess(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .registers 5
    .parameter "activity"
    .end parameter
    .parameter "requestCode"
    .end parameter
    .parameter "bundle"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 246
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V

    .line 247
    return-void
.end method

.method private sendActivityResult(Landroid/app/Activity;IILandroid/os/Bundle;)V
    .registers 9
    .parameter "activity"
    .end parameter
    .parameter "requestCode"
    .end parameter
    .parameter "resultCode"
    .end parameter
    .parameter "bundle"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 271
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v2, v3}, Landroid/app/Activity;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 272
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_19

    .line 274
    :try_start_c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    if-eqz p4, :cond_16

    .line 276
    invoke-virtual {v0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 278
    :cond_16
    invoke-virtual {v1, p1, p3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_19
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_c .. :try_end_19} :catch_1a

    .line 284
    .end local v0           #intent:Landroid/content/Intent;
    :cond_19
    :goto_19
    return-void

    .line 279
    :catch_1a
    move-exception v2

    goto :goto_19
.end method


# virtual methods
.method public getAccount(Landroid/app/Activity;I)V
    .registers 9
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 60
    iget-object v4, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v5, "com.google"

    invoke-virtual {v4, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 61
    .local v1, accounts:[Landroid/accounts/Account;
    array-length v4, v1

    new-array v0, v4, [Ljava/lang/String;

    .line 62
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_c
    array-length v4, v1

    if-ge v3, v4, :cond_18

    .line 63
    aget-object v4, v1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 62
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 65
    :cond_18
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v2, bundle:Landroid/os/Bundle;
    const-string v4, "accounts"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivitySuccess(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public getCredentials(Landroid/app/Activity;ILjava/lang/String;Z)V
    .registers 17
    .parameter "activity"
    .parameter "requestCode"
    .parameter "accountName"
    .parameter "promptUser"

    .prologue
    .line 74
    invoke-direct {p0, p3}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 77
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_f

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivityFailure(Landroid/app/Activity;ILjava/lang/Integer;)V

    .line 121
    :goto_e
    return-void

    .line 83
    :cond_f
    new-instance v5, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$1;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/app/Activity;I)V

    .line 114
    .local v5, accountManagerCallback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    if-eqz p4, :cond_22

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "grandcentral"

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_e

    .line 118
    :cond_22
    iget-object v6, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v8, "grandcentral"

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    move-object v7, v1

    move-object v10, v5

    invoke-virtual/range {v6 .. v11}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_e
.end method

.method public invalidateAuthToken(Landroid/app/Activity;ILjava/lang/String;)V
    .registers 6
    .parameter "activity"
    .parameter "requestCode"
    .parameter "authToken"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->postActivitySuccess(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method public invalidateAuthToken(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 11
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, accountName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v2

    .line 183
    .local v2, account:Landroid/accounts/Account;
    if-nez v2, :cond_14

    .line 184
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 243
    :goto_13
    return-void

    .line 188
    :cond_14
    new-instance v0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/os/Message;ZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$3;->start()V

    goto :goto_13
.end method

.method public loadCredentials(Landroid/os/Message;Landroid/os/Message;Z)V
    .registers 11
    .parameter "success"
    .parameter "failure"
    .parameter "notify"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoicePreferences()Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getAccount()Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, accountName:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->getAccountFromName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 130
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_14

    .line 131
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 169
    :goto_13
    return-void

    .line 134
    :cond_14
    new-instance v4, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater$2;-><init>(Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;Landroid/accounts/Account;Landroid/os/Message;Landroid/os/Message;)V

    .line 167
    .local v4, accountManagerCallback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "grandcentral"

    iget-object v5, p0, Lcom/google/android/apps/googlevoice/system/AuthenticationHelperEclairAndLater;->handler:Landroid/os/Handler;

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_13
.end method
