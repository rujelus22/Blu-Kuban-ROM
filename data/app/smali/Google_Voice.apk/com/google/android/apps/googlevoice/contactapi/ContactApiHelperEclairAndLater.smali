.class public Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;
.super Ljava/lang/Object;
.source "ContactApiHelperEclairAndLater.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;


# static fields
.field private static final log:Lcom/google/android/apps/common/log/GLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const-class v0, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelper;

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/GLogFactory;->getLogger(Ljava/lang/Class;)Lcom/google/android/apps/common/log/GLog;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public contactsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .registers 8
    .parameter "contentResolver"

    .prologue
    const/4 v2, 0x0

    .line 36
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursorForFilter(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter "contentResolver"
    .parameter "constraint"

    .prologue
    const/4 v3, 0x0

    .line 154
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 156
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "contact_id"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v0

    const/4 v0, 0x3

    const-string v4, "data1"

    aput-object v4, v2, v0

    const/4 v0, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v0

    const/4 v0, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v0

    .local v2, phonesProjection:[Ljava/lang/String;
    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    .line 164
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public cursorForPhoneNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "contentResolver"
    .parameter "phoneNumber"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 42
    if-eqz p2, :cond_d

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 90
    :cond_d
    :goto_d
    return-object v5

    .line 48
    :cond_e
    invoke-static {p2}, Lcom/google/android/apps/googlevoice/VoiceUtil;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 51
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "lookup"

    aput-object v0, v2, v8

    const-string v3, "data1 =?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p2, v4, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, emailCursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_31

    .line 59
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .line 63
    :cond_31
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, lookupKey:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 66
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "lookup"

    aput-object v0, v2, v9

    const-string v0, "display_name"

    aput-object v0, v2, v10

    .line 72
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "lookup =?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object v7, v4, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_d

    .line 81
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #emailCursor:Landroid/database/Cursor;
    .end local v7           #lookupKey:Ljava/lang/String;
    :cond_54
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, queryUri:Landroid/net/Uri;
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v8

    const-string v0, "lookup"

    aput-object v0, v2, v9

    const-string v0, "display_name"

    aput-object v0, v2, v10

    const-string v0, "type"

    aput-object v0, v2, v11

    const/4 v0, 0x4

    const-string v3, "label"

    aput-object v3, v2, v0

    .restart local v2       #projection:[Ljava/lang/String;
    move-object v0, p1

    move-object v3, v5

    move-object v4, v5

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_d
.end method

.method public getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "resources"
    .parameter "type"
    .parameter "label"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 96
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 100
    :goto_4
    return-object v1

    .line 97
    :catch_5
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v2, "failed to get type and label"

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 100
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public insertIntentForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/content/Intent;
    .registers 7
    .parameter "contactInfo"

    .prologue
    .line 139
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 143
    const-string v1, ""

    .line 145
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT_OR_EDIT"

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "name"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v3, "phone"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v3, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    return-object v0
.end method

.method public photoForContact(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "contentResolver"
    .parameter "id"
    .parameter "lookupKey"
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 108
    :try_start_1
    invoke-static {p2, p3, p4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, contentLookupUri:Landroid/net/Uri;
    if-nez v1, :cond_8

    .line 122
    .end local v1           #contentLookupUri:Landroid/net/Uri;
    :cond_7
    :goto_7
    return-object v4

    .line 112
    .restart local v1       #contentLookupUri:Landroid/net/Uri;
    :cond_8
    invoke-static {p1, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 113
    .local v0, contactUri:Landroid/net/Uri;
    if-eqz v0, :cond_7

    .line 116
    invoke-static {p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 118
    .local v3, photoInputStream:Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_15} :catch_20

    move-result-object v4

    goto :goto_7

    .line 119
    .end local v0           #contactUri:Landroid/net/Uri;
    .end local v1           #contentLookupUri:Landroid/net/Uri;
    .end local v3           #photoInputStream:Ljava/io/InputStream;
    :catch_17
    move-exception v2

    .line 120
    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_18
    sget-object v5, Lcom/google/android/apps/googlevoice/contactapi/ContactApiHelperEclairAndLater;->log:Lcom/google/android/apps/common/log/GLog;

    const-string v6, "Unable to lookup photo with post-Donut Contact API"

    invoke-interface {v5, v6, v2}, Lcom/google/android/apps/common/log/GLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_7

    .line 123
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_20
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getMemoryUtils()Lcom/google/android/apps/googlevoice/util/MemoryUtils;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/apps/googlevoice/util/MemoryUtils;->onOutOfMemory(Ljava/lang/Throwable;)V

    .line 125
    throw v2
.end method

.method public uriForContact(Lcom/google/android/apps/googlevoice/core/ContactInfo;)Landroid/net/Uri;
    .registers 5
    .parameter "contactInfo"

    .prologue
    .line 131
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalLookupKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/google/android/apps/googlevoice/core/ContactInfo;->getLocalId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 134
    return-object v0
.end method
