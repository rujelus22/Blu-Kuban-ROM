.class Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
.super Ljava/lang/Object;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GalContactRow"
.end annotation


# static fields
.field static dataId:J


# instance fields
.field private final mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

.field private row:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 262
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    return-void
.end method

.method constructor <init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "projection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"

    .prologue
    const/4 v5, 0x1

    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    .line 267
    iget v0, p1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    .line 268
    const-string v0, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    const-string v0, "raw_contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 272
    const-string v0, "data_id"

    sget-wide v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->dataId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    const-string v0, "display_name_alt"

    invoke-virtual {p0, v0, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 276
    const-string v0, "account_type"

    const-string v1, "com.android.exchange"

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 277
    const-string v0, "account_name"

    invoke-virtual {p0, v0, p5}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    const-string v0, "raw_contact_is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 279
    const-string v0, "is_read_only"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    return-void
.end method

.method public static addDataRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/PackedString;)V
    .registers 15
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "ps"

    .prologue
    .line 335
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "com.android.exchange.directory.provider"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 338
    const-string v1, "displayName"

    const-string v2, "displayName"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    const-string v1, "emailAddress"

    const-string v2, "emailAddress"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    const-string v1, "workPhone"

    const-string v2, "workPhone"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 341
    const-string v1, "homePhone"

    const-string v2, "homePhone"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    const-string v1, "mobilePhone"

    const-string v2, "mobilePhone"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    const-string v1, "firstName"

    const-string v2, "firstName"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    const-string v1, "lastName"

    const-string v2, "lastName"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 345
    const-string v1, "company"

    const-string v2, "company"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 346
    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 347
    const-string v1, "office"

    const-string v2, "office"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    const-string v1, "alias"

    const-string v2, "alias"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    const-string v1, "pictureData"

    const-string v2, "picture"

    invoke-virtual {p7, v2}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method static addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 298
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 299
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 302
    const-string v1, "data2"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    const-string v1, "data1"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 306
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_2d
    return-void
.end method

.method public static addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "cursor"
    .parameter "galProjection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "firstName"
    .parameter "lastName"

    .prologue
    .line 323
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    const-string v1, "data2"

    invoke-virtual {v0, v1, p7}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    const-string v1, "data3"

    invoke-virtual {v0, v1, p8}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    const-string v1, "data1"

    invoke-virtual {v0, v1, p6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method static addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .parameter "cursor"
    .parameter "projection"
    .parameter "contactId"
    .parameter "lookupKey"
    .parameter "accountName"
    .parameter "displayName"
    .parameter "type"
    .parameter "number"

    .prologue
    .line 310
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 311
    new-instance v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;-><init>(Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    .local v0, r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    const-string v1, "data2"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    const-string v1, "data1"

    invoke-virtual {v0, v1, p8}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->getRow()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 318
    .end local v0           #r:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;
    :cond_2c
    return-void
.end method


# virtual methods
.method getRow()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    return-object v0
.end method

.method put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7
    .parameter "columnName"
    .parameter "value"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->mProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    iget-object v1, v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 288
    .local v0, integer:Ljava/lang/Integer;
    if-eqz v0, :cond_15

    .line 289
    iget-object v1, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->row:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput-object p2, v1, v2

    .line 293
    :goto_14
    return-void

    .line 291
    :cond_15
    const-string v1, "[ExchagneDirectoryProvider]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported column: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method
