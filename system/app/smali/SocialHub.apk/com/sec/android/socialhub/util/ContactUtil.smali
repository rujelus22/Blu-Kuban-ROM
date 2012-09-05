.class public Lcom/sec/android/socialhub/util/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const-string v1, "contact_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/socialhub/util/ContactUtil;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/util/ContactUtil;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    .registers 3
    .parameter "context"
    .parameter "numberOrEmail"

    .prologue
    .line 72
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 74
    invoke-static {p0, p1}, Lcom/sec/android/socialhub/util/ContactUtil;->getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;

    move-result-object v0

    .line 78
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1}, Lcom/sec/android/socialhub/util/ContactUtil;->getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;

    move-result-object v0

    goto :goto_a
.end method

.method private static getContactInfoForEmailAddress(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    .registers 13
    .parameter "context"
    .parameter "email"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 85
    const/4 v7, 0x0

    .line 88
    .local v7, contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfoForEmailAddress()"

    const-string v2, "START"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-nez p1, :cond_16

    .line 92
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfoForEmailAddress() END(number is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :goto_15
    return-object v6

    .line 96
    :cond_16
    new-instance v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;

    .end local v7           #contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    invoke-direct {v7}, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;-><init>()V

    .line 97
    .restart local v7       #contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    iput-object v6, v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    .line 98
    iput-object v6, v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->display_name:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/socialhub/util/ContactUtil;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v10

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 105
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_8e

    .line 109
    :goto_35
    :try_start_35
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 111
    monitor-enter v7
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_64

    .line 113
    const/4 v0, 0x2

    :try_start_3d
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    .line 115
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 117
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 119
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 122
    :cond_57
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 124
    iput-object v9, v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->display_name:Ljava/lang/String;

    .line 126
    :cond_5f
    monitor-exit v7

    goto :goto_35

    .end local v9           #name:Ljava/lang/String;
    :catchall_61
    move-exception v0

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_3d .. :try_end_63} :catchall_61

    :try_start_63
    throw v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 131
    :catchall_64
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 134
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfo()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "END("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8e
    move-object v6, v7

    .line 136
    goto :goto_15
.end method

.method private static getContactInfoForPhoneNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    .registers 15
    .parameter "context"
    .parameter "number"

    .prologue
    .line 143
    const/4 v6, 0x0

    .line 145
    .local v6, contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfoForPhoneNumber()"

    const-string v2, "START"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p1, :cond_17

    .line 149
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfoForPhoneNumber()"

    const-string v2, "END(number is null)"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 216
    :goto_16
    return-object v0

    .line 153
    :cond_17
    new-instance v6, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;

    .end local v6           #contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    invoke-direct {v6}, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;-><init>()V

    .line 155
    .restart local v6       #contact:Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;

    .line 156
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->display_name:Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, targetNumber:Ljava/lang/String;
    const/16 v0, 0x3b

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_39

    .line 162
    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-virtual {v12, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 165
    :cond_39
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 166
    .local v9, normalizedNumber:Ljava/lang/String;
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, minMatch:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d9

    .line 170
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 171
    .local v11, numberLen:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/socialhub/util/ContactUtil;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 176
    .local v10, numberE164:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 178
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 179
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v11, v4, v0

    const/4 v0, 0x2

    aput-object v9, v4, v0

    const/4 v0, 0x3

    aput-object v11, v4, v0

    .line 189
    .local v4, args:[Ljava/lang/String;
    :goto_74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/socialhub/util/ContactUtil;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 195
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_b5

    .line 197
    const-string v0, "ContactUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 198
    goto/16 :goto_16

    .line 184
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_a0
    const-string v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 185
    .restart local v3       #selection:Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v8, v4, v0

    const/4 v0, 0x1

    aput-object v10, v4, v0

    const/4 v0, 0x2

    aput-object v11, v4, v0

    const/4 v0, 0x3

    aput-object v9, v4, v0

    const/4 v0, 0x4

    aput-object v11, v4, v0

    .restart local v4       #args:[Ljava/lang/String;
    goto :goto_74

    .line 203
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_b5
    :try_start_b5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 205
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->display_name:Ljava/lang/String;

    .line 206
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/android/socialhub/util/ContactUtil$ContactInfo;->contact_id:Ljava/lang/Long;
    :try_end_cd
    .catchall {:try_start_b5 .. :try_end_cd} :catchall_dc

    .line 211
    :cond_cd
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const-string v0, "ContactUtil"

    const-string v1, "getContactInfoForPhoneNumber()"

    const-string v2, "END"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #args:[Ljava/lang/String;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #numberE164:Ljava/lang/String;
    .end local v11           #numberLen:Ljava/lang/String;
    :cond_d9
    move-object v0, v6

    .line 216
    goto/16 :goto_16

    .line 211
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v4       #args:[Ljava/lang/String;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v10       #numberE164:Ljava/lang/String;
    .restart local v11       #numberLen:Ljava/lang/String;
    :catchall_dc
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 212
    const-string v1, "ContactUtil"

    const-string v2, "getContactInfoForPhoneNumber()"

    const-string v5, "END"

    invoke-static {v1, v2, v5}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static getCurrentCountryIso()Ljava/lang/String;
    .registers 2

    .prologue
    .line 221
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, mCountryIso:Ljava/lang/String;
    if-nez v0, :cond_12

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .end local v0           #mCountryIso:Ljava/lang/String;
    :cond_12
    return-object v0
.end method
