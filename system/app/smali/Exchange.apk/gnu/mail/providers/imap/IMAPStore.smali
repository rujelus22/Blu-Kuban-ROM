.class public Lgnu/mail/providers/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "IMAPStore.java"


# instance fields
.field protected connection:Lgnu/inet/imap/IMAPConnection;

.field protected root:Lgnu/mail/providers/imap/IMAPFolder;

.field protected selected:Lgnu/mail/providers/imap/IMAPFolder;


# virtual methods
.method protected getConnection()Lgnu/inet/imap/IMAPConnection;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    .prologue
    .line 397
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-nez v0, :cond_c

    .line 399
    new-instance v0, Ljavax/mail/StoreClosedException;

    invoke-direct {v0, p0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;)V

    throw v0

    .line 401
    :cond_c
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPStore;->connection:Lgnu/inet/imap/IMAPConnection;

    return-object v0
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPStore;->root:Lgnu/mail/providers/imap/IMAPFolder;

    if-nez v0, :cond_d

    .line 326
    new-instance v0, Lgnu/mail/providers/imap/IMAPFolder;

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    iput-object v0, p0, Lgnu/mail/providers/imap/IMAPStore;->root:Lgnu/mail/providers/imap/IMAPFolder;

    .line 328
    :cond_d
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPStore;->root:Lgnu/mail/providers/imap/IMAPFolder;

    return-object v0
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
    .line 337
    new-instance v0, Lgnu/mail/providers/imap/IMAPFolder;

    invoke-direct {v0, p0, p1}, Lgnu/mail/providers/imap/IMAPFolder;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public isConnected()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 363
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v2

    if-nez v2, :cond_9

    .line 386
    :goto_8
    return v0

    .line 367
    :cond_9
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_a} :catch_20

    .line 369
    :try_start_a
    iget-object v2, p0, Lgnu/mail/providers/imap/IMAPStore;->connection:Lgnu/inet/imap/IMAPConnection;

    invoke-virtual {v2}, Lgnu/inet/imap/IMAPConnection;->noop()Lgnu/inet/imap/MailboxStatus;

    move-result-object v2

    .line 370
    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPStore;->selected:Lgnu/mail/providers/imap/IMAPFolder;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_1d

    if-eqz v3, :cond_1a

    .line 374
    :try_start_14
    iget-object v3, p0, Lgnu/mail/providers/imap/IMAPStore;->selected:Lgnu/mail/providers/imap/IMAPFolder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lgnu/mail/providers/imap/IMAPFolder;->update(Lgnu/inet/imap/MailboxStatus;Z)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1d
    .catch Ljavax/mail/MessagingException; {:try_start_14 .. :try_end_1a} :catch_22

    .line 381
    :cond_1a
    :goto_1a
    :try_start_1a
    monitor-exit p0

    move v0, v1

    .line 382
    goto :goto_8

    .line 381
    :catchall_1d
    move-exception v1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_20} :catch_20

    .line 384
    :catch_20
    move-exception v1

    goto :goto_8

    .line 376
    :catch_22
    move-exception v2

    goto :goto_1a
.end method

.method protected processAlerts()V
    .registers 5

    .prologue
    .line 425
    iget-object v0, p0, Lgnu/mail/providers/imap/IMAPStore;->connection:Lgnu/inet/imap/IMAPConnection;

    invoke-virtual {v0}, Lgnu/inet/imap/IMAPConnection;->getAlerts()[Ljava/lang/String;

    move-result-object v1

    .line 426
    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 428
    const/4 v2, 0x1

    aget-object v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lgnu/mail/providers/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 430
    :cond_13
    return-void
.end method

.method protected setSelected(Lgnu/mail/providers/imap/IMAPFolder;)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lgnu/mail/providers/imap/IMAPStore;->selected:Lgnu/mail/providers/imap/IMAPFolder;

    .line 418
    return-void
.end method
