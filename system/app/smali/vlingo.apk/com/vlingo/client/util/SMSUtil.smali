.class public Lcom/vlingo/client/util/SMSUtil;
.super Ljava/lang/Object;
.source "SMSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/util/SMSUtil$1;,
        Lcom/vlingo/client/util/SMSUtil$TextMessage;,
        Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final MESSAGE_TYPE_DRAFT:I = 0x3

.field public static final MESSAGE_TYPE_FAILED:I = 0x5

.field public static final MESSAGE_TYPE_INBOX:I = 0x1

.field public static final MESSAGE_TYPE_OUTBOX:I = 0x4

.field public static final MESSAGE_TYPE_QUEUED:I = 0x6

.field public static final MESSAGE_TYPE_SENT:I = 0x2

.field public static final READ:Ljava/lang/String; = "read"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final STATUS_PENDING:I = 0x40

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    return-void
.end method

.method public static addMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;
    .registers 17
    .parameter "c"
    .parameter "address"
    .parameter "body"
    .parameter "date"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 355
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 357
    .local v1, CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move v7, p4

    move-wide v8, p5

    invoke-static/range {v0 .. v9}, Lcom/vlingo/client/util/SMSUtil;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .registers 14
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 468
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 470
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    if-eqz p5, :cond_12

    .line 472
    const-string v2, "date"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    :cond_12
    const-string v3, "read"

    if-eqz p6, :cond_49

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1b
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    const-string v2, "subject"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    if-eqz p7, :cond_35

    .line 478
    const-string v2, "status"

    const/16 v3, 0x40

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 480
    :cond_35
    const-wide/16 v2, -0x1

    cmp-long v2, p8, v2

    if-eqz v2, :cond_44

    .line 481
    const-string v2, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 483
    :cond_44
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 487
    .local v0, newUri:Landroid/net/Uri;
    return-object v0

    .line 474
    .end local v0           #newUri:Landroid/net/Uri;
    :cond_49
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1b
.end method

.method public static findMatchingDisplayItemInInboxOutbox(Landroid/content/Context;[Lcom/vlingo/client/core/contacts/DisplayItem;)Lcom/vlingo/client/core/contacts/DisplayItem;
    .registers 34
    .parameter "context"
    .parameter "items"

    .prologue
    .line 184
    if-eqz p1, :cond_7

    move-object/from16 v0, p1

    array-length v2, v0

    if-nez v2, :cond_a

    .line 185
    :cond_7
    const/16 v21, 0x0

    .line 294
    :cond_9
    :goto_9
    return-object v21

    .line 188
    :cond_a
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 189
    .local v3, uriSmsInbox:Landroid/net/Uri;
    const-string v2, "content://sms/outbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 191
    .local v31, uriSmsOutbox:Landroid/net/Uri;
    const/16 v21, 0x0

    .line 192
    .local v21, foundItemInbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    const/16 v22, 0x0

    .line 193
    .local v22, foundItemOutbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    const-wide/16 v17, -0x1

    .line 194
    .local v17, foundItemDateInbox:J
    const-wide/16 v19, -0x1

    .line 197
    .local v19, foundItemDateOutobx:J
    new-instance v26, Ljava/util/Hashtable;

    invoke-direct/range {v26 .. v26}, Ljava/util/Hashtable;-><init>()V

    .line 198
    .local v26, itemAddressTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    new-instance v27, Ljava/util/Hashtable;

    invoke-direct/range {v27 .. v27}, Ljava/util/Hashtable;-><init>()V

    .line 199
    .local v27, itemIDTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Long;Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    move-object/from16 v11, p1

    .local v11, arr$:[Lcom/vlingo/client/core/contacts/DisplayItem;
    array-length v0, v11

    move/from16 v28, v0

    .local v28, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    :goto_2f
    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_63

    aget-object v25, v11, v23

    .line 200
    .local v25, item:Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual/range {v25 .. v25}, Lcom/vlingo/client/core/contacts/DisplayItem;->getContactDetail()Lcom/vlingo/client/core/contacts/ContactDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/ContactDetail;->getAddress()Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, address:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    if-eqz v10, :cond_4c

    .line 203
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_4c
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v2}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    add-int/lit8 v23, v23, 0x1

    goto :goto_2f

    .line 210
    .end local v10           #address:Ljava/lang/String;
    .end local v25           #item:Lcom/vlingo/client/core/contacts/DisplayItem;
    :cond_63
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 211
    .local v12, c:Landroid/database/Cursor;
    invoke-static {v12}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 214
    const/16 v24, 0x0

    .line 216
    .local v24, index:I
    :cond_7e
    const-string v2, "address"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 217
    .restart local v10       #address:Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    .line 218
    .local v29, msgBody:Ljava/lang/String;
    const-string v2, "person"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 219
    .local v13, contactID:J
    const-string v2, "date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 220
    .local v15, date:J
    move-object/from16 v0, p0

    invoke-static {v13, v14, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 221
    .local v30, name:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 226
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_145

    .line 229
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #foundItemInbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    check-cast v21, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 230
    .restart local v21       #foundItemInbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    move-wide/from16 v17, v15

    .line 244
    .end local v10           #address:Ljava/lang/String;
    .end local v13           #contactID:J
    .end local v15           #date:J
    .end local v24           #index:I
    .end local v29           #msgBody:Ljava/lang/String;
    .end local v30           #name:Ljava/lang/String;
    :cond_ca
    :goto_ca
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 247
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    move-object/from16 v5, v31

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 248
    invoke-static {v12}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_136

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 251
    const/16 v24, 0x0

    .line 253
    .restart local v24       #index:I
    :cond_ea
    const-string v2, "address"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    .line 254
    .restart local v10       #address:Ljava/lang/String;
    const-string v2, "body"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v29

    .line 255
    .restart local v29       #msgBody:Ljava/lang/String;
    const-string v2, "person"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 256
    .restart local v13       #contactID:J
    const-string v2, "date"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 257
    .restart local v15       #date:J
    move-object/from16 v0, p0

    invoke-static {v13, v14, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    .line 258
    .restart local v30       #name:Ljava/lang/String;
    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 263
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_171

    .line 266
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #foundItemOutbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    check-cast v22, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 267
    .restart local v22       #foundItemOutbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    move-wide/from16 v19, v15

    .line 281
    .end local v10           #address:Ljava/lang/String;
    .end local v13           #contactID:J
    .end local v15           #date:J
    .end local v24           #index:I
    .end local v29           #msgBody:Ljava/lang/String;
    .end local v30           #name:Ljava/lang/String;
    :cond_136
    :goto_136
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 284
    if-eqz v21, :cond_19b

    if-eqz v22, :cond_19b

    .line 285
    cmp-long v2, v17, v19

    if-gtz v2, :cond_9

    move-object/from16 v21, v22

    .line 288
    goto/16 :goto_9

    .line 233
    .restart local v10       #address:Ljava/lang/String;
    .restart local v13       #contactID:J
    .restart local v15       #date:J
    .restart local v24       #index:I
    .restart local v29       #msgBody:Ljava/lang/String;
    .restart local v30       #name:Ljava/lang/String;
    :cond_145
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_161

    .line 236
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #foundItemInbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    check-cast v21, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 237
    .restart local v21       #foundItemInbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    move-wide/from16 v17, v15

    .line 238
    goto/16 :goto_ca

    .line 241
    :cond_161
    add-int/lit8 v24, v24, 0x1

    .line 242
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    const/16 v2, 0xa

    move/from16 v0, v24

    if-lt v0, v2, :cond_7e

    goto/16 :goto_ca

    .line 270
    :cond_171
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18c

    .line 273
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #foundItemOutbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    check-cast v22, Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 274
    .restart local v22       #foundItemOutbox:Lcom/vlingo/client/core/contacts/DisplayItem;
    move-wide/from16 v19, v15

    .line 275
    goto :goto_136

    .line 278
    :cond_18c
    add-int/lit8 v24, v24, 0x1

    .line 279
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_136

    const/16 v2, 0xa

    move/from16 v0, v24

    if-lt v0, v2, :cond_ea

    goto :goto_136

    .line 289
    .end local v10           #address:Ljava/lang/String;
    .end local v13           #contactID:J
    .end local v15           #date:J
    .end local v24           #index:I
    .end local v29           #msgBody:Ljava/lang/String;
    .end local v30           #name:Ljava/lang/String;
    :cond_19b
    if-nez v21, :cond_9

    .line 291
    if-eqz v22, :cond_1a3

    move-object/from16 v21, v22

    .line 292
    goto/16 :goto_9

    .line 294
    :cond_1a3
    const/16 v21, 0x0

    goto/16 :goto_9
.end method

.method public static findMatchingDisplayItemInInboxOutbox(Landroid/content/Context;[Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;)Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
    .registers 13
    .parameter "context"
    .parameter "items"

    .prologue
    const/4 v8, 0x0

    .line 298
    if-eqz p1, :cond_6

    array-length v9, p1

    if-nez v9, :cond_8

    :cond_6
    move-object v6, v8

    .line 317
    :goto_7
    return-object v6

    .line 301
    :cond_8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 302
    .local v0, allDisplayItems:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/DisplayItem;>;"
    move-object v2, p1

    .local v2, arr$:[Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    array-length v5, v2

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_10
    if-ge v3, v5, :cond_1e

    aget-object v4, v2, v3

    .line 303
    .local v4, item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    invoke-virtual {v4}, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->getDisplayItems()Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 306
    .end local v4           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_1e
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v9

    new-array v1, v9, [Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 307
    .local v1, allDisplayItemsArray:[Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1           #allDisplayItemsArray:[Lcom/vlingo/client/core/contacts/DisplayItem;
    check-cast v1, [Lcom/vlingo/client/core/contacts/DisplayItem;

    .line 308
    .restart local v1       #allDisplayItemsArray:[Lcom/vlingo/client/core/contacts/DisplayItem;
    invoke-static {p0, v1}, Lcom/vlingo/client/util/SMSUtil;->findMatchingDisplayItemInInboxOutbox(Landroid/content/Context;[Lcom/vlingo/client/core/contacts/DisplayItem;)Lcom/vlingo/client/core/contacts/DisplayItem;

    move-result-object v7

    .line 309
    .local v7, matchedItem:Lcom/vlingo/client/core/contacts/DisplayItem;
    if-eqz v7, :cond_4e

    .line 310
    move-object v2, p1

    array-length v5, v2

    const/4 v3, 0x0

    :goto_33
    if-ge v3, v5, :cond_4e

    aget-object v4, v2, v3

    .line 311
    .restart local v4       #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    iget-object v9, v4, Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v9}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v9

    iget-object v10, v7, Lcom/vlingo/client/core/contacts/DisplayItem;->contact:Lcom/vlingo/client/core/contacts/VlingoContact;

    invoke-virtual {v10}, Lcom/vlingo/client/core/contacts/VlingoContact;->getId()I

    move-result v10

    if-ne v9, v10, :cond_4b

    .line 312
    new-instance v6, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;

    invoke-direct {v6, v4, v7, v8}, Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;-><init>(Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;Lcom/vlingo/client/core/contacts/DisplayItem;Lcom/vlingo/client/util/SMSUtil$1;)V

    .line 313
    .local v6, match:Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
    goto :goto_7

    .line 310
    .end local v6           #match:Lcom/vlingo/client/util/SMSUtil$GroupedDisplayItemMatch;
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .end local v4           #item:Lcom/vlingo/client/android/core/contacts/AndroidSortedContactList$GroupedDisplayItem;
    :cond_4e
    move-object v6, v8

    .line 317
    goto :goto_7
.end method

.method public static getLastNUnreadMessages(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 16
    .parameter "context"
    .parameter "limit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    .local v1, uriSmsInbox:Landroid/net/Uri;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 146
    .local v13, messages:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "read = 0"

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 147
    .local v10, c:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 148
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 153
    const/4 v12, 0x0

    .line 155
    .local v12, index:I
    :cond_26
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 156
    .local v6, id:J
    const-string v0, "address"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, address:Ljava/lang/String;
    const-string v0, "body"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, msgBody:Ljava/lang/String;
    const-string v0, "date"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 159
    .local v8, date:J
    invoke-static {v3, p0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullNameFromPhoneNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, name:Ljava/lang/String;
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    new-instance v2, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct/range {v2 .. v9}, Lcom/vlingo/client/util/SMSUtil$TextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 164
    .local v2, msg:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    invoke-virtual {v13, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v12, v12, 0x1

    .line 166
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_66} :catch_6c

    move-result v0

    if-eqz v0, :cond_6b

    if-lt v12, p1, :cond_26

    .line 175
    .end local v2           #msg:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #msgBody:Ljava/lang/String;
    .end local v6           #id:J
    .end local v8           #date:J
    .end local v10           #c:Landroid/database/Cursor;
    .end local v12           #index:I
    :cond_6b
    :goto_6b
    return-object v13

    .line 169
    :catch_6c
    move-exception v11

    .line 172
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b
.end method

.method public static getMostRecentMessageFromInbox(Landroid/content/Context;)Lcom/vlingo/client/util/SMSUtil$TextMessage;
    .registers 4
    .parameter "context"

    .prologue
    .line 555
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/vlingo/client/util/SMSUtil;->getRecentMessagesFromInbox(Landroid/content/Context;ZI)Ljava/util/Vector;

    move-result-object v0

    .line 556
    .local v0, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 557
    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    .line 560
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getRecentMessagesFromInbox(Landroid/content/Context;Z)Ljava/util/Vector;
    .registers 3
    .parameter "context"
    .parameter "onlyShowMostRecentMessageFromEachContact"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    const/16 v0, 0x14

    invoke-static {p0, p1, v0}, Lcom/vlingo/client/util/SMSUtil;->getRecentMessagesFromInbox(Landroid/content/Context;ZI)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentMessagesFromInbox(Landroid/content/Context;ZI)Ljava/util/Vector;
    .registers 23
    .parameter "context"
    .parameter "onlyShowMostRecentMessageFromEachContact"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/SMSUtil$TextMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 569
    .local v14, result:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/SMSUtil$TextMessage;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 570
    .local v15, seenAddresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 572
    .local v11, cur:Landroid/database/Cursor;
    move/from16 v17, p2

    .line 573
    .local v17, uniqueLimit:I
    const/16 v16, 0x32

    .line 574
    .local v16, totalLimit:I
    const/4 v13, 0x0

    .line 575
    .local v13, index:I
    :try_start_10
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 576
    .local v2, uriSms:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 577
    invoke-static {v11}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_90

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 579
    :cond_2f
    const-string v1, "address"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    .local v4, address:Ljava/lang/String;
    if-eqz v4, :cond_7c

    .line 585
    if-eqz p1, :cond_47

    invoke-virtual {v15, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7c

    .line 587
    :cond_47
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 590
    .local v7, contactID:J
    const-wide/16 v18, -0x1

    cmp-long v1, v7, v18

    if-eqz v1, :cond_96

    .line 591
    move-object/from16 v0, p0

    invoke-static {v7, v8, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, name:Ljava/lang/String;
    :goto_59
    const-string v1, "body"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, body:Ljava/lang/String;
    const-string v1, "date"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 602
    .local v9, date:J
    new-instance v3, Lcom/vlingo/client/util/SMSUtil$TextMessage;

    invoke-direct/range {v3 .. v10}, Lcom/vlingo/client/util/SMSUtil$TextMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 603
    .local v3, message:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    invoke-virtual {v14, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v15, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v3           #message:Lcom/vlingo/client/util/SMSUtil$TextMessage;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #body:Ljava/lang/String;
    .end local v7           #contactID:J
    .end local v9           #date:J
    :cond_7c
    add-int/lit8 v13, v13, 0x1

    .line 608
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_90

    const/16 v1, 0x32

    if-ge v13, v1, :cond_90

    invoke-virtual {v14}, Ljava/util/Vector;->size()I
    :try_end_8b
    .catchall {:try_start_10 .. :try_end_8b} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8b} :catch_a8

    move-result v1

    move/from16 v0, v17

    if-lt v1, v0, :cond_2f

    .line 614
    .end local v4           #address:Ljava/lang/String;
    :cond_90
    if-eqz v11, :cond_95

    :try_start_92
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_9b

    .line 617
    .end local v2           #uriSms:Landroid/net/Uri;
    :cond_95
    :goto_95
    return-object v14

    .line 593
    .restart local v2       #uriSms:Landroid/net/Uri;
    .restart local v4       #address:Ljava/lang/String;
    .restart local v7       #contactID:J
    :cond_96
    :try_start_96
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_c7
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_99} :catch_a8

    move-result-object v5

    .restart local v5       #name:Ljava/lang/String;
    goto :goto_59

    .line 614
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #contactID:J
    :catch_9b
    move-exception v12

    .line 615
    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 611
    .end local v2           #uriSms:Landroid/net/Uri;
    .end local v12           #ex:Ljava/lang/Exception;
    :catch_a8
    move-exception v12

    .line 612
    .restart local v12       #ex:Ljava/lang/Exception;
    :try_start_a9
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catchall {:try_start_a9 .. :try_end_b4} :catchall_c7

    .line 614
    if-eqz v11, :cond_95

    :try_start_b6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_95

    :catch_ba
    move-exception v12

    .line 615
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 614
    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_c7
    move-exception v1

    if-eqz v11, :cond_cd

    :try_start_ca
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_cd} :catch_ce

    .line 616
    :cond_cd
    :goto_cd
    throw v1

    .line 614
    :catch_ce
    move-exception v12

    .line 615
    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v18, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method public static getSMSIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .parameter "address"
    .parameter "body"

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "address"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method public static getSMSReplyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 21
    .parameter "context"
    .parameter "to"
    .parameter "body"

    .prologue
    .line 44
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 46
    .local v2, uriSms:Landroid/net/Uri;
    const/4 v14, 0x0

    .line 47
    .local v14, replyAddress:Ljava/lang/String;
    const/16 v16, 0x0

    .line 48
    .local v16, replyName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 50
    .local v15, replyMsgBody:Ljava/lang/String;
    if-eqz p1, :cond_8a

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8a

    .line 52
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 53
    .local v17, toWords:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 54
    .local v8, c:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 56
    :cond_39
    const-string v1, "address"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, address:Ljava/lang/String;
    const-string v1, "body"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, msgBody:Ljava/lang/String;
    const-string v1, "person"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 59
    .local v9, contactID:J
    move-object/from16 v0, p0

    invoke-static {v9, v10, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 62
    .local v12, name:Ljava/lang/String;
    if-eqz v12, :cond_db

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_db

    .line 63
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 64
    .local v13, nameWords:[Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/vlingo/client/util/SMSUtil;->isNameMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 67
    move-object v14, v7

    .line 68
    move-object/from16 v16, v12

    .line 69
    move-object v15, v11

    .line 75
    .end local v7           #address:Ljava/lang/String;
    .end local v9           #contactID:J
    .end local v11           #msgBody:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #nameWords:[Ljava/lang/String;
    :cond_87
    :goto_87
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    .end local v8           #c:Landroid/database/Cursor;
    .end local v17           #toWords:[Ljava/lang/String;
    :cond_8a
    if-nez v14, :cond_d4

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    .restart local v8       #c:Landroid/database/Cursor;
    invoke-static {v8}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_d1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 82
    const-string v1, "address"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    .line 83
    const-string v1, "body"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    .line 84
    const-string v1, "person"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 85
    .restart local v9       #contactID:J
    move-object/from16 v0, p0

    invoke-static {v9, v10, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 89
    .end local v9           #contactID:J
    :cond_d1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 95
    .end local v8           #c:Landroid/database/Cursor;
    :cond_d4
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/vlingo/client/util/SMSUtil;->getSMSIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 73
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v9       #contactID:J
    .restart local v11       #msgBody:Ljava/lang/String;
    .restart local v12       #name:Ljava/lang/String;
    .restart local v17       #toWords:[Ljava/lang/String;
    :cond_db
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_39

    goto :goto_87
.end method

.method private static isNameMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6
    .parameter "name1"
    .parameter "name2"

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1a

    .line 131
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_17

    .line 132
    aget-object v2, p0, v0

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 133
    const/4 v2, 0x1

    .line 137
    .end local v1           #j:I
    :goto_13
    return v2

    .line 131
    .restart local v1       #j:I
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 130
    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 137
    .end local v1           #j:I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public static markSMSAsRead(Landroid/content/Context;J)V
    .registers 8
    .parameter "context"
    .parameter "smsID"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, smsUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;I)Z
    .registers 12
    .parameter "context"
    .parameter "uri"
    .parameter "folder"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 505
    if-nez p1, :cond_5

    .line 550
    :goto_4
    return v5

    .line 511
    :cond_5
    const/4 v1, 0x0

    .line 512
    .local v1, markAsUnread:Z
    const/4 v0, 0x0

    .line 513
    .local v0, markAsRead:Z
    packed-switch p2, :pswitch_data_48

    goto :goto_4

    .line 529
    :goto_b
    :pswitch_b
    new-instance v3, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 531
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 532
    if-eqz v1, :cond_38

    .line 533
    const-string v6, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    :cond_25
    :goto_25
    const/4 v2, 0x0

    .line 541
    .local v2, result:I
    :try_start_26
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v3, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2f} :catch_46

    move-result v2

    .line 550
    :goto_30
    if-ne v4, v2, :cond_44

    :goto_32
    move v5, v4

    goto :goto_4

    .line 519
    .end local v2           #result:I
    .end local v3           #values:Landroid/content/ContentValues;
    :pswitch_34
    const/4 v0, 0x1

    .line 520
    goto :goto_b

    .line 523
    :pswitch_36
    const/4 v1, 0x1

    .line 524
    goto :goto_b

    .line 534
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_38
    if-eqz v0, :cond_25

    .line 535
    const-string v6, "read"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_25

    .restart local v2       #result:I
    :cond_44
    move v4, v5

    .line 550
    goto :goto_32

    .line 542
    :catch_46
    move-exception v6

    goto :goto_30

    .line 513
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_b
        :pswitch_34
        :pswitch_b
        :pswitch_34
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method
