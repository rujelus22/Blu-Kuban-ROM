.class public final Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;
.super Ljava/lang/Object;
.source "VoicemailProviderHelpers.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers$1;
    }
.end annotation


# static fields
.field private static final FULL_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mBaseStatusUri:Landroid/net/Uri;

.field private final mBaseUri:Landroid/net/Uri;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "has_content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "source_package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "source_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->FULL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V
    .registers 4
    .parameter "baseUri"
    .parameter "baseStatusUri"
    .parameter "contentResolver"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    .line 54
    iput-object p2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseStatusUri:Landroid/net/Uri;

    .line 55
    iput-object p3, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    .line 56
    return-void
.end method

.method private buildUriWithSourcePackage(JLjava/lang/String;)Landroid/net/Uri;
    .registers 5
    .parameter "id"
    .parameter "sourcePackage"

    .prologue
    .line 278
    invoke-static {p3}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private check(ZLjava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 7
    .parameter "assertion"
    .parameter "message"
    .parameter "voicemail"

    .prologue
    .line 201
    if-nez p1, :cond_1f

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1f
    return-void
.end method

.method private copyStreamData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 6
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 313
    .local v0, data:[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, numBytes:I
    if-lez v1, :cond_f

    .line 314
    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    .line 316
    :cond_f
    return-void
.end method

.method public static createFullVoicemailProvider(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    .registers 5
    .parameter "context"

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;

    sget-object v1, Landroid/provider/VoicemailContract$Voicemails;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method public static createPackageScopedVoicemailProvider(Landroid/content/Context;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper;
    .registers 5
    .parameter "context"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/VoicemailContract$Voicemails;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/ContentResolver;)V

    return-object v0
.end method

.method private getContentValues(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/content/ContentValues;
    .registers 8
    .parameter "voicemail"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasTimestampMillis()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 287
    const-string v1, "date"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_1a
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 290
    const-string v1, "number"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_29
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasDuration()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 293
    const-string v1, "duration"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_3c
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasSourcePackage()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 296
    const-string v1, "source_package"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourcePackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_4b
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasSourceData()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 299
    const-string v1, "source_data"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_5a
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasRead()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 302
    const-string v4, "is_read"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->isRead()Z

    move-result v1

    if-eqz v1, :cond_86

    move v1, v2

    :goto_69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    :cond_70
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasHasContent()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 305
    const-string v1, "has_content"

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasContent()Z

    move-result v4

    if-eqz v4, :cond_88

    :goto_7e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    :cond_85
    return-object v0

    :cond_86
    move v1, v3

    .line 302
    goto :goto_69

    :cond_88
    move v2, v3

    .line 305
    goto :goto_7e
.end method

.method private getSortBy(Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;)Ljava/lang/String;
    .registers 6
    .parameter "column"
    .parameter "sortOrder"

    .prologue
    const/4 v0, 0x0

    .line 241
    if-nez p1, :cond_5

    move-object p1, v0

    .line 253
    .end local p1
    :goto_4
    :pswitch_4
    return-object p1

    .line 244
    .restart local p1
    :cond_5
    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers$1;->$SwitchMap$com$google$android$apps$googlevoice$vvm$utils$VoicemailProviderHelper$SortOrder:[I

    invoke-virtual {p2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3a

    move-object p1, v0

    .line 253
    goto :goto_4

    .line 246
    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 248
    :pswitch_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 244
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_12
        :pswitch_26
        :pswitch_4
    .end packed-switch
.end method

.method private getVoicemailFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
    .registers 11
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 257
    const-string v4, "_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 258
    .local v0, id:J
    const-string v4, "source_package"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, sourcePackage:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;->createEmptyBuilder()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    const-string v7, "date"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setTimestamp(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    const-string v7, "number"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setNumber(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setId(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    const-string v7, "duration"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setDuration(J)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setSourcePackage(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    const-string v7, "source_data"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setSourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->buildUriWithSourcePackage(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v7

    const-string v4, "has_content"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v5, :cond_88

    move v4, v5

    :goto_6f
    invoke-virtual {v7, v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setHasContent(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    const-string v7, "is_read"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-ne v7, v5, :cond_8a

    :goto_7f
    invoke-virtual {v4, v5}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->setIsRead(Z)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl$Builder;->build()Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v3

    .line 274
    .local v3, voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
    return-object v3

    .end local v3           #voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
    :cond_88
    move v4, v6

    .line 260
    goto :goto_6f

    :cond_8a
    move v5, v6

    goto :goto_7f
.end method

.method private isStatusPresent()Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 335
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseStatusUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_16

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private setVoicemailContent(Landroid/net/Uri;[BLjava/io/InputStream;Ljava/lang/String;)V
    .registers 13
    .parameter "voicemailUri"
    .parameter "inputBytes"
    .parameter "inputStream"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 119
    if-eqz p2, :cond_e

    if-eqz p3, :cond_e

    .line 120
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Both inputBytes & inputStream non-null. Don\'t know which one to use."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_e
    const-string v3, "Writing new voicemail content: %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, outputStream:Ljava/io/OutputStream;
    :try_start_1d
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 128
    if-eqz p2, :cond_5f

    .line 129
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_65

    .line 134
    :cond_28
    :goto_28
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 137
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "mime_type"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v3, "has_content"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 140
    iget-object v3, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, p1, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, updatedCount:I
    if-eq v1, v6, :cond_6a

    .line 142
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Updating voicemail should have updated 1 row, was: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    .end local v1           #updatedCount:I
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_5f
    if-eqz p3, :cond_28

    .line 131
    :try_start_61
    invoke-direct {p0, p3, v0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->copyStreamData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_65

    goto :goto_28

    .line 134
    :catchall_65
    move-exception v3

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .line 145
    .restart local v1       #updatedCount:I
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_6a
    return-void
.end method


# virtual methods
.method public delete(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V
    .registers 6
    .parameter "voicemail"

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting voicemail with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->i(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source_data=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getSourceData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 343
    return-void
.end method

.method public deleteAll()I
    .registers 5

    .prologue
    .line 208
    const-string v0, "Deleting all voicemails"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->i(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findVoicemailBySourceData(Ljava/lang/String;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .registers 10
    .parameter "sourceData"

    .prologue
    const/4 v7, 0x0

    .line 149
    const/4 v6, 0x0

    .line 151
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->FULL_PROJECTION:[Ljava/lang/String;

    const-string v3, "source_data"

    invoke-static {v3, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_44

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected 1 voicemail matching sourceData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_4f

    .line 162
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    move-object v0, v7

    :goto_43
    return-object v0

    .line 159
    :cond_44
    :try_start_44
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 160
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getVoicemailFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_4f

    move-result-object v0

    .line 162
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_43

    :catchall_4f
    move-exception v0

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public findVoicemailByUri(Landroid/net/Uri;)Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 168
    const/4 v6, 0x0

    .line 170
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected 1 voicemail matching uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2 .. :try_end_39} :catchall_74

    .line 185
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    move-object v7, v8

    :goto_3d
    return-object v7

    .line 175
    :cond_3e
    :try_start_3e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 176
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getVoicemailFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v7

    .line 178
    .local v7, voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    invoke-interface {v7}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_3e .. :try_end_4c} :catchall_74

    move-result v0

    if-eqz v0, :cond_53

    .line 185
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_3d

    .line 181
    :cond_53
    :try_start_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Queried uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " do not represent a unique voicemail record."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_74

    .line 185
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    move-object v7, v8

    goto :goto_3d

    .end local v7           #voicemail:Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;
    :catchall_74
    move-exception v0

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0
.end method

.method public getAllVoicemails()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;->DEFAULT:Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getAllVoicemails(Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllVoicemails(Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;)Ljava/util/List;
    .registers 11
    .parameter "sortColumn"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    const-string v0, "Fetching all voicemails"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->i(Ljava/lang/String;)V

    .line 219
    const/4 v6, 0x0

    .line 221
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_d
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->FULL_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getSortBy(Ljava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelper$SortOrder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 224
    .local v7, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    :goto_26
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 232
    invoke-direct {p0, v6}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getVoicemailFromCursor(Landroid/database/Cursor;)Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailImpl;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_34

    goto :goto_26

    .line 236
    .end local v7           #results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    :catchall_34
    move-exception v0

    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    .restart local v7       #results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;>;"
    :cond_39
    invoke-static {v6}, Lcom/google/android/apps/googlevoice/vvm/utils/CloseUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v7
.end method

.method public getUriForVoicemailWithId(J)Landroid/net/Uri;
    .registers 4
    .parameter "id"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public insert(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/net/Uri;
    .registers 7
    .parameter "voicemail"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasId()Z

    move-result v1

    if-nez v1, :cond_49

    move v1, v2

    :goto_9
    const-string v4, "Inserted voicemails must not have an id"

    invoke-direct {p0, v1, v4, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->check(ZLjava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 85
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasTimestampMillis()Z

    move-result v1

    const-string v4, "Inserted voicemails must have a timestamp"

    invoke-direct {p0, v1, v4, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->check(ZLjava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 87
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasNumber()Z

    move-result v1

    const-string v4, "Inserted voicemails must have a number"

    invoke-direct {p0, v1, v4, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->check(ZLjava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 88
    const-string v1, "Inserting new voicemail: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getContentValues(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/content/ContentValues;

    move-result-object v0

    .line 90
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-interface {p1}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasRead()Z

    move-result v1

    if-nez v1, :cond_40

    .line 92
    const-string v1, "is_read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    :cond_40
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .end local v0           #contentValues:Landroid/content/ContentValues;
    :cond_49
    move v1, v3

    .line 84
    goto :goto_9
.end method

.method public setStatus(III)V
    .registers 8
    .parameter "configurationState"
    .parameter "dataChannelState"
    .parameter "notificationChannelState"

    .prologue
    const/4 v3, 0x0

    .line 321
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 322
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "configuration_state"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "data_channel_state"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v1, "notification_channel_state"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->isStatusPresent()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 327
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseStatusUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    :goto_2e
    return-void

    .line 329
    :cond_2f
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mBaseStatusUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2e
.end method

.method public setVoicemailContent(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 5
    .parameter "voicemailUri"
    .parameter "inputStream"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->setVoicemailContent(Landroid/net/Uri;[BLjava/io/InputStream;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setVoicemailContent(Landroid/net/Uri;[BLjava/lang/String;)V
    .registers 5
    .parameter "voicemailUri"
    .parameter "inputBytes"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->setVoicemailContent(Landroid/net/Uri;[BLjava/io/InputStream;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public update(Landroid/net/Uri;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)I
    .registers 7
    .parameter "uri"
    .parameter "voicemail"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-interface {p2}, Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;->hasUri()Z

    move-result v1

    if-nez v1, :cond_38

    const/4 v1, 0x1

    :goto_8
    const-string v2, "Can\'t update the Uri of a voicemail"

    invoke-direct {p0, v1, v2, p2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->check(ZLjava/lang/String;Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)V

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating voicemail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0, p2}, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->getContentValues(Lcom/google/android/apps/googlevoice/vvm/utils/Voicemail;)Landroid/content/ContentValues;

    move-result-object v0

    .line 102
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/vvm/utils/VoicemailProviderHelpers;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 99
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_38
    const/4 v1, 0x0

    goto :goto_8
.end method
