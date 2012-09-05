.class public Lcom/google/android/apps/books/util/SessionKeyFactory;
.super Ljava/lang/Object;
.source "SessionKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/util/SessionKeyFactory$1;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$AccountSessionKeyQuery;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;,
        Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_DECRYPT_RETRIES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SessionKeyFactory"


# instance fields
.field private final mAppInfo:[B

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 66
    const-string v0, "SessionKeyFactory"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/google/android/apps/books/net/ResponseGetter;[B)V
    .registers 6
    .parameter "resolver"
    .parameter "responseGetter"
    .parameter "appInfo"

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const-string v0, "missing resolver"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    .line 94
    const-string v0, "missing responseGetter"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/ResponseGetter;

    iput-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    .line 96
    array-length v0, p3

    if-lez v0, :cond_23

    const/4 v0, 0x1

    :goto_1b
    const-string v1, "valid appInfo required"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 97
    iput-object p3, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    .line 98
    return-void

    .line 96
    :cond_23
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private buildSessionKeyUpgradeRequest(Landroid/accounts/Account;Ljava/util/List;)[B
    .registers 7
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 555
    .local p2, versionToInfoMap:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v2

    .line 556
    .local v2, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<[B>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    .line 557
    .local v1, info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    sget-object v3, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 558
    iget-object v3, v1, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->encryptedK_sClause:[B

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 560
    .end local v1           #info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    :cond_1f
    invoke-static {v2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers(Ljava/util/Collection;)[B

    move-result-object v3

    return-object v3
.end method

.method private decryptWithSessionKeyMaybeUpgradeHelper(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/io/InputStream;
    .registers 17
    .parameter "input"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .parameter "account"
    .parameter "volumeId"
    .parameter "retriesRemaining"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyNoUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_3
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 150
    :goto_4
    return-object v0

    .line 128
    :catch_5
    move-exception v7

    .line 131
    .local v7, e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    if-gtz p6, :cond_10

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Problem during K_s handshake"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 141
    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v9, keysToUpgrade:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v9, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :try_start_18
    invoke-virtual {p0, p4, v9}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    :try_end_1b
    .catch Ljava/security/GeneralSecurityException; {:try_start_18 .. :try_end_1b} :catch_28

    .line 150
    add-int/lit8 v6, p6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgradeHelper(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_4

    .line 145
    :catch_28
    move-exception v8

    .line 148
    .local v8, eSecurity:Ljava/security/GeneralSecurityException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Problem during K_s handshake"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decryptWithSessionKeyNoUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 12
    .parameter "input"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 169
    sget-object v2, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-string v1, "missing session key details"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 174
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 175
    .local v8, expectedK_sVersion:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 177
    .local v7, encryptedK_sClause:[B
    sget-boolean v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v0, :cond_3a

    .line 178
    const-string v0, "SessionKeyFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrypting using K_sVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_3a
    invoke-static {p0, v7, v8}, Lcom/google/android/apps/books/util/EncryptionUtils;->D_s(Ljava/io/InputStream;[BLjava/lang/String;)Ljava/io/InputStream;
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_42

    move-result-object v0

    .line 183
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    .end local v7           #encryptedK_sClause:[B
    .end local v8           #expectedK_sVersion:Ljava/lang/String;
    :catchall_42
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .registers 8
    .parameter "encryptedK_sClause"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 442
    if-eqz p2, :cond_77

    const/4 v1, 0x1

    :goto_3
    const-string v2, "non-null expectedNonce required"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v0

    .line 446
    .local v0, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    iget-object v1, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-static {v1, p2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->buffersEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_79

    .line 447
    const-string v1, "SessionKeyFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractAndVerifyMetadata() expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readLongString([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actual: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-static {v3}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readLongString([B)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v1, Lorg/apache/http/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server returned unexpected nonce \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->nonce:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (expecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    .end local v0           #meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :cond_77
    const/4 v1, 0x0

    goto :goto_3

    .line 455
    .restart local v0       #meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :cond_79
    return-object v0
.end method

.method private extractMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    .registers 6
    .parameter "encryptedK_sClause"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 426
    .local v1, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :try_start_1
    invoke-static {p1}, Lcom/google/android/apps/books/util/EncryptionUtils;->extractK_sMetadata([B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    :try_end_4
    .catch Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException; {:try_start_1 .. :try_end_4} :catch_6

    move-result-object v1

    .line 432
    return-object v1

    .line 427
    :catch_6
    move-exception v0

    .line 429
    .local v0, e:Lcom/google/android/apps/books/util/EncryptionUtils$VersionMismatchException;
    new-instance v2, Lorg/apache/http/client/ClientProtocolException;

    const-string v3, "Problem extracting K_s metadata from server repsonse"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findAccount(Landroid/accounts/Account;)Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    .registers 12
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 264
    const-string v8, "account_name=? "

    .line 265
    .local v8, selection:Ljava/lang/String;
    new-array v4, v9, [Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 267
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountSessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "account_name=? "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 270
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_17
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v9, :cond_3e

    const-string v0, "SessionKeyFactory"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 272
    const-string v0, "SessionKeyFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">1 session key rows for account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_3e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_81

    .line 275
    new-instance v6, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;-><init>(Lcom/google/android/apps/books/util/SessionKeyFactory$1;)V

    .line 277
    .local v6, accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->accountId:J

    .line 278
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->sessionKeyVersion:Ljava/lang/String;

    .line 280
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->sessionKeyBlob:[B

    .line 282
    sget-boolean v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v0, :cond_7d

    .line 283
    const-string v0, "SessionKeyFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAccount() found valid _id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v6, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_17 .. :try_end_7d} :catchall_86

    .line 288
    :cond_7d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 290
    .end local v6           #accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    :goto_80
    return-object v6

    .line 288
    :cond_81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v6, v5

    .line 290
    goto :goto_80

    .line 288
    :catchall_86
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSessionKeyForPage(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "resolver"
    .parameter "pageUri"

    .prologue
    .line 653
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 654
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_9
.end method

.method public static getSessionKeyForResource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "resolver"
    .parameter "resourceUri"

    .prologue
    .line 648
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 649
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_9
.end method

.method public static getSessionKeyForSection(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter "resolver"
    .parameter "sectionUri"

    .prologue
    .line 643
    const-string v1, "session_key_id"

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/books/util/ProviderUtils;->queryForLong(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 644
    .local v0, id:Ljava/lang/Long;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_9
.end method

.method private declared-synchronized getSessionKeyInfo(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;
    .registers 14
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    .local p2, keysToUpgrade:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v10

    .line 521
    .local v10, list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 524
    .local v1, sessionKeyUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_55

    move-result-object v7

    .line 527
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-string v2, "missing session key details"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 529
    new-instance v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    invoke-direct {v9, p0}, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;-><init>(Lcom/google/android/apps/books/util/SessionKeyFactory;)V

    .line 531
    .local v9, info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    .line 533
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    .line 535
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->encryptedK_sClause:[B

    .line 536
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 537
    .local v6, K_sVersion:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_58

    .line 540
    .end local v6           #K_sVersion:Ljava/lang/String;
    .end local v9           #info:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    :cond_51
    :try_start_51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_9

    .line 520
    .end local v1           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 540
    .restart local v1       #sessionKeyUri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #list:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catchall_58
    move-exception v0

    :try_start_59
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_55

    .line 543
    .end local v1           #sessionKeyUri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5d
    monitor-exit p0

    return-object v10
.end method

.method private parseNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;Lorg/apache/http/HttpEntity;[B)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .registers 15
    .parameter "account"
    .parameter "volumeId"
    .parameter "entity"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 369
    invoke-static {p3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v1

    .line 371
    .local v1, encryptedK_sClause:[B
    invoke-direct {p0, v1, p4}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v3

    .line 374
    .local v3, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v6, values:Landroid/content/ContentValues;
    if-nez p2, :cond_65

    .line 378
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findAccount(Landroid/accounts/Account;)Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;

    move-result-object v0

    .line 379
    .local v0, accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    if-nez v0, :cond_52

    .line 380
    const/4 v2, 0x1

    .line 381
    .local v2, insert:Z
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 382
    .local v5, uri:Landroid/net/Uri;
    sget-boolean v7, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v7, :cond_24

    .line 383
    const-string v7, "SessionKeyFactory"

    const-string v8, "parseNewSessionKey() inserting new row"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_24
    :goto_24
    const-string v7, "account_name"

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v7, "session_key_version"

    iget-object v8, v3, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v7, "root_key_version"

    iget v8, v3, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string v7, "session_key_blob"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 409
    .end local v0           #accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    :goto_42
    if-eqz v2, :cond_8c

    .line 410
    iget-object v7, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 415
    .local v4, resultUri:Landroid/net/Uri;
    :goto_4a
    new-instance v7, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    iget-object v8, v3, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-direct {v7, v8, v4, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V

    return-object v7

    .line 386
    .end local v2           #insert:Z
    .end local v4           #resultUri:Landroid/net/Uri;
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v0       #accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    :cond_52
    const/4 v2, 0x0

    .line 387
    .restart local v2       #insert:Z
    iget-wide v7, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->accountId:J

    invoke-static {v7, v8}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->buildAccountUri(J)Landroid/net/Uri;

    move-result-object v5

    .line 388
    .restart local v5       #uri:Landroid/net/Uri;
    sget-boolean v7, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v7, :cond_24

    .line 389
    const-string v7, "SessionKeyFactory"

    const-string v8, "parseNewSessionKey() updating existing row"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 397
    .end local v0           #accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    .end local v2           #insert:Z
    .end local v5           #uri:Landroid/net/Uri;
    :cond_65
    const-string v7, "account_name"

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v7, "volume_id"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v7, "session_key_version"

    iget-object v8, v3, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v7, "root_key_version"

    iget v8, v3, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    const-string v7, "session_key_blob"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 404
    const/4 v2, 0x1

    .line 405
    .restart local v2       #insert:Z
    sget-object v5, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    .restart local v5       #uri:Landroid/net/Uri;
    goto :goto_42

    .line 412
    :cond_8c
    iget-object v7, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v6, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 413
    move-object v4, v5

    .restart local v4       #resultUri:Landroid/net/Uri;
    goto :goto_4a
.end method

.method private parseUpgradeSessionKeyResponse(Landroid/accounts/Account;Ljava/util/List;Lorg/apache/http/HttpEntity;[B)Ljava/util/List;
    .registers 22
    .parameter "account"
    .parameter
    .parameter "entity"
    .parameter "expectedNonce"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            "[B)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 566
    .local p2, upgradeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-static/range {p3 .. p3}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v3

    .line 567
    .local v3, encryptedK_sClauses:[B
    sget-object v13, Lcom/google/android/apps/books/util/EncryptionUtils;->UPGRADE_SEPARATOR:[B

    invoke-static {v3, v13}, Lcom/google/android/apps/books/util/ByteArrayUtils;->splitBufferUsing([B[B)Ljava/util/ArrayList;

    move-result-object v2

    .line 569
    .local v2, clauses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v11

    .line 573
    .local v11, upgradedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-eq v13, v14, :cond_47

    .line 574
    const-string v13, "SessionKeyFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected number of clauses key upgrade: expected "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " but got "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_46
    return-object v11

    .line 583
    :cond_47
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v5

    .line 587
    .local v5, meta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_57
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_46

    .line 589
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;

    .line 590
    .local v8, upgradeInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;
    iget-wide v13, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    invoke-static {v13, v14}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 591
    .local v7, sessionKeyUri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 592
    .local v10, upgradedKeyBlob:[B
    array-length v13, v10

    if-nez v13, :cond_be

    .line 596
    const-string v13, "SessionKeyFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OFE dropped a request!  volumeId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v13, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v1, v13}, Lcom/google/android/apps/books/util/SessionKeyFactory;->removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_a2

    .line 587
    :cond_9f
    :goto_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    .line 607
    :cond_a2
    new-instance v13, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to upgrade session key for _ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v15, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 612
    :cond_be
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v10, v1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->extractAndVerifyMetadata([B[B)Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;

    move-result-object v9

    .line 615
    .local v9, upgradeInfoMeta:Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 617
    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "_id"

    iget-wide v14, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->sessionKeyId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string v13, "account_name"

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string v13, "volume_id"

    iget-object v14, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v13, "session_key_version"

    iget-object v14, v9, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_sVersion:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v13, "root_key_version"

    iget v14, v5, Lcom/google/android/apps/books/util/EncryptionUtils$K_sMetadata;->K_rVersion:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 627
    const-string v13, "session_key_blob"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 628
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v7, v12, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 629
    .local v6, rowsUpdated:I
    const/4 v13, 0x1

    if-eq v6, v13, :cond_130

    .line 630
    const-string v13, "SessionKeyFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated an unexpected number of rows: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " for volume "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f

    .line 633
    :cond_130
    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    const-string v13, "SessionKeyFactory"

    const/4 v14, 0x3

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_9f

    .line 635
    const-string v13, "SessionKeyFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updated session key for volumeId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;->volumeId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9f
.end method

.method private requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .registers 20
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonce()J

    move-result-wide v5

    .line 330
    .local v5, nonce:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v11, v13

    .line 332
    .local v11, timestamp:I
    invoke-static {v5, v6}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeLongString(J)[B

    move-result-object v7

    .line 333
    .local v7, nonceBytes:[B
    invoke-static {v11}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v12

    .line 335
    .local v12, timestampBytes:[B
    const/4 v4, 0x0

    .line 338
    .local v4, entity:Lorg/apache/http/HttpEntity;
    const/4 v13, 0x5

    :try_start_16
    new-array v13, v13, [[B

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    sget-object v15, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v12, v13, v14

    const/4 v14, 0x3

    sget-object v15, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v15, v13, v14

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    aput-object v15, v13, v14

    invoke-static {v13}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/apps/books/util/EncryptionUtils;->E_r([B)[B

    move-result-object v8

    .line 341
    .local v8, requestBody:[B
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "books"

    invoke-virtual {v13, v14}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "cp_activate"

    invoke-static {v8}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 344
    .local v9, requestUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [I

    move-object/from16 v0, p1

    invoke-virtual {v13, v14, v0, v15}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 345
    .local v10, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/google/android/apps/books/util/SessionKeyFactory;->parseNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;Lorg/apache/http/HttpEntity;[B)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    :try_end_71
    .catchall {:try_start_16 .. :try_end_71} :catchall_96
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_16 .. :try_end_71} :catch_78
    .catch Ljava/security/GeneralSecurityException; {:try_start_16 .. :try_end_71} :catch_9d

    move-result-object v13

    .line 357
    if-eqz v4, :cond_77

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_77
    return-object v13

    .line 348
    .end local v8           #requestBody:[B
    .end local v9           #requestUri:Landroid/net/Uri;
    .end local v10           #resp:Lorg/apache/http/HttpResponse;
    :catch_78
    move-exception v3

    .line 349
    .local v3, e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_79
    new-instance v13, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unsupported root key version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_96
    .catchall {:try_start_79 .. :try_end_96} :catchall_96

    .line 357
    .end local v3           #e:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_96
    move-exception v13

    if-eqz v4, :cond_9c

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_9c
    throw v13

    .line 351
    :catch_9d
    move-exception v3

    .line 355
    .local v3, e:Ljava/security/GeneralSecurityException;
    :try_start_9e
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Problem during K_s handshake"

    invoke-direct {v13, v14, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_96
.end method


# virtual methods
.method public decryptWithSessionKeyMaybeUpgrade(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 13
    .parameter "input"
    .parameter "resolver"
    .parameter "sessionKeyUri"
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/books/util/SessionKeyFactory;->decryptWithSessionKeyMaybeUpgradeHelper(Ljava/io/InputStream;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized findOrCreateSessionKey(Landroid/accounts/Account;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .registers 9
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v3

    int-to-long v0, v3

    .line 307
    .local v0, K_rVersion:J
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findAccount(Landroid/accounts/Account;)Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;

    move-result-object v2

    .line 308
    .local v2, accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    if-eqz v2, :cond_1d

    .line 309
    new-instance v3, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    iget-object v4, v2, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->sessionKeyVersion:Ljava/lang/String;

    iget-wide v5, v2, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->accountId:J

    invoke-static {v5, v6}, Lcom/google/android/apps/books/provider/BooksContract$Accounts;->buildAccountUri(J)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v2, Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;->sessionKeyBlob:[B

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    .line 314
    :goto_1b
    monitor-exit p0

    return-object v3

    :cond_1d
    const/4 v3, 0x0

    :try_start_1e
    invoke-direct {p0, p1, v3}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_23

    move-result-object v3

    goto :goto_1b

    .line 304
    .end local v0           #K_rVersion:J
    .end local v2           #accountInfo:Lcom/google/android/apps/books/util/SessionKeyFactory$AccountInfo;
    :catchall_23
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    .registers 19
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v1

    int-to-long v7, v1

    .line 227
    .local v7, K_rVersion:J
    const-string v12, "account_name=? AND volume_id=?"

    .line 229
    .local v12, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    aput-object p2, v5, v1

    .line 231
    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/books/util/SessionKeyFactory$SessionKeyQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "account_name=? AND volume_id=?"

    const-string v6, "session_key_version DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_9b

    move-result-object v11

    .line 234
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_25
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4f

    const-string v1, "SessionKeyFactory"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 235
    const-string v1, "SessionKeyFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">1 session key rows for volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_4f
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 240
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 241
    .local v13, sessionKeyId:J
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 242
    .local v9, K_sVersion:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 243
    .local v10, blob:[B
    invoke-static {v13, v14}, Lcom/google/android/apps/books/provider/BooksContract$SessionKeys;->buildSessionKeyUri(J)Landroid/net/Uri;

    move-result-object v15

    .line 244
    .local v15, sessionKeyUri:Landroid/net/Uri;
    sget-boolean v1, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v1, :cond_84

    .line 245
    const-string v1, "SessionKeyFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValidSessionKey() found valid _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_84
    new-instance v1, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    invoke-direct {v1, v9, v15, v10}, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;-><init>(Ljava/lang/String;Landroid/net/Uri;[B)V
    :try_end_89
    .catchall {:try_start_25 .. :try_end_89} :catchall_96

    .line 250
    :try_start_89
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_9b

    .line 255
    .end local v9           #K_sVersion:Ljava/lang/String;
    .end local v10           #blob:[B
    .end local v13           #sessionKeyId:J
    .end local v15           #sessionKeyUri:Landroid/net/Uri;
    :goto_8c
    monitor-exit p0

    return-object v1

    .line 250
    :cond_8e
    :try_start_8e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 255
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v1

    goto :goto_8c

    .line 250
    :catchall_96
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_9b

    .line 223
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v7           #K_rVersion:J
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #selection:Ljava/lang/String;
    :catchall_9b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeSessionKeyAndWipeContents(Landroid/net/Uri;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 11
    .parameter "sessionKeyUri"
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2, p3}, Lcom/google/android/apps/books/provider/BooksContract$VolumeFiles;->buildClearContentUri(Landroid/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 199
    .local v1, clearUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 200
    .local v3, oper:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-static {p1}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_42

    .line 204
    :try_start_1f
    iget-object v4, p0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.google.android.apps.books"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_42
    .catch Landroid/content/OperationApplicationException; {:try_start_1f .. :try_end_26} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_26} :catch_45

    .line 210
    monitor-exit p0

    return-void

    .line 205
    :catch_28
    move-exception v2

    .line 206
    .local v2, e:Landroid/content/OperationApplicationException;
    :try_start_29
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem wiping data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_42
    .catchall {:try_start_29 .. :try_end_42} :catchall_42

    .line 195
    .end local v0           #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v1           #clearUri:Landroid/net/Uri;
    .end local v2           #e:Landroid/content/OperationApplicationException;
    .end local v3           #oper:Landroid/content/ContentProviderOperation$Builder;
    :catchall_42
    move-exception v4

    monitor-exit p0

    throw v4

    .line 207
    .restart local v0       #batch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v1       #clearUri:Landroid/net/Uri;
    .restart local v3       #oper:Landroid/content/ContentProviderOperation$Builder;
    :catch_45
    move-exception v2

    .line 208
    .local v2, e:Landroid/os/RemoteException;
    :try_start_46
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem wiping data for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_42
.end method

.method public requestSessionKeyUpgrade(Landroid/accounts/Account;Ljava/util/List;)I
    .registers 25
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 480
    .local p2, keysToUpgrade:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->generateNonce()J

    move-result-wide v6

    .line 481
    .local v6, nonce:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/16 v20, 0x3e8

    div-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v13, v0

    .line 483
    .local v13, timestamp:I
    invoke-static {v6, v7}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeLongString(J)[B

    move-result-object v8

    .line 484
    .local v8, nonceBytes:[B
    invoke-static {v13}, Lcom/google/android/apps/books/util/ByteArrayUtils;->writeIntString(I)[B

    move-result-object v14

    .line 487
    .local v14, timestampBytes:[B
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    const/16 v19, 0x1

    sget-object v20, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v20, v18, v19

    const/16 v19, 0x2

    aput-object v14, v18, v19

    const/16 v19, 0x3

    sget-object v20, Lcom/google/android/apps/books/util/EncryptionUtils;->SEPARATOR:[B

    aput-object v20, v18, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mAppInfo:[B

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/books/util/EncryptionUtils;->E_r([B)[B

    move-result-object v10

    .line 490
    .local v10, requestBody:[B
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->getSessionKeyInfo(Landroid/accounts/Account;Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    .line 491
    .local v17, upgradeInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->buildSessionKeyUpgradeRequest(Landroid/accounts/Account;Ljava/util/List;)[B

    move-result-object v16

    .line 492
    .local v16, upgradeBody:[B
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v10, v18, v19

    const/16 v19, 0x1

    aput-object v16, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/google/android/apps/books/util/ByteArrayUtils;->concatBuffers([[B)[B

    move-result-object v10

    .line 494
    invoke-static {}, Lcom/google/android/apps/books/util/Config;->getBaseUri()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v18

    const-string v19, "books"

    invoke-virtual/range {v18 .. v19}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    const-string v19, "cp_activate"

    invoke-static {v10}, Lcom/google/android/apps/books/util/ByteArrayUtils;->readString([B)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 496
    .local v11, requestUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 497
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .line 499
    .local v9, numFailedKeys:I
    :try_start_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/util/SessionKeyFactory;->mResponseGetter:Lcom/google/android/apps/books/net/ResponseGetter;

    move-object/from16 v18, v0

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/books/net/ResponseGetter;->get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 500
    .local v12, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v5, v8}, Lcom/google/android/apps/books/util/SessionKeyFactory;->parseUpgradeSessionKeyResponse(Landroid/accounts/Account;Ljava/util/List;Lorg/apache/http/HttpEntity;[B)Ljava/util/List;

    move-result-object v15

    .line 503
    .local v15, updatedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v18

    sub-int v9, v9, v18

    .line 504
    sget-boolean v18, Lcom/google/android/apps/books/util/SessionKeyFactory;->LOGV:Z

    if-eqz v18, :cond_e0

    .line 505
    const-string v18, "SessionKeyFactory"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "parseUpgradeSessionKeyResponse() upgraded "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " keys"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_88 .. :try_end_e0} :catchall_108
    .catch Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException; {:try_start_88 .. :try_end_e0} :catch_e6

    .line 513
    :cond_e0
    if-eqz v5, :cond_e5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 515
    :cond_e5
    return v9

    .line 508
    .end local v12           #resp:Lorg/apache/http/HttpResponse;
    .end local v15           #updatedKeyInfo:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/books/util/SessionKeyFactory$KeyUpgradeInfo;>;"
    :catch_e6
    move-exception v4

    .line 509
    .local v4, eKeyExpired:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :try_start_e7
    new-instance v18, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unsupported root key version: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Lcom/google/android/apps/books/util/EncryptionUtils;->getK_rVersion()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/books/util/SessionKeyFactory$RootKeyExpiredException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v18
    :try_end_108
    .catchall {:try_start_e7 .. :try_end_108} :catchall_108

    .line 513
    .end local v4           #eKeyExpired:Lcom/google/android/apps/books/net/HttpHelper$KeyExpiredException;
    :catchall_108
    move-exception v18

    if-eqz v5, :cond_10e

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_10e
    throw v18
.end method

.method public requestSessionKeyUpgrade(Landroid/accounts/Account;)V
    .registers 3
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/util/SessionKeyFactory;->requestNewSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    .line 465
    return-void
.end method
