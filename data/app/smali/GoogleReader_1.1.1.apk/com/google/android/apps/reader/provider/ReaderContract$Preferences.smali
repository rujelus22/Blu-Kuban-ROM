.class public Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;
.super Ljava/lang/Object;
.source "ReaderContract.java"

# interfaces
.implements Lcom/google/android/apps/reader/provider/ReaderContract$PreferencesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/provider/ReaderContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Preferences"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String;

.field public static final CONTENT_TYPE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1094
    const-string v0, "preference"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->CONTENT_TYPE:Ljava/lang/String;

    .line 1096
    const-string v0, "preference"

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract;->contentItemType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/reader/provider/ReaderContract$Preferences;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1158
    return-void
.end method

.method public static contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;
    .registers 4
    .parameter

    .prologue
    .line 1099
    if-nez p0, :cond_a

    .line 1100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1102
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1103
    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1104
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1105
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .parameter "uri"

    .prologue
    .line 1154
    const-string v0, "stream_id"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1109
    if-nez p0, :cond_a

    .line 1110
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_a
    if-nez p1, :cond_14

    .line 1113
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1116
    const-string v1, "preferences"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1117
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1118
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1119
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamContentUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1123
    if-nez p0, :cond_a

    .line 1124
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :cond_a
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1127
    const-string v1, "stream-preferences"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1128
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1129
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1130
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static streamItemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    if-nez p0, :cond_a

    .line 1135
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_a
    if-nez p2, :cond_14

    .line 1138
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :cond_14
    sget-object v0, Lcom/google/android/apps/reader/provider/ReaderContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1141
    const-string v1, "stream-preferences"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1142
    invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1143
    const-string v1, "account_name"

    iget-object v2, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1144
    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1145
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
