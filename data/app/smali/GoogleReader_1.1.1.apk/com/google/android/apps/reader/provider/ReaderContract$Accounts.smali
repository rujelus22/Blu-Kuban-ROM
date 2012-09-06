.class public Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;
.super Ljava/lang/Object;
.source "ReaderContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Accounts"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field public static final CLEANUP_PRIORITY_MAX:I = 0xa

.field public static final CLEANUP_PRIORITY_MIN:I = 0x1

.field public static final CLEANUP_PRIORITY_NORM:I = 0x5

.field public static final SYNC_EXTRAS_PREFERENCES:Ljava/lang/String; = "preferences"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanup(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;I)Z
    .registers 7
    .parameter "cr"
    .parameter "account"
    .parameter "priority"

    .prologue
    .line 984
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 985
    .local v1, parameters:Landroid/content/ContentValues;
    const-string v2, "priority"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->cleanupUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    .line 987
    .local v0, cleanupUri:Landroid/net/Uri;
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public static cleanupUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 901
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 902
    const-string v1, "cleanup"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 903
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 904
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1075
    if-nez p0, :cond_a

    .line 1076
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "URI is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1078
    :cond_a
    invoke-static {p0}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccountName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, accountName:Ljava/lang/String;
    if-eqz v0, :cond_18

    new-instance v1, Lcom/google/android/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v1, v0, v2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    return-object v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public static getAccountName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter "uri"

    .prologue
    .line 1068
    if-nez p0, :cond_a

    .line 1069
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URI is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1071
    :cond_a
    const-string v0, "account_name"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCleanupPriority(Landroid/content/ContentValues;)I
    .registers 3
    .parameter "parameters"

    .prologue
    .line 991
    const-string v1, "priority"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 992
    .local v0, priority:Ljava/lang/Integer;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_c
    return v1

    :cond_d
    const/4 v1, 0x5

    goto :goto_c
.end method

.method public static getSyncToNetwork(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 1001
    const-string v1, "sync-to-network"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1002
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_e

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static isUnsynchronized(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 1010
    const-string v1, "synchronized"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_10

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static notifyChange(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 858
    if-nez p0, :cond_a

    .line 859
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 861
    :cond_a
    if-nez p1, :cond_14

    .line 862
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 865
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.reader.intent.action.CONTENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 866
    return-void
.end method

.method public static notifyUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 3
    .parameter "account"

    .prologue
    .line 840
    if-nez p0, :cond_a

    .line 841
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static query(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/util/List;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 946
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v6

    .line 951
    const-string v5, "account_name ASC"

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    .line 952
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_40

    .line 955
    :try_start_14
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 956
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, v6

    .line 957
    :goto_1e
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 958
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    new-instance v4, Lcom/google/android/accounts/Account;

    const-string v5, "com.google"

    invoke-direct {v4, v3, v5}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_14 .. :try_end_33} :catchall_3b

    .line 957
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 963
    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 966
    :goto_3a
    return-object v0

    .line 963
    :catchall_3b
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 966
    :cond_40
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3a
.end method

.method public static requestSyncUpload(Landroid/content/Context;Lcom/google/android/accounts/Account;)V
    .registers 7
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    .line 1054
    invoke-static {p0}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v1

    .line 1055
    .local v1, cs:Lcom/google/android/accounts/ContentSyncer;
    const-string v0, "com.google.android.apps.reader"

    .line 1056
    .local v0, authority:Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1059
    .local v2, extras:Landroid/os/Bundle;
    const-string v3, "upload"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1062
    sget-object v3, Lcom/google/android/accounts/ContentSyncer;->SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1064
    invoke-virtual {v1, p1, v0, v2}, Lcom/google/android/accounts/ContentSyncer;->requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1065
    return-void
.end method

.method public static setSyncToNetwork(Landroid/net/Uri;Z)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1038
    if-nez p0, :cond_a

    .line 1039
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "URI is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1041
    :cond_a
    const-string v0, "sync-to-network"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uri already has sync-to-network parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1045
    :cond_2f
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1046
    const-string v1, "sync-to-network"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1047
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static sync(Landroid/content/ContentResolver;Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Z
    .registers 9
    .parameter "cr"
    .parameter "account"
    .parameter "extras"

    .prologue
    .line 917
    if-nez p0, :cond_a

    .line 918
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Content resolver is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 920
    :cond_a
    if-nez p1, :cond_14

    .line 921
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Account is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 923
    :cond_14
    if-nez p2, :cond_1e

    .line 924
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Extras are null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 927
    :cond_1e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v0, parameters:Landroid/content/ContentValues;
    const-string v4, "upload"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 929
    .local v3, upload:Z
    const-string v4, "preferences"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 930
    .local v1, preferences:Z
    const-string v4, "upload"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 931
    const-string v4, "preferences"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 934
    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->syncUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v2

    .line 935
    .local v2, syncUri:Landroid/net/Uri;
    invoke-virtual {p0, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_4d

    const/4 v4, 0x1

    :goto_4c
    return v4

    :cond_4d
    const/4 v4, 0x0

    goto :goto_4c
.end method

.method public static syncUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 882
    if-nez p0, :cond_a

    .line 883
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 885
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 886
    const-string v1, "sync"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 887
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 888
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static unsynchronizedUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 825
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 826
    const-string v1, "accounts"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 827
    const-string v1, "synchronized"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 828
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
