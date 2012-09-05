.class public Lcom/vlingo/client/util/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;,
        Lcom/vlingo/client/util/ContactUtil$Contact;,
        Lcom/vlingo/client/util/ContactUtil$SortType;
    }
.end annotation


# static fields
.field private static final MAX_RECENTS:I = 0xf

.field private static final MAX_STARRED:I = 0x1e


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    return-void
.end method

.method public static getContactFullName(JLandroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "contactId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 104
    const/4 v6, 0x0

    .line 105
    .local v6, cur:Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-eqz v0, :cond_20

    .line 106
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 107
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 111
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_20
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 112
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 113
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 114
    .local v8, nameColumn:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 115
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_39

    .line 121
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameColumn:I
    :goto_38
    return-object v7

    .line 119
    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_3c
    const-string v7, ""

    goto :goto_38
.end method

.method public static getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 377
    const/4 v7, 0x0

    .line 379
    .local v7, cur:Landroid/database/Cursor;
    :try_start_2
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 380
    .local v1, contacts:Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "number"

    aput-object v4, v2, v0

    .line 381
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "type=2"

    .line 382
    .local v3, where:Ljava/lang/String;
    const-string v5, "date DESC"

    .line 383
    .local v5, orderBy:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 384
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 385
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 386
    const-string v0, "number"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 388
    .local v9, numberColumn:I
    :cond_30
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_33} :catch_5f

    move-result-object v6

    .line 389
    .local v6, address:Ljava/lang/String;
    if-eqz v6, :cond_47

    .line 398
    if-eqz v7, :cond_3b

    :try_start_38
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 401
    .end local v1           #contacts:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v6           #address:Ljava/lang/String;
    .end local v9           #numberColumn:I
    :cond_3b
    :goto_3b
    return-object v6

    .line 398
    .restart local v1       #contacts:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v5       #orderBy:Ljava/lang/String;
    .restart local v6       #address:Ljava/lang/String;
    .restart local v9       #numberColumn:I
    :catch_3c
    move-exception v8

    .line 399
    .local v8, ex:Ljava/lang/Exception;
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 392
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_47
    :try_start_47
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_5f

    move-result v0

    if-nez v0, :cond_30

    .line 398
    .end local v6           #address:Ljava/lang/String;
    .end local v9           #numberColumn:I
    :cond_4d
    if-eqz v7, :cond_52

    :try_start_4f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_54

    .end local v1           #contacts:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    :cond_52
    :goto_52
    move-object v6, v10

    .line 401
    goto :goto_3b

    .line 398
    .restart local v1       #contacts:Landroid/net/Uri;
    .restart local v2       #projection:[Ljava/lang/String;
    .restart local v3       #where:Ljava/lang/String;
    .restart local v5       #orderBy:Ljava/lang/String;
    :catch_54
    move-exception v8

    .line 399
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 395
    .end local v1           #contacts:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #orderBy:Ljava/lang/String;
    .end local v8           #ex:Ljava/lang/Exception;
    :catch_5f
    move-exception v8

    .line 396
    .restart local v8       #ex:Ljava/lang/Exception;
    :try_start_60
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_7a

    .line 398
    if-eqz v7, :cond_52

    :try_start_6b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_52

    :catch_6f
    move-exception v8

    .line 399
    const-string v0, "VLG_EXCEPTION"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 398
    .end local v8           #ex:Ljava/lang/Exception;
    :catchall_7a
    move-exception v0

    if-eqz v7, :cond_80

    :try_start_7d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    .line 400
    :cond_80
    :goto_80
    throw v0

    .line 398
    :catch_81
    move-exception v8

    .line 399
    .restart local v8       #ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80
.end method

.method public static getLocalizedTypeString(Landroid/content/Context;ILjava/lang/Integer;)Ljava/lang/String;
    .registers 6
    .parameter "context"
    .parameter "type"
    .parameter "index"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, toReturn:Ljava/lang/String;
    packed-switch p1, :pswitch_data_48

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, p1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_16
    if-eqz p2, :cond_2f

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_2f
    return-object v0

    .line 150
    :pswitch_30
    const v1, 0x7f0900cb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    goto :goto_16

    .line 153
    :pswitch_38
    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    goto :goto_16

    .line 156
    :pswitch_40
    const v1, 0x7f09019b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_16

    .line 148
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_30
        :pswitch_38
        :pswitch_40
    .end packed-switch
.end method

.method public static getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J
    .registers 12
    .parameter "context"
    .parameter "address"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 210
    if-nez p1, :cond_8

    move-wide v0, v8

    .line 227
    :goto_7
    return-wide v0

    .line 213
    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 218
    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_43

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 220
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 221
    .local v7, id:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_48

    move-result-wide v0

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .end local v7           #id:Ljava/lang/Long;
    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_46
    move-wide v0, v8

    .line 227
    goto :goto_7

    .line 224
    :catchall_48
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhoneTypeForContactId(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 16
    .parameter "contact"
    .parameter "contactId"
    .parameter "phoneNumber"

    .prologue
    .line 169
    const-string v11, ""

    .line 170
    .local v11, phoneType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 173
    .local v10, orgCur:Landroid/database/Cursor;
    :try_start_3
    const-string v3, "contact_id = ? AND mimetype = ?"

    .line 174
    .local v3, orgWhere:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v4, v0

    .line 178
    .local v4, orgWhereParams:[Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data2"

    aput-object v1, v2, v0

    .line 183
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 186
    const-string v0, "data2"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 187
    .local v8, idxType:I
    const-string v0, "data1"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 188
    .local v7, idxNumber:I
    invoke-static {p3}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 190
    :cond_3c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 191
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 192
    .local v9, number:Ljava/lang/String;
    invoke-static {v9}, Lcom/vlingo/client/core/util/StringUtils;->cleanPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/vlingo/client/core/util/StringUtils;->arePhoneNumbersTheSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 193
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 194
    .local v6, iPhoneType:I
    invoke-static {p0, v6}, Lcom/vlingo/client/util/ContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_5e

    move-result-object v11

    .line 200
    .end local v6           #iPhoneType:I
    .end local v9           #number:Ljava/lang/String;
    :cond_58
    if-eqz v10, :cond_5d

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_5d
    return-object v11

    .line 200
    .end local v2           #projection:[Ljava/lang/String;
    .end local v3           #orgWhere:Ljava/lang/String;
    .end local v4           #orgWhereParams:[Ljava/lang/String;
    .end local v7           #idxNumber:I
    .end local v8           #idxType:I
    :catchall_5e
    move-exception v0

    if-eqz v10, :cond_64

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_64
    throw v0
.end method

.method public static getPhoto(Landroid/content/Context;J)Ljava/lang/String;
    .registers 11
    .parameter "context"
    .parameter "contactId"

    .prologue
    const/4 v3, 0x0

    .line 63
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 64
    .local v6, contactUri:Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    .local v7, cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 79
    :goto_25
    return-object v3

    .line 73
    :cond_26
    :try_start_26
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 74
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_38

    move-result-object v3

    .line 77
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :cond_34
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :catchall_38
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhotoUri(Landroid/content/Context;J)Landroid/net/Uri;
    .registers 11
    .parameter "context"
    .parameter "contactId"

    .prologue
    const/4 v3, 0x0

    .line 45
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 46
    .local v6, contactUri:Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    .local v1, photoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 49
    .local v7, cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 59
    :goto_25
    return-object v3

    .line 53
    :cond_26
    :try_start_26
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_35

    move-result v0

    if-eqz v0, :cond_31

    .line 57
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v1

    goto :goto_25

    :cond_31
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_25

    :catchall_35
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getRecentlyCalledContacts(Landroid/content/Context;)Ljava/util/Vector;
    .registers 26
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    new-instance v21, Ljava/util/Vector;

    invoke-direct/range {v21 .. v21}, Ljava/util/Vector;-><init>()V

    .line 486
    .local v21, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    const/4 v9, 0x0

    .line 490
    .local v9, cur:Landroid/database/Cursor;
    :try_start_6
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 491
    .local v3, contacts:Landroid/net/Uri;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "number"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "name"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v4, v2

    const/4 v2, 0x4

    const-string v5, "type"

    aput-object v5, v4, v2

    .line 492
    .local v4, projection:[Ljava/lang/String;
    const-string v7, "date DESC LIMIT 15"

    .line 494
    .local v7, orderBy:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 496
    const/16 v18, 0x0

    .line 497
    .local v18, numContacts:I
    invoke-static {v9}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 498
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_cc

    .line 499
    new-instance v8, Ljava/util/Hashtable;

    const/16 v2, 0xf

    invoke-direct {v8, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 501
    .local v8, contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;>;"
    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 502
    .local v15, idColumn:I
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 503
    .local v17, nameColumn:I
    const-string v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 504
    .local v20, numberColumn:I
    const-string v2, "date"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 505
    .local v12, dateColumn:I
    const-string v2, "type"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 508
    .local v23, typeColumn:I
    :cond_63
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 509
    .local v14, id:I
    move/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, name:Ljava/lang/String;
    move/from16 v0, v20

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 511
    .local v19, number:Ljava/lang/String;
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 512
    .local v10, date:J
    move/from16 v0, v23

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 514
    .local v22, type:I
    invoke-static/range {v16 .. v16}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 515
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 518
    :cond_87
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    .line 519
    .local v24, vc:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
    if-nez v24, :cond_c0

    .line 520
    new-instance v24, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;

    .end local v24           #vc:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;-><init>(Ljava/lang/String;)V

    .line 521
    .restart local v24       #vc:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->setId(I)V

    .line 522
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->type:I

    .line 524
    move-object/from16 v0, v24

    iput-wide v10, v0, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->date:J

    .line 525
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;->addNumber(Ljava/lang/String;)V

    .line 526
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 527
    add-int/lit8 v18, v18, 0x1

    .line 530
    :cond_c0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_c3
    .catchall {:try_start_6 .. :try_end_c3} :catchall_f8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c3} :catch_dd

    move-result v2

    if-eqz v2, :cond_cc

    const/16 v2, 0xf

    move/from16 v0, v18

    if-lt v0, v2, :cond_63

    .line 537
    .end local v8           #contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;>;"
    .end local v10           #date:J
    .end local v12           #dateColumn:I
    .end local v14           #id:I
    .end local v15           #idColumn:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #nameColumn:I
    .end local v19           #number:Ljava/lang/String;
    .end local v20           #numberColumn:I
    .end local v22           #type:I
    .end local v23           #typeColumn:I
    .end local v24           #vc:Lcom/vlingo/client/util/ContactUtil$RecentVlingoContact;
    :cond_cc
    if-eqz v9, :cond_d1

    :try_start_ce
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d1} :catch_d2

    .line 540
    .end local v3           #contacts:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v18           #numContacts:I
    :cond_d1
    :goto_d1
    return-object v21

    .line 537
    .restart local v3       #contacts:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    .restart local v18       #numContacts:I
    :catch_d2
    move-exception v13

    .line 538
    .local v13, ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 534
    .end local v3           #contacts:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v13           #ex:Ljava/lang/Exception;
    .end local v18           #numContacts:I
    :catch_dd
    move-exception v13

    .line 535
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_de
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_de .. :try_end_e7} :catchall_f8

    .line 537
    if-eqz v9, :cond_d1

    :try_start_e9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_d1

    :catch_ed
    move-exception v13

    .line 538
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    .line 537
    .end local v13           #ex:Ljava/lang/Exception;
    :catchall_f8
    move-exception v2

    if-eqz v9, :cond_fe

    :try_start_fb
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fe} :catch_ff

    .line 539
    :cond_fe
    :goto_fe
    throw v2

    .line 537
    :catch_ff
    move-exception v13

    .line 538
    .restart local v13       #ex:Ljava/lang/Exception;
    const-string v5, "VLG_EXCEPTION"

    invoke-static {v13}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fe
.end method

.method public static getRecentlyCalledContacts(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 19
    .parameter "context"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 405
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 406
    .local v15, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 407
    .local v16, seenAddresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 409
    .local v10, cur:Landroid/database/Cursor;
    :try_start_b
    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 410
    .local v2, contacts:Landroid/net/Uri;
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "name"

    aput-object v4, v3, v1

    .line 411
    .local v3, projection:[Ljava/lang/String;
    const-string v6, "date DESC"

    .line 412
    .local v6, orderBy:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 413
    invoke-static {v10}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 414
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 415
    const-string v1, "number"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 416
    .local v14, numberColumn:I
    const-string v1, "name"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 418
    .local v13, nameColumn:I
    :cond_3e
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 419
    .local v7, address:Ljava/lang/String;
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 420
    .local v12, name:Ljava/lang/String;
    if-eqz v7, :cond_75

    .line 421
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 422
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 423
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 424
    .local v8, contactId:J
    const-wide/16 v4, -0x1

    cmp-long v1, v8, v4

    if-eqz v1, :cond_75

    .line 425
    if-eqz v12, :cond_75

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_75

    .line 426
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 427
    new-instance v1, Lcom/vlingo/client/util/ContactUtil$Contact;

    invoke-direct {v1, v8, v9, v12}, Lcom/vlingo/client/util/ContactUtil$Contact;-><init>(JLjava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 432
    .end local v8           #contactId:J
    :cond_75
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-virtual {v15}, Ljava/util/Vector;->size()I
    :try_end_7e
    .catchall {:try_start_b .. :try_end_7e} :catchall_af
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_7e} :catch_94

    move-result v1

    move/from16 v0, p1

    if-lt v1, v0, :cond_3e

    .line 438
    .end local v7           #address:Ljava/lang/String;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #nameColumn:I
    .end local v14           #numberColumn:I
    :cond_83
    if-eqz v10, :cond_88

    :try_start_85
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    .line 441
    .end local v2           #contacts:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    :cond_88
    :goto_88
    return-object v15

    .line 438
    .restart local v2       #contacts:Landroid/net/Uri;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v6       #orderBy:Ljava/lang/String;
    :catch_89
    move-exception v11

    .line 439
    .local v11, ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 435
    .end local v2           #contacts:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v6           #orderBy:Ljava/lang/String;
    .end local v11           #ex:Ljava/lang/Exception;
    :catch_94
    move-exception v11

    .line 436
    .restart local v11       #ex:Ljava/lang/Exception;
    :try_start_95
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_af

    .line 438
    if-eqz v10, :cond_88

    :try_start_a0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_88

    :catch_a4
    move-exception v11

    .line 439
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_88

    .line 438
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_af
    move-exception v1

    if-eqz v10, :cond_b5

    :try_start_b2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b5} :catch_b6

    .line 440
    :cond_b5
    :goto_b5
    throw v1

    .line 438
    :catch_b6
    move-exception v11

    .line 439
    .restart local v11       #ex:Ljava/lang/Exception;
    const-string v4, "VLG_EXCEPTION"

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method

.method public static getRecentlyContactedContacts(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 3
    .parameter "context"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/vlingo/client/util/ContactUtil;->getRecentlyContactedContacts(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static getRecentlyContactedContacts(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Vector;
    .registers 19
    .parameter "context"
    .parameter "query"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, cur:Landroid/database/Cursor;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 332
    .local v14, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 334
    .local v15, seenAddresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x3

    :try_start_c
    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "last_time_contacted"

    aput-object v4, v3, v1

    .line 340
    .local v3, projection:[Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 341
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 347
    .local v7, builder:Landroid/net/Uri$Builder;
    :goto_29
    const-string v1, "limit"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 348
    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 349
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "display_name <> \'\' AND has_phone_number=1 AND in_visible_group=1"

    const/4 v5, 0x0

    const-string v6, "last_time_contacted DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 351
    invoke-static {v8}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_85

    .line 352
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_85

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 353
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 354
    .local v11, idxId:I
    const-string v1, "display_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 356
    .local v12, idxName:I
    :cond_61
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 357
    .local v9, id:J
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 358
    .local v13, name:Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 359
    new-instance v1, Lcom/vlingo/client/util/ContactUtil$Contact;

    invoke-direct {v1, v9, v10, v13}, Lcom/vlingo/client/util/ContactUtil$Contact;-><init>(JLjava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_77
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {v14}, Ljava/util/Vector;->size()I
    :try_end_80
    .catchall {:try_start_c .. :try_end_80} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_80} :catch_97

    move-result v1

    move/from16 v0, p2

    if-lt v1, v0, :cond_61

    .line 370
    .end local v9           #id:J
    .end local v11           #idxId:I
    .end local v12           #idxName:I
    .end local v13           #name:Ljava/lang/String;
    :cond_85
    if-eqz v8, :cond_8a

    .line 371
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 373
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :cond_8a
    :goto_8a
    return-object v14

    .line 344
    .restart local v3       #projection:[Ljava/lang/String;
    :cond_8b
    :try_start_8b
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 345
    .restart local v7       #builder:Landroid/net/Uri$Builder;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_96
    .catchall {:try_start_8b .. :try_end_96} :catchall_9e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_96} :catch_97

    goto :goto_29

    .line 364
    .end local v3           #projection:[Ljava/lang/String;
    .end local v7           #builder:Landroid/net/Uri$Builder;
    :catch_97
    move-exception v1

    .line 370
    if-eqz v8, :cond_8a

    .line 371
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    .line 370
    :catchall_9e
    move-exception v1

    if-eqz v8, :cond_a4

    .line 371
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_a4
    throw v1
.end method

.method public static getRecentlyTextedContacts(Landroid/content/Context;I)Ljava/util/Vector;
    .registers 18
    .parameter "context"
    .parameter "maxResults"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/util/ContactUtil$Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 446
    .local v14, results:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/util/ContactUtil$Contact;>;"
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 447
    .local v15, seenAddresses:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 449
    .local v11, cur:Landroid/database/Cursor;
    :try_start_b
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 450
    .local v2, uriSms:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 451
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v1, "limit"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 452
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 453
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 454
    invoke-static {v11}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 456
    :cond_3b
    const-string v1, "address"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, address:Ljava/lang/String;
    if-eqz v7, :cond_7a

    .line 460
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 462
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v9

    .line 464
    .local v9, contactId:J
    const-wide/16 v3, -0x1

    cmp-long v1, v9, v3

    if-eqz v1, :cond_7a

    .line 465
    move-object/from16 v0, p0

    invoke-static {v9, v10, v0}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getContactFullName(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 466
    .local v13, name:Ljava/lang/String;
    if-eqz v13, :cond_7a

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7a

    .line 467
    invoke-virtual {v15, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lcom/vlingo/client/util/ContactUtil$Contact;

    invoke-direct {v1, v9, v10, v13}, Lcom/vlingo/client/util/ContactUtil$Contact;-><init>(JLjava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 473
    .end local v9           #contactId:J
    .end local v13           #name:Ljava/lang/String;
    :cond_7a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {v14}, Ljava/util/Vector;->size()I
    :try_end_83
    .catchall {:try_start_b .. :try_end_83} :catchall_b4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_83} :catch_99

    move-result v1

    move/from16 v0, p1

    if-lt v1, v0, :cond_3b

    .line 479
    .end local v7           #address:Ljava/lang/String;
    :cond_88
    if-eqz v11, :cond_8d

    :try_start_8a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 480
    .end local v2           #uriSms:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :cond_8d
    :goto_8d
    return-object v14

    .line 479
    .restart local v2       #uriSms:Landroid/net/Uri;
    .restart local v8       #builder:Landroid/net/Uri$Builder;
    :catch_8e
    move-exception v12

    .local v12, ex:Ljava/lang/Exception;
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 476
    .end local v2           #uriSms:Landroid/net/Uri;
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v12           #ex:Ljava/lang/Exception;
    :catch_99
    move-exception v12

    .line 477
    .restart local v12       #ex:Ljava/lang/Exception;
    :try_start_9a
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_b4

    .line 479
    if-eqz v11, :cond_8d

    :try_start_a5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_8d

    :catch_a9
    move-exception v12

    const-string v1, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .end local v12           #ex:Ljava/lang/Exception;
    :catchall_b4
    move-exception v1

    if-eqz v11, :cond_ba

    :try_start_b7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bb

    :cond_ba
    :goto_ba
    throw v1

    :catch_bb
    move-exception v12

    .restart local v12       #ex:Ljava/lang/Exception;
    const-string v3, "VLG_EXCEPTION"

    invoke-static {v12}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba
.end method

.method public static getStarredContacts(Landroid/content/Context;Lcom/vlingo/client/util/ContactUtil$SortType;)Ljava/util/Vector;
    .registers 30
    .parameter "context"
    .parameter "sortType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/vlingo/client/util/ContactUtil$SortType;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/contacts/VlingoContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v24, Ljava/util/Vector;

    const/16 v2, 0x1e

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Ljava/util/Vector;-><init>(I)V

    .line 236
    .local v24, starredContacts:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    const/4 v15, 0x0

    .line 240
    .local v15, cur:Landroid/database/Cursor;
    :try_start_a
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 241
    .local v3, contacts:Landroid/net/Uri;
    const-string v5, "data1 is not NULL AND starred = 1"

    .line 243
    .local v5, whereString:Ljava/lang/String;
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "contact_id"

    aput-object v6, v4, v2

    const/4 v2, 0x1

    const-string v6, "display_name"

    aput-object v6, v4, v2

    const/4 v2, 0x2

    const-string v6, "data1"

    aput-object v6, v4, v2

    const/4 v2, 0x3

    const-string v6, "data2"

    aput-object v6, v4, v2

    const/4 v2, 0x4

    const-string v6, "starred"

    aput-object v6, v4, v2

    .line 246
    .local v4, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 247
    .local v7, orderBy:Ljava/lang/String;
    sget-object v2, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_NAME:Lcom/vlingo/client/util/ContactUtil$SortType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_f3

    .line 248
    const-string v7, "display_name ASC LIMIT 30"

    .line 256
    :goto_33
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 259
    const/16 v22, 0x0

    .line 260
    .local v22, numContacts:I
    invoke-static {v15}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 261
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 262
    new-instance v14, Ljava/util/Hashtable;

    const/16 v2, 0x1e

    invoke-direct {v14, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 265
    .local v14, contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    const-string v2, "display_name"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 266
    .local v21, nameColumn:I
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 267
    .local v16, dataColumn:I
    const-string v2, "data2"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 268
    .local v25, typeColumn:I
    const-string v2, "contact_id"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 269
    .local v19, idColumn:I
    const-string v2, "starred"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 272
    .local v23, starredColumn:I
    :cond_6f
    move/from16 v0, v21

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 273
    .local v20, name:Ljava/lang/String;
    move/from16 v0, v19

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 274
    .local v18, id:I
    invoke-interface/range {v15 .. v16}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    .local v9, data:Ljava/lang/String;
    move/from16 v0, v25

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 276
    .local v10, type:I
    move/from16 v0, v23

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 278
    .local v12, starred:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 279
    .local v26, vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    if-nez v26, :cond_b3

    .line 280
    new-instance v26, Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;

    .end local v26           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    const/4 v2, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/vlingo/client/android/core/contacts/ComparableVlingoContact;-><init>(Ljava/lang/String;Lcom/vlingo/client/core/contacts/ContactDetailProvider;)V

    .line 281
    .restart local v26       #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/vlingo/client/core/contacts/VlingoContact;->setId(I)V

    .line 282
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v14, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    add-int/lit8 v22, v22, 0x1

    .line 286
    :cond_b3
    new-instance v8, Lcom/vlingo/client/core/contacts/ContactDetail;

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct/range {v8 .. v13}, Lcom/vlingo/client/core/contacts/ContactDetail;-><init>(Ljava/lang/String;IFIZ)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lcom/vlingo/client/core/contacts/VlingoContact;->addDetail(Lcom/vlingo/client/core/contacts/ContactDetail;)V

    .line 288
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    const/16 v2, 0x1e

    move/from16 v0, v22

    if-lt v0, v2, :cond_6f

    .line 290
    :cond_cb
    invoke-virtual {v14}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v27

    .line 291
    .local v27, vce:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    :goto_cf
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 292
    invoke-interface/range {v27 .. v27}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v26

    .end local v26           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    check-cast v26, Lcom/vlingo/client/core/contacts/VlingoContact;

    .line 293
    .restart local v26       #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catchall {:try_start_a .. :try_end_e2} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e2} :catch_e3

    goto :goto_cf

    .line 298
    .end local v3           #contacts:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #whereString:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #type:I
    .end local v12           #starred:I
    .end local v14           #contactTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    .end local v16           #dataColumn:I
    .end local v18           #id:I
    .end local v19           #idColumn:I
    .end local v20           #name:Ljava/lang/String;
    .end local v21           #nameColumn:I
    .end local v22           #numContacts:I
    .end local v23           #starredColumn:I
    .end local v25           #typeColumn:I
    .end local v26           #vc:Lcom/vlingo/client/core/contacts/VlingoContact;
    .end local v27           #vce:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/vlingo/client/core/contacts/VlingoContact;>;"
    :catch_e3
    move-exception v17

    .line 299
    .local v17, ex:Ljava/lang/Exception;
    :try_start_e4
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catchall {:try_start_e4 .. :try_end_ed} :catchall_11d

    .line 302
    if-eqz v15, :cond_f2

    .line 304
    :try_start_ef
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_112

    .line 311
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_f2
    :goto_f2
    return-object v24

    .line 249
    .restart local v3       #contacts:Landroid/net/Uri;
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v5       #whereString:Ljava/lang/String;
    .restart local v7       #orderBy:Ljava/lang/String;
    :cond_f3
    :try_start_f3
    sget-object v2, Lcom/vlingo/client/util/ContactUtil$SortType;->SORT_BY_LAST_CONTACTED:Lcom/vlingo/client/util/ContactUtil$SortType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_fd

    .line 250
    const-string v7, "last_time_contacted DESC LIMIT 30"

    goto/16 :goto_33

    .line 253
    :cond_fd
    const-string v7, "LIMIT 30"
    :try_end_ff
    .catchall {:try_start_f3 .. :try_end_ff} :catchall_11d
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_ff} :catch_e3

    goto/16 :goto_33

    .line 302
    .restart local v22       #numContacts:I
    :cond_101
    if-eqz v15, :cond_f2

    .line 304
    :try_start_103
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_107

    goto :goto_f2

    .line 305
    :catch_107
    move-exception v17

    .line 306
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 305
    .end local v3           #contacts:Landroid/net/Uri;
    .end local v4           #projection:[Ljava/lang/String;
    .end local v5           #whereString:Ljava/lang/String;
    .end local v7           #orderBy:Ljava/lang/String;
    .end local v22           #numContacts:I
    :catch_112
    move-exception v17

    .line 306
    const-string v2, "VLG_EXCEPTION"

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f2

    .line 302
    .end local v17           #ex:Ljava/lang/Exception;
    :catchall_11d
    move-exception v2

    if-eqz v15, :cond_123

    .line 304
    :try_start_120
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    .line 308
    :cond_123
    :goto_123
    throw v2

    .line 305
    :catch_124
    move-exception v17

    .line 306
    .restart local v17       #ex:Ljava/lang/Exception;
    const-string v6, "VLG_EXCEPTION"

    invoke-static/range {v17 .. v17}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123
.end method

.method public static getTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_22

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    .line 127
    :pswitch_16
    const-string v0, "home"

    goto :goto_15

    .line 129
    :pswitch_19
    const-string v0, "mobile"

    goto :goto_15

    .line 131
    :pswitch_1c
    const-string v0, "work"

    goto :goto_15

    .line 133
    :pswitch_1f
    const-string v0, "other"

    goto :goto_15

    .line 125
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_16
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method public static getTypeString(Landroid/content/Context;ILjava/lang/Integer;)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "type"
    .parameter "index"

    .prologue
    .line 140
    if-nez p2, :cond_7

    .line 141
    invoke-static {p0, p1}, Lcom/vlingo/client/util/ContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_6
    return-object v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lcom/vlingo/client/util/ContactUtil;->getTypeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
