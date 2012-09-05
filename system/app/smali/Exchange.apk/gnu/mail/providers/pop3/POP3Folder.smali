.class public final Lgnu/mail/providers/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field deleted:Ljava/util/List;

.field inbox:Ljavax/mail/Folder;

.field open:Z

.field readonly:Z

.field type:I


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    .line 57
    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    .line 70
    iput p2, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    .line 71
    return-void
.end method


# virtual methods
.method public exists()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 114
    iget v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 12
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 292
    .line 295
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getItems()[Ljavax/mail/FetchProfile$Item;

    move-result-object v6

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 296
    :goto_a
    array-length v7, v6

    if-ge v0, v7, :cond_21

    .line 298
    aget-object v7, v6, v0

    sget-object v8, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    if-ne v7, v8, :cond_17

    move v2, v5

    .line 296
    :goto_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 302
    :cond_17
    aget-object v7, v6, v0

    sget-object v8, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    if-ne v7, v8, :cond_1f

    move v3, v5

    .line 304
    goto :goto_14

    :cond_1f
    move v4, v5

    .line 308
    goto :goto_14

    .line 311
    :cond_21
    invoke-virtual {p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4d

    .line 315
    :goto_28
    if-nez v5, :cond_2f

    if-nez v3, :cond_2f

    if-nez v2, :cond_2f

    .line 339
    :cond_2e
    return-void

    .line 320
    :cond_2f
    :goto_2f
    array-length v0, p1

    if-ge v1, v0, :cond_2e

    .line 322
    aget-object v0, p1, v1

    instance-of v0, v0, Lgnu/mail/providers/pop3/POP3Message;

    if-eqz v0, :cond_46

    .line 324
    aget-object v0, p1, v1

    check-cast v0, Lgnu/mail/providers/pop3/POP3Message;

    .line 325
    if-eqz v2, :cond_41

    .line 327
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchUid()V

    .line 329
    :cond_41
    if-eqz v3, :cond_49

    .line 331
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchContent()V

    .line 320
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 335
    :cond_49
    invoke-virtual {v0}, Lgnu/mail/providers/pop3/POP3Message;->fetchHeaders()V

    goto :goto_46

    :cond_4d
    move v5, v4

    goto :goto_28
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 391
    iget v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    packed-switch v0, :pswitch_data_1e

    .line 400
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "This folder can\'t contain subfolders"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :pswitch_d
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    if-nez v0, :cond_1b

    .line 396
    new-instance v0, Lgnu/mail/providers/pop3/POP3Folder;

    iget-object v1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lgnu/mail/providers/pop3/POP3Folder;-><init>(Ljavax/mail/Store;I)V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    .line 398
    :cond_1b
    iget-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->inbox:Ljavax/mail/Folder;

    return-object v0

    .line 391
    :pswitch_data_1e
    .packed-switch 0x2
        :pswitch_d
    .end packed-switch
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lgnu/mail/providers/pop3/POP3Folder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(I)Ljavax/mail/Message;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    if-nez v0, :cond_c

    .line 258
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Folder is not open"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    .line 261
    monitor-enter v1

    .line 265
    :try_start_13
    invoke-virtual {v1, p1}, Lgnu/inet/pop3/POP3Connection;->list(I)I

    move-result v0

    .line 266
    new-instance v2, Lgnu/mail/providers/pop3/POP3Message;

    invoke-direct {v2, p0, p1, v0}, Lgnu/mail/providers/pop3/POP3Message;-><init>(Lgnu/mail/providers/pop3/POP3Folder;II)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_29
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1c} :catch_1e

    :try_start_1c
    monitor-exit v1

    return-object v2

    .line 268
    :catch_1e
    move-exception v0

    .line 270
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 272
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public getMessageCount()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    check-cast v0, Lgnu/mail/providers/pop3/POP3Store;

    iget-object v1, v0, Lgnu/mail/providers/pop3/POP3Store;->connection:Lgnu/inet/pop3/POP3Connection;

    .line 235
    monitor-enter v1

    .line 239
    :try_start_7
    invoke-virtual {v1}, Lgnu/inet/pop3/POP3Connection;->stat()I
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_18
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_d

    move-result v0

    :try_start_b
    monitor-exit v1

    return v0

    .line 241
    :catch_d
    move-exception v0

    .line 243
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 245
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->type:I

    packed-switch v0, :pswitch_data_e

    .line 85
    const-string v0, "(Unknown)"

    :goto_7
    return-object v0

    .line 81
    :pswitch_8
    const-string v0, "/"

    goto :goto_7

    .line 83
    :pswitch_b
    const-string v0, "INBOX"

    goto :goto_7

    .line 78
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    return v0
.end method

.method public open(I)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 134
    packed-switch p1, :pswitch_data_1a

    .line 144
    :goto_4
    iput p1, p0, Ljavax/mail/Folder;->mode:I

    .line 145
    iput-boolean v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->open:Z

    .line 146
    invoke-virtual {p0, v1}, Lgnu/mail/providers/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 147
    return-void

    .line 137
    :pswitch_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgnu/mail/providers/pop3/POP3Folder;->deleted:Ljava/util/List;

    goto :goto_4

    .line 141
    :pswitch_17
    iput-boolean v1, p0, Lgnu/mail/providers/pop3/POP3Folder;->readonly:Z

    goto :goto_4

    .line 134
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_c
    .end packed-switch
.end method
