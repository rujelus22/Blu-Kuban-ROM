.class public abstract Lcom/google/android/accounts/DatabaseAuthenticator;
.super Ljava/lang/Object;
.source "DatabaseAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_ACCOUNT_NAME:Ljava/lang/String; = "account_name"

.field private static final COLUMN_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final COLUMN_AUTHORITY:Ljava/lang/String; = "authority"

.field private static final COLUMN_AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final COLUMN_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field private static final COLUMN_SYNC_AUTOMATICALLY:Ljava/lang/String; = "sync_automatically"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final KEY_DATABASE_AUTHENTICATOR:Ljava/lang/String; = "com.google.android.accounts.DatabaseAuthenticator"

.field private static final LOG_TAG:Ljava/lang/String; = "DatabaseAccountManager"

.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTH_TOKENS:Ljava/lang/String; = "auth_tokens"

.field private static final TABLE_SYNC_AUTOMATICALLY:Ljava/lang/String; = "sync_automatically"


# instance fields
.field private final mAuthenticatorActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDatabaseName:Ljava/lang/String;

.field private mMaxSdkVersion:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .parameter "context"
    .parameter "databaseName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p3, authenticatorActivity:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mMaxSdkVersion:I

    .line 285
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p3, :cond_12

    .line 286
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 288
    :cond_12
    iput-object p1, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    .line 289
    iput-object p2, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mDatabaseName:Ljava/lang/String;

    .line 290
    iput-object p3, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mAuthenticatorActivity:Ljava/lang/Class;

    .line 291
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/accounts/DatabaseAuthenticator;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mDatabaseName:Ljava/lang/String;

    return-object v0
.end method

.method private static addAccount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 182
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "account_type"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz p2, :cond_1a

    .line 185
    const-string v1, "password"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_1a
    const-string v1, "accounts"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 188
    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 195
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 198
    :cond_a
    if-eq v0, v2, :cond_14

    .line 199
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 203
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_45
    return-void
.end method

.method static createDatabaseAuthenticators(Landroid/content/Context;)Ljava/util/Map;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/DatabaseAuthenticator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 225
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.accounts.DatabaseAuthenticator"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 226
    const/16 v5, 0x80

    .line 227
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 228
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 229
    iget-object v5, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 230
    if-eqz v5, :cond_22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 231
    const-string v0, "com.google.android.accounts.DatabaseAuthenticator"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 232
    if-eqz v0, :cond_22

    .line 234
    :try_start_44
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 235
    const-string v5, "account-authenticator"

    invoke-static {v0, v5}, Lcom/google/android/accounts/DatabaseAuthenticator;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 236
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "name"

    invoke-interface {v0, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    const-string v6, "http://schemas.android.com/apk/res/android"

    const-string v7, "accountType"

    invoke-interface {v0, v6, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 238
    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v8, "maxSdkVersion"

    invoke-interface {v0, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-static {p0, v2, v5}, Lcom/google/android/accounts/DatabaseAuthenticator;->newDatabaseAuthenticatorInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v5

    .line 241
    if-eqz v0, :cond_72

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/accounts/DatabaseAuthenticator;->setMaxSdkVersion(I)V

    .line 244
    :cond_72
    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_75} :catch_76

    goto :goto_22

    .line 245
    :catch_76
    move-exception v0

    .line 246
    const-string v5, "DatabaseAccountManager"

    const-string v6, "Failed  to create authenticator"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    .line 251
    :cond_7f
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 252
    const-string v0, "DatabaseAccountManager"

    const-string v2, "No authenticators found"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_8c
    return-object v1
.end method

.method private deleteAccountsNotIn([Lcom/google/android/accounts/Account;)V
    .registers 11
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x3f

    const/16 v6, 0x3d

    .line 722
    .line 724
    array-length v0, p1

    if-eqz v0, :cond_86

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 727
    const-string v2, "NOT ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    const/4 v2, 0x0

    :goto_18
    array-length v3, p1

    if-ge v2, v3, :cond_5e

    .line 729
    aget-object v3, p1, v2

    .line 730
    if-eqz v2, :cond_24

    .line 731
    const-string v4, " OR "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_24
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v4, "account_name"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v4, "account_type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    mul-int/lit8 v4, v2, 0x2

    iget-object v5, v3, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v1, v4

    .line 739
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v3, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v1, v4

    .line 728
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 741
    :cond_5e
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 745
    :goto_6a
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 747
    :try_start_6e
    const-string v3, "sync_automatically"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 748
    const-string v3, "auth_tokens"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 749
    const-string v3, "accounts"

    invoke-virtual {v2, v3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_6e .. :try_end_7d} :catchall_81

    .line 751
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 753
    return-void

    .line 751
    :catchall_81
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_86
    move-object v0, v1

    goto :goto_6a
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;-><init>(Lcom/google/android/accounts/DatabaseAuthenticator;)V

    invoke-virtual {v0}, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 313
    new-instance v0, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;

    invoke-direct {v0, p0}, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;-><init>(Lcom/google/android/accounts/DatabaseAuthenticator;)V

    invoke-virtual {v0}, Lcom/google/android/accounts/DatabaseAuthenticator$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private static hasAccount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)Z
    .registers 15
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 162
    new-array v2, v10, [Ljava/lang/String;

    .line 163
    .local v2, projection:[Ljava/lang/String;
    const-string v0, "%s=? AND %s=?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v9, "account_name"

    aput-object v9, v1, v10

    const-string v9, "account_type"

    aput-object v9, v1, v11

    const-string v9, "auth_token_type"

    aput-object v9, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, selection:Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v10

    iget-object v0, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v11

    .line 168
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 169
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 171
    .local v7, orderBy:Ljava/lang/String;
    const-string v1, "accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 174
    .local v8, c:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3b

    move-result v0

    if-eqz v0, :cond_39

    move v0, v11

    .line 176
    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v0

    :cond_39
    move v0, v10

    .line 174
    goto :goto_35

    .line 176
    :catchall_3b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static newDatabaseAuthenticatorInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;
    .registers 8
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 212
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    :goto_1b
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 216
    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 217
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/accounts/DatabaseAuthenticator;

    return-object p0

    :cond_34
    move-object v0, p2

    goto :goto_1b
.end method


# virtual methods
.method public addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 324
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 325
    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mAuthenticatorActivity:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 326
    const-string v2, "accountType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v2, "accountType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 331
    return-object v0
.end method

.method public addAccountExplicitly(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .parameter "account"
    .parameter "password"
    .parameter "userdata"

    .prologue
    const/4 v2, 0x0

    .line 339
    if-eqz p1, :cond_b

    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    if-nez v1, :cond_d

    :cond_b
    move v1, v2

    .line 360
    :goto_c
    return v1

    .line 345
    :cond_d
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 347
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_35

    .line 349
    :try_start_14
    invoke-static {v0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->hasAccount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;)Z
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_30

    move-result v1

    if-eqz v1, :cond_22

    .line 357
    :try_start_1a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_35

    .line 360
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v2

    goto :goto_c

    .line 352
    :cond_22
    :try_start_22
    invoke-static {v0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->addAccount(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_30

    .line 354
    const/4 v1, 0x1

    .line 357
    :try_start_29
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_35

    .line 360
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_c

    .line 357
    :catchall_30
    move-exception v1

    :try_start_31
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_35

    .line 360
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public confirmCredentials(Lcom/google/android/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 369
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 371
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 372
    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mAuthenticatorActivity:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    const-string v2, "authAccount"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v2, "accountType"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v2, "authAccount"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "accountType"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 380
    return-object v0
.end method

.method public editProperties(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter "accountType"

    .prologue
    .line 389
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 11
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 544
    if-nez p1, :cond_a

    .line 545
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 547
    :cond_a
    const-string v1, "accounts"

    .line 548
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "account_name"

    aput-object v0, v2, v8

    .line 551
    const-string v0, "%s=?"

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "account_type"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 552
    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v8

    .line 555
    const/4 v5, 0x0

    .line 556
    const/4 v6, 0x0

    .line 557
    const/4 v7, 0x0

    .line 558
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 560
    :try_start_29
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_59

    move-result-object v1

    .line 563
    :try_start_2d
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 564
    new-array v3, v2, [Lcom/google/android/accounts/Account;

    .line 565
    const-string v4, "account_name"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move v5, v8

    .line 566
    :goto_3a
    if-ge v5, v2, :cond_4d

    .line 567
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 568
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 569
    new-instance v7, Lcom/google/android/accounts/Account;

    invoke-direct {v7, v6, p1}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v3, v5
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_54

    .line 566
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 573
    :cond_4d
    :try_start_4d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_59

    .line 576
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v3

    .line 573
    :catchall_54
    move-exception v2

    :try_start_55
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 576
    :catchall_59
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;)[Lcom/google/android/accounts/Account;
    .registers 4
    .parameter "type"
    .parameter "features"

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->getAccountsByType(Ljava/lang/String;)[Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 397
    const-string v1, "auth_tokens"

    .line 398
    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "auth_token"

    aput-object v0, v2, v5

    .line 404
    if-eqz p2, :cond_6a

    .line 405
    const-string v0, "%s=? AND %s=? AND %s=?"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "account_name"

    aput-object v4, v3, v5

    const-string v4, "account_type"

    aput-object v4, v3, v6

    const-string v4, "auth_token_type"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    new-array v3, v8, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    move-object v4, v3

    move-object v3, v0

    .line 417
    :goto_30
    const/4 v5, 0x0

    .line 418
    const/4 v6, 0x0

    .line 419
    const/4 v7, 0x0

    .line 420
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 422
    :try_start_37
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_b0

    move-result-object v1

    .line 425
    :try_start_3b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 426
    const-string v3, "authAccount"

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v3, "accountType"

    iget-object v4, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 429
    const-string v3, "auth_token"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 430
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 431
    const-string v4, "authtoken"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_3b .. :try_end_63} :catchall_ab

    .line 441
    :goto_63
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_b0

    .line 444
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v2

    .line 411
    :cond_6a
    const-string v0, "%s=? AND %s=? AND %s IS NULL"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "account_name"

    aput-object v4, v3, v5

    const-string v4, "account_type"

    aput-object v4, v3, v6

    const-string v4, "auth_token_type"

    aput-object v4, v3, v7

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 413
    new-array v3, v7, [Ljava/lang/String;

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    move-object v4, v3

    move-object v3, v0

    goto :goto_30

    .line 433
    :cond_8b
    :try_start_8b
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 434
    iget-object v4, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mAuthenticatorActivity:Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 435
    const-string v4, "authAccount"

    iget-object v5, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    const-string v4, "accountType"

    iget-object v5, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v4, "intent"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_ab

    goto :goto_63

    .line 441
    :catchall_ab
    move-exception v2

    :try_start_ac
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b0

    .line 444
    :catchall_b0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public abstract getAuthTokenLabel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getMaxSdkVersion()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mMaxSdkVersion:I

    return v0
.end method

.method public getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 16
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 679
    if-eqz p1, :cond_c

    iget-object v9, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    if-eqz v9, :cond_c

    iget-object v9, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    if-eqz v9, :cond_c

    if-nez p2, :cond_12

    .line 680
    :cond_c
    new-instance v9, Ljava/lang/NullPointerException;

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 682
    :cond_12
    const-string v1, "sync_automatically"

    .line 683
    .local v1, table:Ljava/lang/String;
    const/4 v9, 0x0

    new-array v2, v9, [Ljava/lang/String;

    .line 684
    .local v2, columns:[Ljava/lang/String;
    const-string v9, "%s=? AND %s=? AND %s=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "account_name"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "account_type"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "authority"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, selection:Ljava/lang/String;
    const/4 v9, 0x3

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v10, v4, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v10, v4, v9

    const/4 v9, 0x2

    aput-object p2, v4, v9

    .line 689
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 690
    .local v5, groupBy:Ljava/lang/String;
    const/4 v6, 0x0

    .line 691
    .local v6, having:Ljava/lang/String;
    const/4 v7, 0x0

    .line 692
    .local v7, orderBy:Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 694
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_46
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_5a

    move-result-object v8

    .line 697
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_55

    move-result v9

    .line 699
    :try_start_4e
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_5a

    .line 702
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v9

    .line 699
    :catchall_55
    move-exception v9

    :try_start_56
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v9
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 702
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_5a
    move-exception v9

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v9
.end method

.method public hasFeatures(Lcom/google/android/accounts/Account;[Ljava/lang/String;)Landroid/os/Bundle;
    .registers 6
    .parameter "account"
    .parameter "features"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/accounts/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 462
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz p2, :cond_a

    array-length v2, p2

    if-nez v2, :cond_12

    :cond_a
    const/4 v2, 0x1

    move v1, v2

    .line 463
    .local v1, featuresEmpty:Z
    :goto_c
    const-string v2, "booleanResult"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    return-object v0

    .line 462
    .end local v1           #featuresEmpty:Z
    :cond_12
    const/4 v2, 0x0

    move v1, v2

    goto :goto_c
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 622
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 623
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 625
    :cond_d
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "account_type"

    aput-object v2, v1, v3

    const-string v2, "auth_token"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 626
    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v3

    aput-object p2, v1, v4

    .line 629
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 631
    :try_start_27
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3e

    .line 633
    :try_start_2a
    const-string v3, "auth_tokens"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 634
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_32
    .catchall {:try_start_2a .. :try_end_32} :catchall_39

    .line 636
    :try_start_32
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3e

    .line 639
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 641
    return-void

    .line 636
    :catchall_39
    move-exception v0

    :try_start_3a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 639
    :catchall_3e
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public onLoginAccountsChanged([Lcom/google/android/accounts/Account;)V
    .registers 2
    .parameter "accounts"

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->deleteAccountsNotIn([Lcom/google/android/accounts/Account;)V

    .line 719
    return-void
.end method

.method public removeAccount(Lcom/google/android/accounts/Account;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 593
    if-eqz p1, :cond_d

    iget-object v0, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 594
    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 596
    :cond_13
    const-string v0, "%s=? AND %s=?"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "account_name"

    aput-object v2, v1, v3

    const-string v2, "account_type"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 598
    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 601
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 603
    :try_start_31
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_4d

    .line 605
    :try_start_34
    const-string v3, "auth_tokens"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 606
    const-string v3, "sync_automatically"

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 607
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_48

    .line 610
    :try_start_41
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_4d

    .line 613
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v4

    .line 610
    :catchall_48
    move-exception v0

    :try_start_49
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_4d

    .line 613
    :catchall_4d
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method public setAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 499
    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    if-eqz v0, :cond_10

    if-nez p3, :cond_16

    .line 500
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 505
    :cond_16
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 506
    const-string v1, "account_name"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v1, "account_type"

    iget-object v2, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    if-eqz p2, :cond_74

    .line 509
    const-string v1, "auth_token_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v1, "%s=? AND %s=? AND %s=?"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "account_name"

    aput-object v3, v2, v4

    const-string v3, "account_type"

    aput-object v3, v2, v5

    const-string v3, "auth_token_type"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    new-array v2, v7, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 522
    :goto_53
    const-string v3, "auth_token"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 526
    :try_start_5c
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_9b

    .line 528
    :try_start_5f
    const-string v4, "auth_tokens"

    invoke-virtual {v3, v4, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 529
    const-string v1, "auth_tokens"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 530
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_96

    .line 533
    :try_start_6d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_9b

    .line 536
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return v5

    .line 516
    :cond_74
    const-string v1, "%s=? AND %s=? AND %s IS NULL"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "account_name"

    aput-object v3, v2, v4

    const-string v3, "account_type"

    aput-object v3, v2, v5

    const-string v3, "auth_token_type"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    new-array v2, v6, [Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v2, v5

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_53

    .line 533
    :catchall_96
    move-exception v0

    :try_start_97
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_9b

    .line 536
    :catchall_9b
    move-exception v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0
.end method

.method setMaxSdkVersion(I)V
    .registers 2
    .parameter "version"

    .prologue
    .line 298
    iput p1, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mMaxSdkVersion:I

    .line 299
    return-void
.end method

.method public setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    if-nez p2, :cond_12

    .line 649
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_12
    invoke-direct {p0}, Lcom/google/android/accounts/DatabaseAuthenticator;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 653
    if-eqz p3, :cond_4a

    :try_start_18
    invoke-virtual {p0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 654
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 655
    const-string v2, "account_name"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v2, "account_type"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string v2, "authority"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const-string v2, "sync_automatically"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 659
    const-string v2, "sync_automatically"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_46
    .catchall {:try_start_18 .. :try_end_46} :catchall_78

    .line 670
    :goto_46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 672
    return-void

    .line 661
    :cond_4a
    :try_start_4a
    const-string v1, "sync_automatically"

    .line 662
    const-string v2, "%s=? AND %s=? AND %s=?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "account_name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "account_type"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "authority"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 664
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 667
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_4a .. :try_end_77} :catchall_78

    goto :goto_46

    .line 670
    :catchall_78
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
.end method

.method public updateCredentials(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 472
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 475
    iget-object v2, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/accounts/DatabaseAuthenticator;->mAuthenticatorActivity:Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 476
    const-string v2, "authAccount"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v2, "accountType"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v2, "authAccount"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v2, "accountType"

    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 483
    return-object v0
.end method
