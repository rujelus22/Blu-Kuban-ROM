.class public Lcom/vlingo/client/contacts/AndroidContactUtil;
.super Ljava/lang/Object;
.source "AndroidContactUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyContactImageToQuickContactBadge(ILandroid/widget/QuickContactBadge;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .parameter "contactID"
    .parameter "iv"
    .parameter "actionType"
    .parameter "contactDetail"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, -0x1

    if-eq p0, v1, :cond_14

    .line 115
    const-string v1, "email"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 116
    invoke-virtual {p1, p3, v2}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 120
    :goto_10
    invoke-static {p0, p4}, Lcom/vlingo/client/contacts/AndroidContactUtil;->getPhotoForContactId(ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    :cond_14
    if-eqz v0, :cond_1e

    .line 123
    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 127
    :goto_19
    return-void

    .line 118
    :cond_1a
    invoke-virtual {p1, p3, v2}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto :goto_10

    .line 125
    :cond_1e
    const v1, 0x7f0200a1

    invoke-virtual {p1, v1}, Landroid/widget/QuickContactBadge;->setImageResource(I)V

    goto :goto_19
.end method

.method public static getContactFullName(JLandroid/content/Context;)Ljava/lang/String;
    .registers 12
    .parameter "contactId"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, cur:Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    cmp-long v0, p0, v4

    if-eqz v0, :cond_20

    .line 59
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 60
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

    .line 62
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_20
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 64
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 65
    .local v8, nameColumn:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, name:Ljava/lang/String;
    if-eqz v7, :cond_39

    .line 72
    .end local v7           #name:Ljava/lang/String;
    .end local v8           #nameColumn:I
    :goto_38
    return-object v7

    .line 70
    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_3c
    const-string v7, ""

    goto :goto_38
.end method

.method public static getContactFullNameFromPhoneNumber(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .registers 11
    .parameter "address"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 76
    const/4 v6, 0x0

    .line 77
    .local v6, cur:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 78
    .local v7, name:Ljava/lang/String;
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 79
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 80
    .local v1, contactUri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 82
    .end local v1           #contactUri:Landroid/net/Uri;
    :cond_23
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 84
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 85
    .local v8, nameColumn:I
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    .end local v8           #nameColumn:I
    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_3c
    if-nez v7, :cond_40

    .line 90
    const-string v7, ""

    .line 92
    :cond_40
    return-object v7
.end method

.method public static getGmailAccount(Landroid/content/Context;)Ljava/lang/String;
    .registers 9
    .parameter "context"

    .prologue
    .line 183
    const-string v7, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 192
    .local v0, K9_EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;
    const-string v7, "account"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/AccountManager;

    .line 193
    .local v6, mgr:Landroid/accounts/AccountManager;
    if-eqz v6, :cond_2f

    .line 194
    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 195
    .local v2, accounts:[Landroid/accounts/Account;
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_19
    if-ge v4, v5, :cond_2f

    aget-object v1, v3, v4

    .line 196
    .local v1, account:Landroid/accounts/Account;
    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 197
    iget-object v7, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 201
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :goto_2b
    return-object v7

    .line 195
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v2       #accounts:[Landroid/accounts/Account;
    .restart local v3       #arr$:[Landroid/accounts/Account;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 201
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #accounts:[Landroid/accounts/Account;
    .end local v3           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2f
    const/4 v7, 0x0

    goto :goto_2b
.end method

.method public static getPersonIdFromPhoneNumber(Landroid/content/Context;Ljava/lang/String;)J
    .registers 12
    .parameter "context"
    .parameter "address"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 160
    if-nez p1, :cond_8

    move-wide v0, v8

    .line 176
    :goto_7
    return-wide v0

    .line 163
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

    .line 165
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 167
    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_43

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 169
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 170
    .local v7, id:Ljava/lang/Long;
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_48

    move-result-wide v0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_7

    .end local v7           #id:Ljava/lang/Long;
    :cond_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_46
    move-wide v0, v8

    .line 176
    goto :goto_7

    .line 173
    :catchall_48
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getPhotoForContactId(ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "contactID"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 130
    const/4 v2, -0x1

    if-ne p0, v2, :cond_6

    .line 152
    :cond_5
    :goto_5
    return-object v3

    .line 133
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 137
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, p0

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 138
    .local v6, contactUri:Landroid/net/Uri;
    const-string v2, "photo"

    invoke-static {v6, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, photoUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data15"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 140
    .local v7, cursor:Landroid/database/Cursor;
    invoke-static {v7}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    :try_start_2a
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 145
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 146
    .local v8, data:[B
    const/4 v2, 0x0

    array-length v3, v8

    invoke-static {v8, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_43

    move-result-object v3

    .line 149
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .end local v8           #data:[B
    :cond_3f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_43
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public static getTypeString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, p1, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
