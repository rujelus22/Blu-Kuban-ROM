.class public final Lgnu/mail/providers/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field connection:Lgnu/inet/pop3/POP3Connection;

.field root:Lgnu/mail/providers/pop3/POP3Folder;


# virtual methods
.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 351
    monitor-enter p0

    .line 353
    :try_start_1
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    if-nez v0, :cond_d

    .line 355
    new-instance v0, Lgnu/mail/providers/pop3/POP3Folder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lgnu/mail/providers/pop3/POP3Folder;-><init>(Ljavax/mail/Store;I)V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    .line 357
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    .line 358
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Store;->root:Lgnu/mail/providers/pop3/POP3Folder;

    return-object v0

    .line 357
    :catchall_11
    move-exception v0

    :try_start_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 367
    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Store;->getDefaultFolder()Ljavax/mail/Folder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/mail/Folder;->getFolder(Ljava/lang/String;)Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 329
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 341
    :goto_7
    return v0

    .line 333
    :cond_8
    :try_start_8
    iget-object v2, p0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    monitor-enter v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_16

    .line 335
    :try_start_b
    iget-object v1, p0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    invoke-virtual {v1}, Lgnu/inet/pop3/POP3Connection;->noop()V

    .line 336
    monitor-exit v2

    .line 337
    const/4 v0, 0x1

    goto :goto_7

    .line 336
    :catchall_13
    move-exception v1

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    :try_start_15
    throw v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_16} :catch_16

    .line 339
    :catch_16
    move-exception v1

    goto :goto_7
.end method
