.class public Lcom/google/android/apps/reader/app/GoogleAuthenticator;
.super Lcom/google/android/accounts/DatabaseAuthenticator;
.source "GoogleAuthenticator.java"


# static fields
.field private static final AUTHENTICATOR_ACTIVITY:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Landroid/app/Activity;

    sput-object v0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->AUTHENTICATOR_ACTIVITY:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 40
    const-string v0, "accounts.db"

    sget-object v1, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->AUTHENTICATOR_ACTIVITY:Ljava/lang/Class;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/accounts/DatabaseAuthenticator;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V

    .line 41
    iput-object p1, p0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private static asList([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, array:[Ljava/lang/Object;,"[TT;"
    if-eqz p0, :cond_7

    .line 25
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 27
    :goto_6
    return-object v0

    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method public getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 3
    .parameter "type"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const-string v0, "com.google"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 99
    :try_start_a
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_a .. :try_end_11} :catch_52

    .line 102
    :try_start_11
    invoke-static {p2}, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 103
    const-string v2, "google"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "reader"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_25
    move v1, v4

    .line 106
    :goto_26
    invoke-virtual {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getAccount(Z)Ljava/lang/String;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_45

    .line 108
    new-instance v2, Lcom/google/android/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v1, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0, v2, v1, v3}, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 112
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/accounts/Account;

    const/4 v3, 0x0

    aput-object v2, v1, v3
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_4d

    .line 115
    :try_start_3e
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    move-object v0, v1

    .line 122
    :goto_42
    return-object v0

    :cond_43
    move v1, v3

    .line 103
    goto :goto_26

    .line 115
    :cond_45
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V
    :try_end_48
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_3e .. :try_end_48} :catch_52

    .line 122
    :cond_48
    :goto_48
    invoke-super {p0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    goto :goto_42

    .line 115
    :catchall_4d
    move-exception v1

    :try_start_4e
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
    :try_end_52
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    move-exception v0

    goto :goto_48
.end method

.method public getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "com.google"

    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 63
    :try_start_a
    new-instance v0, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;

    iget-object v1, p0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_a .. :try_end_11} :catch_54

    .line 66
    :try_start_11
    const-string v1, "SID"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const/4 v1, 0x0

    .line 67
    :goto_1a
    const/4 v2, 0x0

    .line 68
    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->getCredentials(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/googleapps/GoogleLoginCredentialsResult;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v3, "authAccount"

    invoke-virtual {v1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "accountType"

    const-string v4, "com.google"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "authtoken"

    invoke-virtual {v1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "intent"

    invoke-virtual {v1}, Lcom/google/android/googleapps/GoogleLoginCredentialsResult;->getCredentialsIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_48
    .catchall {:try_start_11 .. :try_end_48} :catchall_4f

    .line 77
    :try_start_48
    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    move-object v0, v2

    .line 84
    :goto_4c
    return-object v0

    :cond_4d
    move-object v1, p2

    .line 66
    goto :goto_1a

    .line 77
    :catchall_4f
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->close()V

    throw v1
    :try_end_54
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_48 .. :try_end_54} :catch_54

    :catch_54
    move-exception v0

    .line 84
    :cond_55
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4c
.end method

.method public getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "authTokenType"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f0d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/reader/app/GoogleAuthenticator;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/googlelogindist/GoogleLoginServiceBlockingHelper;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/googlelogindist/GoogleLoginServiceNotFoundException; {:try_start_3 .. :try_end_8} :catch_9

    .line 57
    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method
