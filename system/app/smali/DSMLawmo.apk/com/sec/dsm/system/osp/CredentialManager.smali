.class public Lcom/sec/dsm/system/osp/CredentialManager;
.super Ljava/lang/Object;
.source "CredentialManager.java"


# instance fields
.field private credentialRepository:Lcom/sec/dsm/system/osp/CredentialRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    :try_start_3
    new-instance v1, Lcom/sec/dsm/system/osp/CredentialRepository;

    invoke-direct {v1, p1}, Lcom/sec/dsm/system/osp/CredentialRepository;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/dsm/system/osp/CredentialManager;->credentialRepository:Lcom/sec/dsm/system/osp/CredentialRepository;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_a} :catch_b

    .line 33
    return-void

    .line 29
    :catch_b
    move-exception v0

    .line 30
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    new-instance v1, Lcom/sec/dsm/system/osp/CredentialException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/sec/dsm/system/osp/CredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public containsAccessToken(Ljava/lang/String;)Z
    .registers 8
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 140
    if-nez p1, :cond_9

    .line 141
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 144
    :cond_9
    const/4 v3, 0x0

    .line 147
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 148
    .local v1, oauthToken:Ljava/lang/String;
    const/4 v2, 0x0

    .line 150
    .local v2, oauthTokenSecret:Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/CredentialManager;->getOauthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-virtual {p0, p1}, Lcom/sec/dsm/system/osp/CredentialManager;->getOauthTokenSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 153
    if-eqz v1, :cond_28

    if-eqz v2, :cond_28

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eq v4, v5, :cond_28

    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_2c

    move-result v4

    if-ne v4, v5, :cond_2a

    .line 156
    :cond_28
    const/4 v3, 0x0

    .line 165
    :goto_29
    return v3

    .line 158
    :cond_2a
    const/4 v3, 0x1

    goto :goto_29

    .line 160
    :catch_2c
    move-exception v0

    .line 161
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    new-instance v4, Lcom/sec/dsm/system/osp/CredentialException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/sec/dsm/system/osp/CredentialException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getOauthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 56
    if-nez p1, :cond_8

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 60
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/osp/CredentialManager;->credentialRepository:Lcom/sec/dsm/system/osp/CredentialRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/osp/CredentialRepository;->getOauthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOauthTokenSecret(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "appID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/CredentialException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_8

    .line 71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_8
    iget-object v0, p0, Lcom/sec/dsm/system/osp/CredentialManager;->credentialRepository:Lcom/sec/dsm/system/osp/CredentialRepository;

    invoke-virtual {v0, p1}, Lcom/sec/dsm/system/osp/CredentialRepository;->getOauthTokenSecret(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
