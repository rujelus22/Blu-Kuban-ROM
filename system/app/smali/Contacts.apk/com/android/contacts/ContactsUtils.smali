.class public Lcom/android/contacts/ContactsUtils;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsUtils$1;,
        Lcom/android/contacts/ContactsUtils$ProviderNames;
    }
.end annotation


# static fields
.field private static final WAIT_SYMBOL_AS_STRING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static areContactWritableAccountsAvailable(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 200
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static areGroupWritableAccountsAvailable(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 206
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v0

    .line 208
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public static final areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z
    .registers 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 180
    if-ne p0, p1, :cond_4

    .line 181
    const/4 v0, 0x1

    .line 186
    :goto_3
    return v0

    .line 183
    :cond_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_a

    .line 184
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 186
    :cond_a
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_3
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter "a"
    .parameter "b"
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 106
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 194
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 196
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 2
    .parameter "str"

    .prologue
    .line 98
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static loadContactPhotoWithRawContactId(Landroid/content/Context;JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "context"
    .parameter "rawContactsId"
    .parameter "options"

    .prologue
    .line 214
    const/4 v7, 0x0

    .line 215
    .local v7, photoCursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 217
    .local v6, photoBm:Landroid/graphics/Bitmap;
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data15"

    aput-object v4, v2, v3

    const-string v3, "mimetype = \'vnd.android.cursor.item/photo\'and is_primary = 1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 219
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 220
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 221
    .local v8, photoData:[B
    const/4 v0, 0x0

    array-length v1, v8

    invoke-static {v8, v0, v1, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_4a
    .catchall {:try_start_2 .. :try_end_4a} :catchall_51

    move-result-object v6

    .line 224
    .end local v8           #photoData:[B
    :cond_4b
    if-eqz v7, :cond_50

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_50
    return-object v6

    .line 224
    :catchall_51
    move-exception v0

    if-eqz v7, :cond_57

    .line 225
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_57
    throw v0
.end method

.method public static loadProfileIntentWithRawContactId(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 13
    .parameter "context"
    .parameter "rawContactsId"

    .prologue
    .line 233
    const/4 v6, 0x0

    .line 234
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 235
    .local v9, profileUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 236
    .local v8, mimeType:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v7, intent:Landroid/content/Intent;
    :try_start_a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.android.contacts/raw_contacts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 242
    :cond_45
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 243
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 244
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 249
    :cond_62
    :goto_62
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const/high16 v0, 0x1000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_77

    .line 252
    if-eqz v6, :cond_6f

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 256
    :cond_6f
    return-object v7

    .line 247
    :cond_70
    :try_start_70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_77

    move-result v0

    if-nez v0, :cond_45

    goto :goto_62

    .line 252
    :catchall_77
    move-exception v0

    if-eqz v6, :cond_7d

    .line 253
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
.end method

.method public static lookupProviderNameFromId(I)Ljava/lang/String;
    .registers 2
    .parameter "protocol"

    .prologue
    .line 72
    packed-switch p0, :pswitch_data_1e

    .line 90
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 74
    :pswitch_5
    const-string v0, "GTalk"

    goto :goto_4

    .line 76
    :pswitch_8
    const-string v0, "AIM"

    goto :goto_4

    .line 78
    :pswitch_b
    const-string v0, "MSN"

    goto :goto_4

    .line 80
    :pswitch_e
    const-string v0, "Yahoo"

    goto :goto_4

    .line 82
    :pswitch_11
    const-string v0, "ICQ"

    goto :goto_4

    .line 84
    :pswitch_14
    const-string v0, "JABBER"

    goto :goto_4

    .line 86
    :pswitch_17
    const-string v0, "SKYPE"

    goto :goto_4

    .line 88
    :pswitch_1a
    const-string v0, "QQ"

    goto :goto_4

    .line 72
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_17
        :pswitch_1a
        :pswitch_5
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/CharSequence;I)Z
    .registers 7
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "type1"
    .parameter "mimetype2"
    .parameter "data2"
    .parameter "type2"

    .prologue
    .line 165
    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 167
    if-ne p2, p5, :cond_14

    .line 168
    const/4 v0, 0x1

    .line 173
    :goto_13
    return v0

    .line 170
    :cond_14
    const/4 v0, 0x0

    goto :goto_13

    .line 173
    :cond_16
    invoke-static {p0, p1, p3, p4}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_13
.end method

.method public static final shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 14
    .parameter "mimetype1"
    .parameter "data1"
    .parameter "mimetype2"
    .parameter "data2"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 160
    :cond_8
    :goto_8
    :pswitch_8
    return v6

    .line 120
    :cond_9
    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v6, v7

    goto :goto_8

    .line 123
    :cond_11
    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    .line 127
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-static {v8, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, dataParts1:[Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/contacts/ContactsUtils;->WAIT_SYMBOL_AS_STRING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, dataParts2:[Ljava/lang/String;
    array-length v8, v2

    array-length v9, v3

    if-ne v8, v9, :cond_8

    .line 134
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v5

    .line 135
    .local v5, util:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3a
    array-length v8, v2

    if-ge v4, v8, :cond_61

    .line 136
    aget-object v0, v2, v4

    .line 137
    .local v0, dataPart1:Ljava/lang/String;
    aget-object v1, v3, v4

    .line 140
    .local v1, dataPart2:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 135
    :pswitch_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 143
    :cond_4a
    sget-object v8, Lcom/android/contacts/ContactsUtils$1;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$MatchType:[I

    invoke-virtual {v5, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_64

    .line 156
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unknown result value from phone number library"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v0           #dataPart1:Ljava/lang/String;
    .end local v1           #dataPart2:Ljava/lang/String;
    :cond_61
    move v6, v7

    .line 160
    goto :goto_8

    .line 143
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_47
    .end packed-switch
.end method
