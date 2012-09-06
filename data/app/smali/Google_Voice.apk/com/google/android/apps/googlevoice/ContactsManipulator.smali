.class public Lcom/google/android/apps/googlevoice/ContactsManipulator;
.super Ljava/lang/Object;
.source "ContactsManipulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
    }
.end annotation


# static fields
.field private static final GOOGLE_VOICE_BACKEND_TMP_NAME:Ljava/lang/String; = "Unknown"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBackendContact(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;
    .registers 7
    .parameter "backendNumber"
    .parameter "context"

    .prologue
    .line 299
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->deleteBackendPhone(Ljava/lang/String;Landroid/content/Context;)V

    .line 304
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 305
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 306
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    const-string v4, "Unknown"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 309
    .local v0, newPerson:Landroid/net/Uri;
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_37

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created new backend contact: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 313
    :cond_37
    const-string v3, "phones"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, phoneUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 317
    const-string v3, "type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 322
    const-string v3, "label"

    const-string v4, "                                                                                                                      "

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "number"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 330
    return-object v0
.end method

.method private static deleteBackendContact(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)Z
    .registers 16
    .parameter "record"
    .parameter "context"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 344
    .local v6, backendContact:Landroid/net/Uri;
    const-string v0, "phones"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, phonesUri:Landroid/net/Uri;
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "number"

    aput-object v0, v2, v12

    .line 351
    .local v2, projectionPhones:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 360
    .local v9, cursorPhone:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 362
    .local v8, count:I
    if-le v8, v13, :cond_41

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Did not find proper contact to delete for: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    move v0, v12

    .line 381
    :goto_40
    return v0

    .line 367
    :cond_41
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 369
    const-string v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 370
    .local v11, numberColumn:I
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 371
    .local v10, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallRecord;->redirectedNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 372
    .local v7, backendNumber:Ljava/lang/String;
    invoke-static {v10, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    move v0, v12

    .line 373
    goto :goto_40

    .line 377
    .end local v7           #backendNumber:Ljava/lang/String;
    .end local v10           #number:Ljava/lang/String;
    .end local v11           #numberColumn:I
    :cond_5f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 378
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_80

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delete backend contact: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    :cond_80
    move v0, v13

    .line 381
    goto :goto_40
.end method

.method private static deleteBackendPhone(Ljava/lang/String;Landroid/content/Context;)V
    .registers 14
    .parameter "backendNumber"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 269
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    .line 272
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    .line 273
    .local v1, mPhones:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number_key = \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 280
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 282
    :cond_37
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 283
    .local v9, idColumn:I
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 285
    .local v8, id:I
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v10, v8

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 286
    .local v6, backendPhone:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 287
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_37

    .line 289
    .end local v6           #backendPhone:Landroid/net/Uri;
    .end local v8           #id:I
    .end local v9           #idColumn:I
    :cond_55
    return-void
.end method

.method public static deleteOrRenameBackendContact(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)Z
    .registers 8
    .parameter "record"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 126
    :goto_6
    return v1

    .line 113
    :cond_7
    sget-boolean v3, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v3, :cond_21

    .line 114
    const-string v3, "Called deleteOrRenameBackendContact with: %s (uri: %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/apps/googlevoice/CallRecord;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 118
    :cond_21
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, backendContact:Landroid/net/Uri;
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->deleteBackendContact(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 123
    const-string v1, "Can not delete backend contact, rename it."

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;)V

    .line 124
    const-string v1, "Unknown"

    invoke-static {v1, v0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->updateContactName(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    :cond_37
    move v1, v2

    .line 126
    goto :goto_6
.end method

.method public static fillContactInfoFromNumber(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;Lcom/google/android/apps/googlevoice/system/VersionHelper;)Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
    .registers 16
    .parameter "number"
    .parameter "context"
    .parameter "contactApiHelper"
    .parameter "versionHelper"

    .prologue
    .line 154
    new-instance v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;

    new-instance v8, Lcom/google/android/apps/googlevoice/ContactsManipulator;

    invoke-direct {v8}, Lcom/google/android/apps/googlevoice/ContactsManipulator;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v8}, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;-><init>(Lcom/google/android/apps/googlevoice/ContactsManipulator;)V

    .line 155
    .local v3, info:Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;
    invoke-interface {p3}, Lcom/google/android/apps/googlevoice/system/VersionHelper;->buildIsDonutOrEarlier()Z

    move-result v8

    if-eqz v8, :cond_31

    .line 157
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 159
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->findContactId(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    .line 160
    .local v1, id:J
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-nez v8, :cond_24

    .line 195
    .end local v1           #id:J
    :cond_23
    :goto_23
    return-object v3

    .line 162
    .restart local v1       #id:J
    :cond_24
    invoke-static {v1, v2, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->findContactName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    .line 163
    invoke-static {p0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->findPhoneType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->type:Ljava/lang/String;

    goto :goto_23

    .line 166
    .end local v1           #id:J
    :cond_31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-interface {p2, v8, p0}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->cursorForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_23

    .line 171
    :try_start_3b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 172
    const/4 v8, 0x0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 173
    .restart local v1       #id:J
    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 174
    .local v6, lookupKey:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 175
    .local v5, localName:Ljava/lang/String;
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_6d

    .line 176
    const-string v8, "phoneLookup returned name=\'%s\', lookupKey=\'%s\', id=\'%d\'"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    const/4 v10, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 179
    :cond_6d
    iput-object v5, v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->name:Ljava/lang/String;

    .line 180
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    const/4 v9, 0x5

    if-lt v8, v9, :cond_8e

    .line 181
    const/4 v8, 0x3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 182
    .local v7, type:I
    const/4 v8, 0x4

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 183
    .local v4, label:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-interface {p2, v8, v7, v4}, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/google/android/apps/googlevoice/ContactsManipulator$ContactInfo;->type:Ljava/lang/String;
    :try_end_8e
    .catchall {:try_start_3b .. :try_end_8e} :catchall_92

    .line 192
    .end local v1           #id:J
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #localName:Ljava/lang/String;
    .end local v6           #lookupKey:Ljava/lang/String;
    .end local v7           #type:I
    :cond_8e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_23

    :catchall_92
    move-exception v8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v8
.end method

.method private static findContactId(Ljava/lang/String;Landroid/content/Context;)J
    .registers 12
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 202
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "number_key"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "person"

    aput-object v4, v2, v0

    .line 207
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, mPhones:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "person ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 216
    .local v7, personId:J
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 217
    const-string v0, "person"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 218
    .local v9, personIdColumn:I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 221
    .end local v9           #personIdColumn:I
    :cond_35
    return-wide v7
.end method

.method private static findContactName(JLandroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "personId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 227
    const-string v7, ""

    .line 228
    .local v7, name:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "name"

    aput-object v1, v2, v0

    .line 231
    .local v2, projectionPerson:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 235
    .local v6, cursorPerson:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 236
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 237
    .local v8, personNameColumn:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    .end local v8           #personNameColumn:I
    :cond_2b
    return-object v7
.end method

.method private static findPhoneType(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .parameter "number"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "number_key"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "type"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "label"

    aput-object v4, v2, v0

    .line 250
    .local v2, projection:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 251
    .local v1, mPhones:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "person ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 259
    .local v8, type:I
    const-string v7, ""

    .line 260
    .local v7, label:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 261
    const-string v0, "type"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 262
    const-string v0, "label"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    :cond_45
    invoke-static {p1, v8, v7}, Landroid/provider/Contacts$Phones;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static renameBackendNumToCallee(Lcom/google/android/apps/googlevoice/CallRecord;Landroid/content/Context;)V
    .registers 15
    .parameter "record"
    .parameter "context"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 52
    const-string v4, ""

    .line 54
    .local v4, contactName:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallRecord;->originalNumber:Ljava/lang/String;

    invoke-static {v8, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->findContactId(Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v2

    .line 55
    .local v2, contactId:J
    cmp-long v8, v2, v11

    if-ltz v8, :cond_13

    .line 56
    invoke-static {v2, v3, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->findContactName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 58
    :cond_13
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_43

    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Callee contactId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Callee contactName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 63
    :cond_43
    if-eqz v4, :cond_4b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_51

    .line 64
    :cond_4b
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallRecord;->originalNumber:Ljava/lang/String;

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    :cond_51
    iget-object v8, p0, Lcom/google/android/apps/googlevoice/CallRecord;->redirectedNumber:Ljava/lang/String;

    invoke-static {v8, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->addBackendContact(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 68
    .local v0, backendContact:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/apps/googlevoice/CallRecord;->backendUri:Ljava/lang/String;

    .line 69
    invoke-static {v4, v0, p1}, Lcom/google/android/apps/googlevoice/ContactsManipulator;->updateContactName(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V

    .line 73
    cmp-long v8, v2, v11

    if-gez v8, :cond_6c

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v0, v10}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 109
    :cond_6b
    :goto_6b
    return-void

    .line 78
    :cond_6c
    const/4 v6, 0x0

    .line 79
    .local v6, photoInputStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 81
    .local v7, photoSize:I
    :try_start_6e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/provider/Contacts$People;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 85
    if-eqz v6, :cond_82

    .line 86
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_81} :catch_aa

    move-result v7

    .line 92
    :cond_82
    :goto_82
    if-eqz v6, :cond_b1

    if-lez v7, :cond_b1

    .line 95
    :try_start_86
    new-array v1, v7, [B

    .line 96
    .local v1, bytePhotoData:[B
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v0, v1}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 98
    sget-boolean v8, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v8, :cond_6b

    .line 99
    const-string v8, "Set new photo for backend contact."

    invoke-static {v8}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_9b} :catch_9c

    goto :goto_6b

    .line 101
    .end local v1           #bytePhotoData:[B
    :catch_9c
    move-exception v5

    .line 103
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v0, v10}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 104
    const-string v8, "Can not read photo"

    invoke-static {v8, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    .line 88
    .end local v5           #e:Ljava/io/IOException;
    :catch_aa
    move-exception v5

    .line 89
    .restart local v5       #e:Ljava/io/IOException;
    const-string v8, "Can not get photo size"

    invoke-static {v8, v5}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_82

    .line 107
    .end local v5           #e:Ljava/io/IOException;
    :cond_b1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v0, v10}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    goto :goto_6b
.end method

.method private static updateContactName(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;)V
    .registers 6
    .parameter "name"
    .parameter "person"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 336
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 337
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 339
    return-void
.end method
