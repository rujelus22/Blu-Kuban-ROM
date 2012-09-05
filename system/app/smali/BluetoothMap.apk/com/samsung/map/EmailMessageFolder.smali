.class public Lcom/samsung/map/EmailMessageFolder;
.super Lcom/samsung/map/MessageFolder;
.source "EmailMessageFolder.java"


# static fields
.field private static emailHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Account:I

.field private content:Landroid/content/ContentResolver;

.field private messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .registers 4
    .parameter "account"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Lcom/samsung/map/MessageFolder;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    .line 322
    iput-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .line 97
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    .line 98
    iput p1, p0, Lcom/samsung/map/EmailMessageFolder;->Account:I

    .line 100
    return-void
.end method

.method static checkHandlers(Ljava/lang/Integer;)Z
    .registers 5
    .parameter "handle"

    .prologue
    const/4 v2, 0x0

    .line 190
    sget-object v3, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 200
    :cond_5
    :goto_5
    return v2

    .line 193
    :cond_6
    sget-object v3, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 194
    .local v0, h:Ljava/lang/Integer;
    invoke-virtual {p0, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 195
    sget-object v2, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    sget-object v3, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 196
    const/4 v2, 0x1

    goto :goto_5
.end method

.method private countAttachmentsSize(I)I
    .registers 12
    .parameter "msgId"

    .prologue
    .line 261
    const/4 v6, 0x0

    .line 262
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.email.provider/attachment/message/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 263
    .local v9, uriStr:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 265
    .local v1, uri:Landroid/net/Uri;
    :try_start_18
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_3b

    move-result-object v6

    .line 278
    :cond_22
    :goto_22
    const/4 v8, 0x0

    .line 279
    .local v8, ret:I
    if-eqz v6, :cond_35

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 280
    const-string v0, "size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 283
    :cond_35
    if-eqz v6, :cond_3a

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 287
    :cond_3a
    return v8

    .line 266
    .end local v8           #ret:I
    :catch_3b
    move-exception v7

    .line 267
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz v6, :cond_22

    .line 270
    :try_start_5a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_62
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5f

    .line 273
    const/4 v6, 0x0

    .line 274
    goto :goto_22

    .line 271
    :catch_5f
    move-exception v0

    .line 273
    const/4 v6, 0x0

    .line 274
    goto :goto_22

    .line 273
    :catchall_62
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method private countMessageSize(I)I
    .registers 14
    .parameter "msgId"

    .prologue
    .line 291
    const/4 v6, 0x0

    .line 292
    .local v6, cursor:Landroid/database/Cursor;
    const-string v10, "content://com.android.email.provider/body"

    .line 293
    .local v10, uriStr:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 295
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "messageKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1a} :catch_3a

    move-result-object v6

    .line 309
    :cond_1b
    :goto_1b
    const/4 v8, 0x0

    .line 310
    .local v8, ret:I
    if-eqz v6, :cond_34

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 311
    const-string v0, "textContent"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 312
    .local v9, text:Ljava/lang/String;
    if-eqz v9, :cond_34

    .line 313
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 316
    .end local v9           #text:Ljava/lang/String;
    :cond_34
    if-eqz v6, :cond_39

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_39
    return v8

    .line 297
    .end local v8           #ret:I
    :catch_3a
    move-exception v7

    .line 298
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v6, :cond_1b

    .line 301
    :try_start_59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_61
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5e

    .line 304
    const/4 v6, 0x0

    .line 305
    goto :goto_1b

    .line 302
    :catch_5e
    move-exception v0

    .line 304
    const/4 v6, 0x0

    .line 305
    goto :goto_1b

    .line 304
    :catchall_61
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method private getFolder(I)I
    .registers 11
    .parameter "folderType"

    .prologue
    .line 669
    const/4 v6, 0x0

    .line 671
    .local v6, localFolderCursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget v8, p0, Lcom/samsung/map/EmailMessageFolder;->Account:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 674
    :cond_1d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 675
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 676
    .local v7, type:I
    if-ne v7, p1, :cond_1d

    .line 677
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_46

    move-result v0

    .line 682
    if-eqz v6, :cond_3e

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    .end local v7           #type:I
    :cond_3e
    :goto_3e
    return v0

    .line 682
    :cond_3f
    if-eqz v6, :cond_44

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    :cond_44
    :goto_44
    const/4 v0, -0x1

    goto :goto_3e

    .line 680
    :catch_46
    move-exception v0

    .line 682
    if-eqz v6, :cond_44

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_44

    .line 682
    :catchall_4d
    move-exception v0

    if-eqz v6, :cond_53

    .line 683
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method private getFolderType(I)I
    .registers 10
    .parameter "folderId"

    .prologue
    .line 690
    const/4 v6, 0x0

    .line 692
    .local v6, localFolderCursor:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.email.provider/mailbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 695
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 696
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_38

    move-result v0

    .line 700
    if-eqz v6, :cond_30

    .line 701
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_30
    :goto_30
    return v0

    .line 700
    :cond_31
    if-eqz v6, :cond_36

    .line 701
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 704
    :cond_36
    :goto_36
    const/4 v0, -0x1

    goto :goto_30

    .line 698
    :catch_38
    move-exception v0

    .line 700
    if-eqz v6, :cond_36

    .line 701
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_36

    .line 700
    :catchall_3f
    move-exception v0

    if-eqz v6, :cond_45

    .line 701
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_45
    throw v0
.end method

.method private getMailboxInfo(I)Landroid/database/Cursor;
    .registers 11
    .parameter "id"

    .prologue
    .line 108
    const/4 v6, 0x0

    .line 111
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, "content://com.android.email.provider/mailbox/"

    .line 112
    .local v8, uriStr:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, uri:Landroid/net/Uri;
    :try_start_7
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_24

    move-result-object v6

    .line 127
    :cond_23
    :goto_23
    return-object v6

    .line 116
    :catch_24
    move-exception v7

    .line 117
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "EmailMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v6, :cond_23

    .line 120
    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_48

    .line 123
    const/4 v6, 0x0

    .line 124
    goto :goto_23

    .line 121
    :catch_48
    move-exception v0

    .line 123
    const/4 v6, 0x0

    .line 124
    goto :goto_23

    .line 123
    :catchall_4b
    move-exception v0

    const/4 v6, 0x0

    throw v0
.end method

.method private typeToFolder(I)Ljava/lang/String;
    .registers 5
    .parameter "type"

    .prologue
    .line 461
    new-instance v0, Ljava/lang/String;

    const-string v1, "TELECOM/MSG/"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, folder:Ljava/lang/String;
    packed-switch p1, :pswitch_data_6e

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "INBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_1d
    return-object v0

    .line 464
    :pswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DRAFT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    goto :goto_1d

    .line 471
    :pswitch_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    goto :goto_1d

    .line 475
    :pswitch_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DELETED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    goto :goto_1d

    .line 478
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OUTBOX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 462
    :pswitch_data_6e
    .packed-switch 0x3
        :pswitch_1e
        :pswitch_5a
        :pswitch_32
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method

.method private static unpack(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 12
    .parameter "container"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    .line 204
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_17

    .line 205
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v0, empty:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, ""

    const-string v10, ""

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    .line 240
    .end local v0           #empty:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    :goto_16
    return-object v3

    .line 210
    :cond_17
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 211
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 213
    .local v4, size:I
    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 214
    .local v7, tagIndex:I
    const/4 v5, 0x0

    .line 215
    .local v5, startIndex:I
    const/4 v1, 0x0

    .line 216
    .local v1, endIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 220
    .local v2, len:I
    if-ge v5, v2, :cond_16

    .line 222
    :cond_2c
    const/4 v9, 0x1

    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 224
    if-gez v1, :cond_34

    move v1, v2

    .line 226
    :cond_34
    if-le v1, v7, :cond_50

    if-ltz v7, :cond_50

    .line 227
    invoke-virtual {p0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, val:Ljava/lang/String;
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, tag:Ljava/lang/String;
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p0, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 235
    :goto_48
    invoke-virtual {v3, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    add-int/lit8 v5, v1, 0x1

    .line 237
    if-lt v5, v2, :cond_2c

    goto :goto_16

    .line 231
    .end local v6           #tag:Ljava/lang/String;
    .end local v8           #val:Ljava/lang/String;
    :cond_50
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 232
    .restart local v8       #val:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #tag:Ljava/lang/String;
    goto :goto_48
.end method


# virtual methods
.method public GetMessage(IZII)Lcom/samsung/map/MessageFolder$GetMessageResponse;
    .registers 43
    .parameter "Handle"
    .parameter "Attachment"
    .parameter "Charset"
    .parameter "FractionRequest"

    .prologue
    .line 487
    const-string v3, "EmailMessageFolder"

    const-string v5, "GetMessage"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v34, Lcom/samsung/map/MessageFolder$GetMessageResponse;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/map/MessageFolder$GetMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 490
    .local v34, ret:Lcom/samsung/map/MessageFolder$GetMessageResponse;
    invoke-static/range {p1 .. p1}, Lcom/samsung/map/EmailMessageFolder;->mapIdToBase(I)I

    move-result v29

    .line 492
    .local v29, msg_id:I
    and-int/lit8 v3, p3, 0x1

    if-nez v3, :cond_1e

    .line 493
    const/16 v3, 0xc0

    move-object/from16 v0, v34

    iput v3, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 496
    :cond_1e
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_29

    .line 497
    const/16 v3, 0xc0

    move-object/from16 v0, v34

    iput v3, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 500
    :cond_29
    const/16 v18, 0x0

    .line 502
    .local v18, cursor:Landroid/database/Cursor;
    const-string v37, "content://com.android.email.provider/message/"

    .line 503
    .local v37, uriStr:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 506
    .local v4, uri:Landroid/net/Uri;
    :try_start_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_50} :catch_60

    move-result-object v18

    .line 519
    :cond_51
    :goto_51
    if-eqz v18, :cond_59

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_8d

    .line 520
    :cond_59
    const/16 v3, 0xc4

    move-object/from16 v0, v34

    iput v3, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    .line 665
    :goto_5f
    return-object v34

    .line 507
    :catch_60
    move-exception v20

    .line 508
    .local v20, e:Ljava/lang/Exception;
    const-string v3, "EmailMessageFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exeption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-eqz v18, :cond_51

    .line 511
    :try_start_7f
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_89
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_85

    .line 514
    const/16 v18, 0x0

    .line 515
    goto :goto_51

    .line 512
    :catch_85
    move-exception v3

    .line 514
    const/16 v18, 0x0

    .line 515
    goto :goto_51

    .line 514
    :catchall_89
    move-exception v3

    const/16 v18, 0x0

    throw v3

    .line 522
    .end local v20           #e:Ljava/lang/Exception;
    :cond_8d
    const-string v23, ""

    .line 523
    .local v23, folder:Ljava/lang/String;
    const-string v3, "subject"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 524
    .local v11, Subject:Ljava/lang/String;
    const-string v3, "toList"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 525
    .local v12, To:Ljava/lang/String;
    const-string v3, "fromList"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 526
    .local v10, From:Ljava/lang/String;
    const-string v3, "flagRead"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3af

    const/16 v33, 0x1

    .line 527
    .local v33, read_status:Z
    :goto_cc
    const-string v3, "flagLoaded"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 529
    .local v22, flag:I
    const-string v3, "snippet"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 530
    .local v35, snippet:Ljava/lang/String;
    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_ef

    .line 531
    const/16 p2, 0x0

    .line 534
    :cond_ef
    const-string v3, "mailboxKey"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/map/EmailMessageFolder;->getMailboxInfo(I)Landroid/database/Cursor;

    move-result-object v26

    .line 536
    .local v26, mailboxInfo:Landroid/database/Cursor;
    if-eqz v26, :cond_11f

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    .line 537
    const-string v3, "type"

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/map/EmailMessageFolder;->typeToFolder(I)Ljava/lang/String;

    move-result-object v23

    .line 540
    :cond_11f
    if-eqz v26, :cond_124

    .line 541
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 544
    :cond_124
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "d MMM yy"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "timeStamp"

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 546
    .local v9, Date:Ljava/lang/String;
    new-instance v27, Lcom/samsung/map/bMessageBuilder;

    const/4 v3, 0x4

    move-object/from16 v0, v27

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/map/bMessageBuilder;-><init>(ZILjava/lang/String;)V

    .line 549
    .local v27, mb:Lcom/samsung/map/bMessageBuilder;
    if-eqz v18, :cond_152

    .line 550
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 552
    :cond_152
    const-string v3, "content://com.android.email.provider/body"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 554
    :try_start_158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "messageKey="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_177
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_177} :catch_3b3

    move-result-object v18

    .line 567
    :cond_178
    :goto_178
    const-string v3, "MIME-Version"

    const-string v5, "1.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v3, "Messsage-ID"

    new-instance v5, Ljava/lang/Integer;

    move/from16 v0, v29

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v3, "Date"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v9}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v3, "Subject"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v11}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    const-string v3, "From"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v10}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v3, "To"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v12}, Lcom/samsung/map/bMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v28, ""

    .line 575
    .local v28, msg:Ljava/lang/String;
    if-eqz v18, :cond_1c7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1c7

    .line 576
    const-string v3, "textContent"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 579
    :cond_1c7
    if-eqz v18, :cond_1cc

    .line 580
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 583
    :cond_1cc
    if-nez v28, :cond_1d2

    if-eqz v35, :cond_1d2

    .line 584
    move-object/from16 v28, v35

    .line 586
    :cond_1d2
    const-string v3, "8BIT"

    const-string v5, "UTF-8"

    const-string v6, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/samsung/map/bMessageBuilder;->addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    if-eqz p2, :cond_39e

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://com.android.email.provider/attachment/message/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 591
    :try_start_1fa
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_205} :catch_3e2

    move-result-object v18

    .line 604
    :cond_206
    :goto_206
    if-eqz v18, :cond_399

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_399

    .line 605
    const-string v3, "mimeType"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 606
    .local v17, ct_column:I
    const-string v3, "fileName"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 607
    .local v30, name_column:I
    const-string v3, "contentId"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 608
    .local v14, cid_col:I
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 614
    .local v25, id_col:I
    :cond_22e
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 615
    .local v16, ct:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--_Part_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 616
    .local v32, partId:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 617
    .local v15, content:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 618
    .local v36, t:Ljava/lang/String;
    if-eqz v36, :cond_293

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_293

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Content-ID: <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ">\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 621
    :cond_293
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 623
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d4

    if-eqz v36, :cond_2d4

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2d4

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Content-Type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 626
    :cond_2d4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 629
    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 632
    .local v24, id:I
    const/16 v21, 0x0

    .line 634
    .local v21, emailContext:Landroid/content/Context;
    :try_start_2f1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    const-string v5, "com.android.email"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2f1 .. :try_end_2fb} :catch_411

    move-result-object v21

    .line 640
    :goto_2fc
    if-eqz v21, :cond_393

    .line 641
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/map/EmailMessageFolder;->Account:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".db_att"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v31

    .line 642
    .local v31, openFrom:Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 643
    .local v19, data:Ljava/lang/String;
    if-eqz v19, :cond_393

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_393

    .line 644
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 645
    .local v13, baos:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lcom/samsung/map/EmailMessageFolder;->writeAttachmentToBuffer(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_393

    .line 646
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-lez v3, :cond_393

    .line 647
    const-string v3, "8BIT"

    const-string v5, "UTF-8"

    const-string v6, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v5, v6, v15}, Lcom/samsung/map/bMessageBuilder;->addBodyPart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "--\r\n\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v13, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 650
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/samsung/map/bMessageBuilder;->addBodyPart([B)V

    .line 655
    .end local v13           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v19           #data:Ljava/lang/String;
    .end local v31           #openFrom:Ljava/io/File;
    :cond_393
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_22e

    .line 658
    .end local v14           #cid_col:I
    .end local v15           #content:Ljava/lang/String;
    .end local v16           #ct:Ljava/lang/String;
    .end local v17           #ct_column:I
    .end local v21           #emailContext:Landroid/content/Context;
    .end local v24           #id:I
    .end local v25           #id_col:I
    .end local v30           #name_column:I
    .end local v32           #partId:Ljava/lang/String;
    .end local v36           #t:Ljava/lang/String;
    :cond_399
    if-eqz v18, :cond_39e

    .line 659
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 662
    :cond_39e
    invoke-virtual/range {v27 .. v27}, Lcom/samsung/map/bMessageBuilder;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Lcom/samsung/map/MessageFolder$GetMessageResponse;->appendBytes([B)V

    .line 663
    const/16 v3, 0xa0

    move-object/from16 v0, v34

    iput v3, v0, Lcom/samsung/map/MessageFolder$GetMessageResponse;->status:I

    goto/16 :goto_5f

    .line 526
    .end local v9           #Date:Ljava/lang/String;
    .end local v22           #flag:I
    .end local v26           #mailboxInfo:Landroid/database/Cursor;
    .end local v27           #mb:Lcom/samsung/map/bMessageBuilder;
    .end local v28           #msg:Ljava/lang/String;
    .end local v33           #read_status:Z
    .end local v35           #snippet:Ljava/lang/String;
    :cond_3af
    const/16 v33, 0x0

    goto/16 :goto_cc

    .line 555
    .restart local v9       #Date:Ljava/lang/String;
    .restart local v22       #flag:I
    .restart local v26       #mailboxInfo:Landroid/database/Cursor;
    .restart local v27       #mb:Lcom/samsung/map/bMessageBuilder;
    .restart local v33       #read_status:Z
    .restart local v35       #snippet:Ljava/lang/String;
    :catch_3b3
    move-exception v20

    .line 556
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "EmailMessageFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exeption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    if-eqz v18, :cond_178

    .line 559
    :try_start_3d2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_3d5
    .catchall {:try_start_3d2 .. :try_end_3d5} :catchall_3de
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3d5} :catch_3d9

    .line 562
    const/16 v18, 0x0

    .line 563
    goto/16 :goto_178

    .line 560
    :catch_3d9
    move-exception v3

    .line 562
    const/16 v18, 0x0

    .line 563
    goto/16 :goto_178

    .line 562
    :catchall_3de
    move-exception v3

    const/16 v18, 0x0

    throw v3

    .line 592
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v28       #msg:Ljava/lang/String;
    :catch_3e2
    move-exception v20

    .line 593
    .restart local v20       #e:Ljava/lang/Exception;
    const-string v3, "EmailMessageFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exeption = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    if-eqz v18, :cond_206

    .line 596
    :try_start_401
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V
    :try_end_404
    .catchall {:try_start_401 .. :try_end_404} :catchall_40d
    .catch Ljava/lang/Exception; {:try_start_401 .. :try_end_404} :catch_408

    .line 599
    const/16 v18, 0x0

    .line 600
    goto/16 :goto_206

    .line 597
    :catch_408
    move-exception v3

    .line 599
    const/16 v18, 0x0

    .line 600
    goto/16 :goto_206

    .line 599
    :catchall_40d
    move-exception v3

    const/16 v18, 0x0

    throw v3

    .line 636
    .end local v20           #e:Ljava/lang/Exception;
    .restart local v14       #cid_col:I
    .restart local v15       #content:Ljava/lang/String;
    .restart local v16       #ct:Ljava/lang/String;
    .restart local v17       #ct_column:I
    .restart local v21       #emailContext:Landroid/content/Context;
    .restart local v24       #id:I
    .restart local v25       #id_col:I
    .restart local v30       #name_column:I
    .restart local v32       #partId:Ljava/lang/String;
    .restart local v36       #t:Ljava/lang/String;
    :catch_411
    move-exception v20

    .line 637
    .restart local v20       #e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2fc
.end method

.method public PushMessage(Ljava/lang/String;ZZILcom/samsung/map/bmessage/BMessage;)Lcom/samsung/map/MessageFolder$PushMessageResponse;
    .registers 8
    .parameter "f"
    .parameter "Transparent"
    .parameter "Retry"
    .parameter "Charset"
    .parameter "bMessage"

    .prologue
    .line 778
    new-instance v0, Lcom/samsung/map/MessageFolder$PushMessageResponse;

    const/16 v1, 0xc0

    invoke-direct {v0, p0, v1}, Lcom/samsung/map/MessageFolder$PushMessageResponse;-><init>(Lcom/samsung/map/MessageFolder;I)V

    return-object v0
.end method

.method public SetStatus(III)I
    .registers 19
    .parameter "handle"
    .parameter "StatusIndicator"
    .parameter "StatusValue"

    .prologue
    .line 709
    const/4 v6, 0x0

    .line 710
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static/range {p1 .. p1}, Lcom/samsung/map/EmailMessageFolder;->mapIdToBase(I)I

    move-result v13

    .line 711
    .local v13, msg_id:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.email.provider/message/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 712
    .local v14, uriStr:Ljava/lang/String;
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 714
    .local v1, uri:Landroid/net/Uri;
    :try_start_1c
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_2b

    move-result-object v6

    .line 727
    :cond_26
    :goto_26
    if-nez v6, :cond_55

    .line 728
    const/16 v0, 0xc4

    .line 772
    :goto_2a
    return v0

    .line 715
    :catch_2b
    move-exception v9

    .line 716
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "EmailMessageFolder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exeption = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    if-eqz v6, :cond_26

    .line 719
    :try_start_4a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_52
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4f

    .line 722
    const/4 v6, 0x0

    .line 723
    goto :goto_26

    .line 720
    :catch_4f
    move-exception v0

    .line 722
    const/4 v6, 0x0

    .line 723
    goto :goto_26

    .line 722
    :catchall_52
    move-exception v0

    const/4 v6, 0x0

    throw v0

    .line 731
    .end local v9           #e:Ljava/lang/Exception;
    :cond_55
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_61

    .line 732
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 733
    const/16 v0, 0xc4

    goto :goto_2a

    .line 736
    :cond_61
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_84

    .line 737
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 738
    .local v7, cv:Landroid/content/ContentValues;
    const-string v0, "flagRead"

    and-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 768
    :goto_7c
    if-eqz v6, :cond_81

    .line 769
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_81
    const/16 v0, 0xa0

    goto :goto_2a

    .line 741
    .end local v7           #cv:Landroid/content/ContentValues;
    :cond_84
    const-string v0, "mailboxKey"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 742
    .local v10, folderID:I
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v8

    .line 743
    .local v8, deletedID:I
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v11

    .line 744
    .local v11, inboxID:I
    invoke-static {}, Lcom/samsung/map/EmailObserver;->lockObserver()V

    .line 745
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_cd

    .line 746
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 747
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v0, "mailboxKey"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 761
    :goto_b4
    sget-object v0, Lcom/samsung/map/EmailMessageFolder;->emailHandlers:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    invoke-static {}, Lcom/samsung/map/EmailObserver;->unlockObserver()V

    .line 763
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.samsung.map.intent.action.MNS_CHECKMSG"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v12, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_7c

    .line 750
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v12           #intent:Landroid/content/Intent;
    :cond_cd
    if-ne v10, v8, :cond_db

    .line 751
    if-eqz v6, :cond_d4

    .line 752
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 754
    :cond_d4
    invoke-static {}, Lcom/samsung/map/EmailObserver;->unlockObserver()V

    .line 755
    const/16 v0, 0xc4

    goto/16 :goto_2a

    .line 757
    :cond_db
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 758
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v0, "mailboxKey"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 759
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v7, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_b4
.end method

.method public Update()I
    .registers 5

    .prologue
    .line 848
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.intent.action.MAIL_SERVICE_WAKEUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.extra.ACCOUNT"

    iget v2, p0, Lcom/samsung/map/EmailMessageFolder;->Account:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 850
    iget-object v1, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 851
    const/16 v1, 0xa0

    return v1
.end method

.method getEmailFolderID(Lcom/samsung/map/FolderEntry;)I
    .registers 4
    .parameter "fe"

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/samsung/map/FolderEntry;->getId()I

    move-result v0

    .line 166
    .local v0, ret:I
    if-gez v0, :cond_9

    .line 167
    packed-switch v0, :pswitch_data_28

    .line 185
    :cond_9
    :goto_9
    return v0

    .line 169
    :pswitch_a
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v0

    .line 170
    goto :goto_9

    .line 172
    :pswitch_10
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v0

    .line 173
    goto :goto_9

    .line 175
    :pswitch_16
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v0

    .line 176
    goto :goto_9

    .line 178
    :pswitch_1c
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v0

    .line 179
    goto :goto_9

    .line 181
    :pswitch_22
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/map/EmailMessageFolder;->getFolder(I)I

    move-result v0

    goto :goto_9

    .line 167
    :pswitch_data_28
    .packed-switch -0x8
        :pswitch_16
        :pswitch_10
        :pswitch_22
        :pswitch_1c
        :pswitch_a
    .end packed-switch
.end method

.method public getMessageCount(Lcom/samsung/map/FolderEntry;)I
    .registers 12
    .parameter "curFolder"

    .prologue
    const/4 v2, 0x0

    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 247
    .local v8, msg_count:I
    const-string v9, "content://com.android.email.provider/message/"

    .line 248
    .local v9, uriStr:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/samsung/map/EmailMessageFolder;->getEmailFolderID(Lcom/samsung/map/FolderEntry;)I

    move-result v7

    .line 249
    .local v7, id:I
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailboxKey ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 252
    if-eqz v6, :cond_31

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 254
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_31
    return v8
.end method

.method public getMessageListing(Ljava/lang/String;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Lcom/samsung/map/MessageFolder$MessageListingResponse;
    .registers 49
    .parameter "folder"
    .parameter "MaxListCount"
    .parameter "ListStartOffset"
    .parameter "SubjectLength"
    .parameter "ParameterMask"
    .parameter "FilterMessageType"
    .parameter "FilterPeriodBegin"
    .parameter "FilterPeriodEnd"
    .parameter "FilterReadStatus"
    .parameter "FilterRecipient"
    .parameter "FilterOriginator"
    .parameter "FilterPriority"

    .prologue
    .line 333
    new-instance v31, Lcom/samsung/map/MessageFolder$MessageListingResponse;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/map/MessageFolder$MessageListingResponse;-><init>(Lcom/samsung/map/MessageFolder;)V

    .line 336
    .local v31, mlr:Lcom/samsung/map/MessageFolder$MessageListingResponse;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    if-nez v3, :cond_3d

    .line 337
    new-instance v2, Lcom/samsung/map/MessagesListingBuilder;

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v2 .. v13}, Lcom/samsung/map/MessagesListingBuilder;-><init>(IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 344
    .local v2, mlb:Lcom/samsung/map/MessagesListingBuilder;
    :goto_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/MessageFolder;->currentFolder:Lcom/samsung/map/FolderEntry;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/samsung/map/FolderEntry;->cd(Ljava/lang/String;)Lcom/samsung/map/FolderEntry;

    move-result-object v23

    .line 346
    .local v23, Folder:Lcom/samsung/map/FolderEntry;
    if-nez v23, :cond_42

    .line 347
    const/16 v3, 0xc4

    move-object/from16 v0, v31

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    .line 433
    :goto_3c
    return-object v31

    .line 341
    .end local v2           #mlb:Lcom/samsung/map/MessagesListingBuilder;
    .end local v23           #Folder:Lcom/samsung/map/FolderEntry;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/map/EmailMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .restart local v2       #mlb:Lcom/samsung/map/MessagesListingBuilder;
    goto :goto_2a

    .line 349
    .restart local v23       #Folder:Lcom/samsung/map/FolderEntry;
    :cond_42
    const/16 v25, 0x0

    .line 350
    .local v25, cursor:Landroid/database/Cursor;
    const-string v33, "content://com.android.email.provider/message/"

    .line 351
    .local v33, uriStr:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 353
    .local v4, uri:Landroid/net/Uri;
    :try_start_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->content:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const-string v6, "accountKey=? AND mailboxKey=?"

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v7, v0, [Ljava/lang/String;

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/map/EmailMessageFolder;->Account:I

    move/from16 v35, v0

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v7, v34

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/map/EmailMessageFolder;->getEmailFolderID(Lcom/samsung/map/FolderEntry;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    aput-object v35, v7, v34

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_79} :catch_cc

    move-result-object v25

    .line 369
    :cond_7a
    :goto_7a
    if-eqz v25, :cond_a9

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 371
    :cond_82
    const-string v3, "_id"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    .line 372
    .local v32, msg_id:I
    const-string v3, "flagLoaded"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 373
    .local v28, flag:I
    const/4 v3, 0x3

    move/from16 v0, v28

    if-ne v0, v3, :cond_101

    .line 420
    :goto_a3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_82

    .line 423
    .end local v28           #flag:I
    .end local v32           #msg_id:I
    :cond_a9
    if-eqz v25, :cond_ae

    .line 424
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 427
    :cond_ae
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->getSize()I

    move-result v3

    move-object/from16 v0, v31

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->MessageListingSize:I

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/map/EmailMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    if-nez v3, :cond_c4

    .line 429
    invoke-virtual {v2}, Lcom/samsung/map/MessagesListingBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->listing:Ljava/lang/String;

    .line 431
    :cond_c4
    const/16 v3, 0xa0

    move-object/from16 v0, v31

    iput v3, v0, Lcom/samsung/map/MessageFolder$MessageListingResponse;->status:I

    goto/16 :goto_3c

    .line 356
    :catch_cc
    move-exception v26

    .line 357
    .local v26, e:Ljava/lang/Exception;
    const-string v3, "EmailMessageFolder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Exeption = "

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    if-eqz v25, :cond_7a

    .line 360
    :try_start_ef
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_fd
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f5

    .line 364
    const/16 v25, 0x0

    .line 365
    goto :goto_7a

    .line 361
    :catch_f5
    move-exception v27

    .line 362
    .local v27, ex:Ljava/lang/Exception;
    :try_start_f6
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_fd

    .line 364
    const/16 v25, 0x0

    .line 365
    goto/16 :goto_7a

    .line 364
    .end local v27           #ex:Ljava/lang/Exception;
    :catchall_fd
    move-exception v3

    const/16 v25, 0x0

    throw v3

    .line 375
    .end local v26           #e:Ljava/lang/Exception;
    .restart local v28       #flag:I
    .restart local v32       #msg_id:I
    :cond_101
    const/4 v3, 0x4

    move/from16 v0, v32

    invoke-static {v0, v3}, Lcom/samsung/map/EmailMessageFolder;->baseToMapID(II)I

    move-result v6

    .line 376
    .local v6, Handle:I
    const-string v3, "subject"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 377
    .local v7, subject:Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    const-string v3, "timeStamp"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    move-wide/from16 v0, v34

    invoke-direct {v8, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 379
    .local v8, DateTime:Ljava/util/Date;
    const-string v3, "fromList"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, sender_name:Ljava/lang/String;
    invoke-static {v9}, Lcom/samsung/map/EmailMessageFolder;->unpack(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v30

    .line 381
    .local v30, hashmap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v9, v3, v5

    .end local v9           #sender_name:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 382
    .restart local v9       #sender_name:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v10, v3, v5

    check-cast v10, Ljava/lang/String;

    .line 384
    .local v10, sender_addressing:Ljava/lang/String;
    const-string v3, "replyToList"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 386
    .local v11, replayto_addressing:Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/map/EmailMessageFolder;->unpack(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v30

    .line 387
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v11, v3, v5

    .end local v11           #replayto_addressing:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 389
    .restart local v11       #replayto_addressing:Ljava/lang/String;
    const-string v3, "toList"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 390
    .local v12, recipient_name:Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/map/EmailMessageFolder;->unpack(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v30

    .line 391
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v12, v3, v5

    .end local v12           #recipient_name:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 392
    .restart local v12       #recipient_name:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v13, v3, v5

    check-cast v13, Ljava/lang/String;

    .line 393
    .local v13, recipient_addressing:Ljava/lang/String;
    const/16 v22, 0x0

    .line 394
    .local v22, protect:Z
    const-string v3, "mailboxKey"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/map/EmailMessageFolder;->getFolderType(I)I

    move-result v29

    .line 396
    .local v29, folderType:I
    const/4 v3, 0x5

    move/from16 v0, v29

    if-ne v0, v3, :cond_209

    const/16 v21, 0x1

    .line 397
    .local v21, sent:Z
    :goto_1bf
    const-string v3, "flagRead"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_20c

    const/16 v20, 0x1

    .line 398
    .local v20, read:Z
    :goto_1d1
    const/16 v19, 0x0

    .line 399
    .local v19, priority:Z
    const-string v3, "flagAttachment"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 400
    .local v24, attachment:I
    const/16 v18, 0x0

    .line 401
    .local v18, attachment_size:I
    if-eqz v24, :cond_1ed

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailMessageFolder;->countAttachmentsSize(I)I

    move-result v18

    .line 406
    :cond_1ed
    if-eqz v28, :cond_1f4

    const/4 v3, 0x2

    move/from16 v0, v28

    if-ne v0, v3, :cond_20f

    .line 407
    :cond_1f4
    const/16 v17, 0x2

    .line 412
    .local v17, reception_status:I
    :goto_1f6
    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/samsung/map/EmailMessageFolder;->countMessageSize(I)I

    move-result v15

    .line 413
    .local v15, size:I
    if-eqz v15, :cond_212

    const/16 v16, 0x1

    .line 414
    .local v16, text:Z
    :goto_202
    const/4 v14, 0x4

    .local v14, type:I
    move-object v5, v2

    .line 416
    invoke-virtual/range {v5 .. v22}, Lcom/samsung/map/MessagesListingBuilder;->addMessage(ILjava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIIZZZZ)Z

    goto/16 :goto_a3

    .line 396
    .end local v14           #type:I
    .end local v15           #size:I
    .end local v16           #text:Z
    .end local v17           #reception_status:I
    .end local v18           #attachment_size:I
    .end local v19           #priority:Z
    .end local v20           #read:Z
    .end local v21           #sent:Z
    .end local v24           #attachment:I
    :cond_209
    const/16 v21, 0x0

    goto :goto_1bf

    .line 397
    .restart local v21       #sent:Z
    :cond_20c
    const/16 v20, 0x0

    goto :goto_1d1

    .line 409
    .restart local v18       #attachment_size:I
    .restart local v19       #priority:Z
    .restart local v20       #read:Z
    .restart local v24       #attachment:I
    :cond_20f
    const/16 v17, 0x0

    .restart local v17       #reception_status:I
    goto :goto_1f6

    .line 413
    .restart local v15       #size:I
    :cond_212
    const/16 v16, 0x0

    goto :goto_202
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/map/MessageFolder;->context:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public setMessagesListingBuilder(Lcom/samsung/map/MessagesListingBuilder;)V
    .registers 2
    .parameter "mlb"

    .prologue
    .line 325
    iput-object p1, p0, Lcom/samsung/map/EmailMessageFolder;->messagesListingBuilder:Lcom/samsung/map/MessagesListingBuilder;

    .line 326
    return-void
.end method
