.class public Lcom/sec/dsm/system/osp/CredentialRepository;
.super Ljava/lang/Object;
.source "CredentialRepository.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string v0, "content://com.osp.contentprovider.ospcontentprovider/credential"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/dsm/system/osp/CredentialRepository;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sec/dsm/system/osp/CredentialRepository;->context:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method protected getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "appID"
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 124
    .local v6, credData:Ljava/lang/String;
    const/4 v7, 0x0

    .line 126
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_3
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    .line 127
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "appID = ?"

    .line 128
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 130
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/dsm/system/osp/CredentialRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/dsm/system/osp/CredentialRepository;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 133
    if-eqz v7, :cond_2a

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 134
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_3b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_30

    move-result-object v6

    .line 139
    :cond_2a
    if-eqz v7, :cond_2f

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_2f
    return-object v6

    .line 136
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :catch_30
    move-exception v8

    .line 137
    .local v8, e:Ljava/lang/Exception;
    :try_start_31
    new-instance v0, Lcom/sec/dsm/system/osp/CredentialException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Lcom/sec/dsm/system/osp/CredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_3b

    .line 139
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_3b
    move-exception v0

    if-eqz v7, :cond_41

    .line 140
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_41
    throw v0
.end method

.method protected getOauthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 96
    .local v1, oauthToken:Ljava/lang/String;
    :try_start_1
    const-string v2, "oauthToken"

    invoke-virtual {p0, p1, v2}, Lcom/sec/dsm/system/osp/CredentialRepository;->getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v1

    .line 101
    return-object v1

    .line 97
    :catch_8
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/sec/dsm/system/osp/CredentialException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sec/dsm/system/osp/CredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getOauthTokenSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v2, 0x0

    .line 108
    .local v2, oauthTokenSecret:Ljava/lang/String;
    :try_start_1
    const-string v3, "oauthTokenSecret"

    invoke-virtual {p0, p1, v3}, Lcom/sec/dsm/system/osp/CredentialRepository;->getCredential(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/sec/dsm/system/osp/CredentialRepository;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/dsm/system/osp/AESCrypto;->generateContentKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, contentKey:Ljava/lang/String;
    if-eqz v2, :cond_1b

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 112
    invoke-static {v0, v2}, Lcom/sec/dsm/system/osp/AESCrypto;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result-object v2

    .line 118
    :cond_1b
    return-object v2

    .line 114
    .end local v0           #contentKey:Ljava/lang/String;
    :catch_1c
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Lcom/sec/dsm/system/osp/CredentialException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/sec/dsm/system/osp/CredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
