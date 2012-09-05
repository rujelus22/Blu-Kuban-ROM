.class public Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;,
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;,
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    }
.end annotation


# static fields
.field public static final EMAIL_SEARCH_URI:Landroid/net/Uri;

.field public static final RESOLVERECIPIENTS_URI:Landroid/net/Uri;

.field public static final RIC_URI:Landroid/net/Uri;

.field public static final VALIDATE_CERT_URI:Landroid/net/Uri;

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field final RIC_PROJECTION:[Ljava/lang/String;

.field final mAccountIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 101
    const-string v0, "content://com.android.exchange.directory.provider/emailsearch/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->EMAIL_SEARCH_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://com.android.exchange.directory.provider/resolverecipients/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->RESOLVERECIPIENTS_URI:Landroid/net/Uri;

    .line 109
    const-string v0, "content://com.android.exchange.directory.provider/recipientInformation cache/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->RIC_URI:Landroid/net/Uri;

    .line 139
    const-string v0, "content://com.android.exchange.directory.provider/validatecert/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->VALIDATE_CERT_URI:Landroid/net/Uri;

    .line 163
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 166
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "resolverecipients"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "validatecert"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "emailsearch/*/*/*/*/*/*/*/*"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "recipientInformation cache/*/*"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 155
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "alias"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "accountkey"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fileas"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "weightedrank"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->RIC_PROJECTION:[Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    .line 1051
    return-void
.end method

.method private static addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V
    .registers 26
    .parameter "mc"
    .parameter "id"
    .parameter "accountId"
    .parameter "to"
    .parameter "responseStatus"
    .parameter "displayName"
    .parameter "email"
    .parameter "certificateStatus"
    .parameter "certificate"
    .parameter "miniCertificate"
    .parameter "availabilityStatus"
    .parameter "mergedFreeBusy"
    .parameter "idFlag"
    .parameter "accountIdFlag"
    .parameter "toFlag"
    .parameter "responseStatusFlag"
    .parameter "displayNameFlag"
    .parameter "emailFlag"
    .parameter "certificateStatusFlag"
    .parameter "certificateFlag"
    .parameter "miniCertificateFlag"
    .parameter "availabilityStatusFlag"
    .parameter "mergedFreeBusyFlag"

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v0

    .line 230
    .local v0, rb:Landroid/database/MatrixCursor$RowBuilder;
    if-eqz p13, :cond_d

    .line 231
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 232
    :cond_d
    if-eqz p14, :cond_12

    .line 233
    invoke-virtual {v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 234
    :cond_12
    if-eqz p15, :cond_17

    .line 235
    invoke-virtual {v0, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 236
    :cond_17
    if-eqz p16, :cond_20

    .line 237
    invoke-static {p5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 238
    :cond_20
    if-eqz p17, :cond_25

    .line 239
    invoke-virtual {v0, p6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 240
    :cond_25
    if-eqz p18, :cond_2a

    .line 241
    invoke-virtual {v0, p7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 242
    :cond_2a
    if-eqz p19, :cond_33

    .line 243
    invoke-static {p8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 248
    :cond_33
    if-eqz p20, :cond_38

    .line 249
    invoke-virtual {v0, p9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 250
    :cond_38
    if-eqz p21, :cond_3d

    .line 251
    invoke-virtual {v0, p10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 252
    :cond_3d
    if-eqz p22, :cond_46

    .line 253
    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 254
    :cond_46
    if-eqz p23, :cond_4b

    .line 255
    invoke-virtual {v0, p12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 256
    :cond_4b
    return-void
.end method

.method private normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 1296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1297
    .local v0, len:I
    move-object v1, p1

    .line 1298
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1d

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1d

    .line 1299
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1301
    :cond_1d
    return-object v1
.end method

.method private validateCert(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 1404
    const/4 v6, 0x0

    .line 1405
    const-wide/16 v1, 0x0

    .line 1406
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1407
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    const/4 v5, 0x0

    .line 1410
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    array-length v0, p2

    if-nez v0, :cond_17

    :cond_15
    move-object v0, v6

    .line 1458
    :goto_16
    return-object v0

    .line 1412
    :cond_17
    const-string v0, "certificates"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 1413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Certificate is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_27
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1415
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account ID is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1417
    :cond_37
    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_49

    .line 1418
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account ID is not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1420
    :cond_49
    const-string v0, "checkCRL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    const/4 v3, 0x2

    if-le v0, v3, :cond_5b

    .line 1421
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CheckCLR is not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_5b
    const-string v0, "OR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6c

    .line 1424
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Selection has OR statement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :cond_6c
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1426
    if-eqz v4, :cond_e0

    array-length v0, v4

    const/4 v3, 0x1

    if-le v0, v3, :cond_e0

    array-length v0, p2

    array-length v3, v4

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_e0

    .line 1427
    const/4 v0, 0x0

    :goto_7f
    array-length v3, p2

    if-ge v0, v3, :cond_e8

    .line 1428
    aget-object v3, v4, v0

    const-string v9, "certificates"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1429
    aget-object v3, p2, v0

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1427
    :goto_91
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    .line 1430
    :cond_94
    aget-object v3, v4, v0

    const-string v9, "certificateChain"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 1431
    aget-object v3, p2, v0

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 1432
    :cond_a4
    aget-object v3, v4, v0

    const-string v9, "checkCRL"

    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 1433
    const-string v3, "true"

    aget-object v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    const-string v3, "1"

    aget-object v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c5

    :cond_c2
    const/4 v3, 0x1

    :goto_c3
    move v5, v3

    goto :goto_91

    :cond_c5
    const/4 v3, 0x0

    goto :goto_c3

    .line 1435
    :cond_c7
    aget-object v1, v4, v0

    const-string v2, "accountId"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 1436
    aget-object v1, p2, v0

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_91

    .line 1438
    :cond_d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t parse statement."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1441
    :cond_e0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong selection in query."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1443
    :cond_e8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 1444
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1445
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1446
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1447
    const-wide/16 v7, 0x0

    cmp-long v0, v1, v7

    if-gtz v0, :cond_10b

    array-length v0, v3

    if-nez v0, :cond_10b

    .line 1448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account ID or certificate is not specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1449
    :cond_10b
    invoke-virtual {p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static/range {v0 .. v5}, Lcom/android/exchange/EasSyncService;->doValidateCert(Landroid/content/Context;J[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1451
    if-eqz v0, :cond_143

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_143

    .line 1452
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_140

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1456
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_12c

    :cond_140
    move-object v0, v1

    goto/16 :goto_16

    :cond_143
    move-object v0, v6

    goto/16 :goto_16
.end method


# virtual methods
.method buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;I)Landroid/database/Cursor;
    .registers 36
    .parameter "projection"
    .parameter "galResult"
    .parameter "startindex"

    .prologue
    .line 1071
    const/4 v7, -0x1

    .line 1072
    .local v7, displayNameIndex:I
    const/4 v2, -0x1

    .line 1073
    .local v2, alternateDisplayNameIndex:I
    const/4 v8, -0x1

    .line 1074
    .local v8, emailIndex:I
    const/16 v24, -0x1

    .line 1075
    .local v24, idIndex:I
    const/16 v26, -0x1

    .line 1077
    .local v26, lookupIndex:I
    const/16 v20, -0x1

    .line 1078
    .local v20, gal_pictureIndex:I
    const/4 v13, -0x1

    .line 1079
    .local v13, gal_displayname:I
    const/4 v14, -0x1

    .line 1080
    .local v14, gal_emailaddress:I
    const/16 v22, -0x1

    .line 1081
    .local v22, gal_workphone:I
    const/16 v16, -0x1

    .line 1082
    .local v16, gal_homephone:I
    const/16 v18, -0x1

    .line 1083
    .local v18, gal_mobilephone:I
    const/4 v15, -0x1

    .line 1084
    .local v15, gal_firstname:I
    const/16 v17, -0x1

    .line 1085
    .local v17, gal_lastname:I
    const/4 v12, -0x1

    .line 1086
    .local v12, gal_company:I
    const/16 v21, -0x1

    .line 1087
    .local v21, gal_title:I
    const/16 v19, -0x1

    .line 1088
    .local v19, gal_office:I
    const/4 v11, -0x1

    .line 1090
    .local v11, gal_alias:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_1c
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v23

    move/from16 v1, v28

    if-ge v0, v1, :cond_119

    .line 1091
    aget-object v3, p1, v23

    .line 1092
    .local v3, column:Ljava/lang/String;
    const-string v28, "display_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_3d

    const-string v28, "display_name"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_42

    .line 1094
    :cond_3d
    move/from16 v7, v23

    .line 1090
    :cond_3f
    :goto_3f
    add-int/lit8 v23, v23, 0x1

    goto :goto_1c

    .line 1095
    :cond_42
    const-string v28, "display_name_alt"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_4f

    .line 1096
    move/from16 v2, v23

    goto :goto_3f

    .line 1097
    :cond_4f
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_5c

    .line 1098
    move/from16 v8, v23

    goto :goto_3f

    .line 1099
    :cond_5c
    const-string v28, "_id"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_69

    .line 1100
    move/from16 v24, v23

    goto :goto_3f

    .line 1101
    :cond_69
    const-string v28, "lookup"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_76

    .line 1102
    move/from16 v26, v23

    goto :goto_3f

    .line 1103
    :cond_76
    const-string v28, "pictureData"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_83

    .line 1106
    move/from16 v20, v23

    goto :goto_3f

    .line 1107
    :cond_83
    const-string v28, "displayName"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_90

    .line 1108
    move/from16 v13, v23

    goto :goto_3f

    .line 1109
    :cond_90
    const-string v28, "emailAddress"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9d

    .line 1110
    move/from16 v14, v23

    goto :goto_3f

    .line 1111
    :cond_9d
    const-string v28, "workPhone"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_aa

    .line 1112
    move/from16 v22, v23

    goto :goto_3f

    .line 1113
    :cond_aa
    const-string v28, "homePhone"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b7

    .line 1114
    move/from16 v16, v23

    goto :goto_3f

    .line 1115
    :cond_b7
    const-string v28, "mobilePhone"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c5

    .line 1116
    move/from16 v18, v23

    goto/16 :goto_3f

    .line 1117
    :cond_c5
    const-string v28, "firstName"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d3

    .line 1118
    move/from16 v15, v23

    goto/16 :goto_3f

    .line 1119
    :cond_d3
    const-string v28, "lastName"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e1

    .line 1120
    move/from16 v17, v23

    goto/16 :goto_3f

    .line 1121
    :cond_e1
    const-string v28, "company"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_ef

    .line 1122
    move/from16 v12, v23

    goto/16 :goto_3f

    .line 1123
    :cond_ef
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_fd

    .line 1124
    move/from16 v21, v23

    goto/16 :goto_3f

    .line 1125
    :cond_fd
    const-string v28, "office"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10b

    .line 1126
    move/from16 v19, v23

    goto/16 :goto_3f

    .line 1127
    :cond_10b
    const-string v28, "alias"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3f

    .line 1128
    move/from16 v11, v23

    goto/16 :goto_3f

    .line 1131
    .end local v3           #column:Ljava/lang/String;
    :cond_119
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    .line 1136
    .local v27, row:[Ljava/lang/Object;
    new-instance v5, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1137
    .local v5, cursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1138
    .local v4, count:I
    const/16 v23, 0x0

    :goto_137
    move/from16 v0, v23

    if-ge v0, v4, :cond_2e9

    .line 1140
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/exchange/provider/GalResult;->protocolVerison:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4028

    cmpg-double v28, v28, v30

    if-gez v28, :cond_150

    move/from16 v0, v23

    move/from16 v1, p3

    if-ge v0, v1, :cond_150

    .line 1138
    :goto_14d
    add-int/lit8 v23, v23, 0x1

    goto :goto_137

    .line 1146
    :cond_150
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exchange/provider/GalResult$GalData;

    .line 1147
    .local v10, galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    const-string v28, "firstName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1148
    .local v9, firstName:Ljava/lang/String;
    const-string v28, "lastName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1149
    .local v25, lastName:Ljava/lang/String;
    const-string v28, "displayName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1152
    .local v6, displayName:Ljava/lang/String;
    if-nez v6, :cond_19b

    .line 1153
    if-eqz v9, :cond_2da

    if-eqz v25, :cond_2da

    .line 1154
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1161
    :cond_19b
    :goto_19b
    const-string v28, "displayName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0, v6}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v7, v0, :cond_1aa

    .line 1163
    aput-object v6, v27, v7

    .line 1165
    :cond_1aa
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v2, v0, :cond_1d3

    .line 1170
    if-eqz v9, :cond_2e5

    if-eqz v25, :cond_2e5

    .line 1171
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v2

    .line 1176
    :cond_1d3
    :goto_1d3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v8, v0, :cond_1e3

    .line 1177
    const-string v28, "emailAddress"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v8

    .line 1179
    :cond_1e3
    const/16 v28, -0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_1f3

    .line 1180
    add-int/lit8 v28, v23, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v24

    .line 1182
    :cond_1f3
    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_205

    .line 1187
    invoke-virtual {v10}, Lcom/android/exchange/provider/GalResult$GalData;->toPackedString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v26

    .line 1191
    :cond_205
    const/16 v28, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_217

    .line 1192
    const-string v28, "picture"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v20

    .line 1197
    :cond_217
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v13, v0, :cond_227

    .line 1198
    const-string v28, "displayName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v13

    .line 1200
    :cond_227
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v14, v0, :cond_237

    .line 1201
    const-string v28, "emailAddress"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v14

    .line 1203
    :cond_237
    const/16 v28, -0x1

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_249

    .line 1204
    const-string v28, "workPhone"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v22

    .line 1206
    :cond_249
    const/16 v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-eq v0, v1, :cond_25b

    .line 1207
    const-string v28, "homePhone"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v16

    .line 1209
    :cond_25b
    const/16 v28, -0x1

    move/from16 v0, v18

    move/from16 v1, v28

    if-eq v0, v1, :cond_26d

    .line 1210
    const-string v28, "mobilePhone"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v18

    .line 1212
    :cond_26d
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v15, v0, :cond_27d

    .line 1213
    const-string v28, "firstName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v15

    .line 1215
    :cond_27d
    const/16 v28, -0x1

    move/from16 v0, v17

    move/from16 v1, v28

    if-eq v0, v1, :cond_28f

    .line 1216
    const-string v28, "lastName"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v17

    .line 1218
    :cond_28f
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v12, v0, :cond_29f

    .line 1219
    const-string v28, "company"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v12

    .line 1221
    :cond_29f
    const/16 v28, -0x1

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b1

    .line 1222
    const-string v28, "title"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v21

    .line 1224
    :cond_2b1
    const/16 v28, -0x1

    move/from16 v0, v19

    move/from16 v1, v28

    if-eq v0, v1, :cond_2c3

    .line 1225
    const-string v28, "office"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v19

    .line 1227
    :cond_2c3
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v11, v0, :cond_2d3

    .line 1228
    const-string v28, "alias"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v27, v11

    .line 1231
    :cond_2d3
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14d

    .line 1155
    :cond_2da
    if-eqz v9, :cond_2df

    .line 1156
    move-object v6, v9

    goto/16 :goto_19b

    .line 1157
    :cond_2df
    if-eqz v25, :cond_19b

    .line 1158
    move-object/from16 v6, v25

    goto/16 :goto_19b

    .line 1173
    :cond_2e5
    aput-object v6, v27, v2

    goto/16 :goto_1d3

    .line 1235
    .end local v6           #displayName:Ljava/lang/String;
    .end local v9           #firstName:Ljava/lang/String;
    .end local v10           #galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v25           #lastName:Ljava/lang/String;
    :cond_2e9
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->endRange:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/exchange/provider/GalResult;->total:I

    move/from16 v29, v0

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_348

    .line 1237
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v7, v0, :cond_307

    .line 1238
    const-string v28, "gal_search_show_more"

    aput-object v28, v27, v7

    .line 1240
    :cond_307
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v2, v0, :cond_311

    .line 1241
    const-string v28, ""

    aput-object v28, v27, v2

    .line 1243
    :cond_311
    const/16 v28, -0x1

    move/from16 v0, v28

    if-eq v8, v0, :cond_31b

    .line 1244
    const-string v28, ""

    aput-object v28, v27, v8

    .line 1246
    :cond_31b
    const/16 v28, -0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-eq v0, v1, :cond_32b

    .line 1247
    const/16 v28, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v27, v24

    .line 1249
    :cond_32b
    const/16 v28, -0x1

    move/from16 v0, v26

    move/from16 v1, v28

    if-eq v0, v1, :cond_337

    .line 1250
    const-string v28, ""

    aput-object v28, v27, v26

    .line 1254
    :cond_337
    const/16 v28, -0x1

    move/from16 v0, v20

    move/from16 v1, v28

    if-eq v0, v1, :cond_343

    .line 1255
    const-string v28, "gal_search_show_more"

    aput-object v28, v27, v20

    .line 1259
    :cond_343
    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1262
    :cond_348
    return-object v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    .registers 14
    .parameter "context"
    .parameter "accountName"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 362
    .local v8, accountId:Ljava/lang/Long;
    if-nez v8, :cond_2f

    .line 363
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    .line 367
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_2f

    .line 368
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    :cond_2f
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1267
    sget-object v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1268
    .local v0, match:I
    sparse-switch v0, :sswitch_data_12

    .line 1276
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 1270
    :sswitch_b
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_a

    .line 1273
    :sswitch_e
    const-string v1, "vnd.android.cursor.dir/resolverecipients-entry"

    goto :goto_a

    .line 1268
    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_b
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 1286
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 138
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 377
    sget-object v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v109

    .line 383
    .local v109, match:I
    sget-object v3, Landroid/os/StrictMode$ThreadPolicy;->LAX:Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 384
    sget-object v3, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 385
    const-string v3, "[ExchagneDirectoryProvider]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query match: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v109

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sparse-switch v109, :sswitch_data_8b8

    .line 1043
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown URI "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    :sswitch_4a
    const/16 v125, 0x0

    .line 391
    .local v125, ric:Landroid/database/Cursor;
    :try_start_4c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Ljava/lang/String;

    .line 392
    .local v77, acckey:Ljava/lang/String;
    const-string v6, "accountkey=?"

    .line 393
    .local v6, selection1:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v77, v7, v3

    .line 396
    .local v7, selectionArgs1:[Ljava/lang/String;
    const-string v8, "weightedrank DESC "

    .line 397
    .local v8, sortOrder1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 399
    .local v12, filter:Ljava/lang/String;
    if-eqz v12, :cond_74

    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_71
    .catchall {:try_start_4c .. :try_end_71} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_71} :catch_117

    move-result v3

    if-gtz v3, :cond_7b

    .line 400
    :cond_74
    const/4 v15, 0x0

    .line 452
    if-eqz v125, :cond_7a

    .line 453
    :try_start_77
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_123

    .line 1045
    .end local v6           #selection1:Ljava/lang/String;
    .end local v7           #selectionArgs1:[Ljava/lang/String;
    .end local v8           #sortOrder1:Ljava/lang/String;
    .end local v12           #filter:Ljava/lang/String;
    .end local v77           #acckey:Ljava/lang/String;
    .end local v125           #ric:Landroid/database/Cursor;
    :cond_7a
    :goto_7a
    return-object v15

    .line 402
    .restart local v6       #selection1:Ljava/lang/String;
    .restart local v7       #selectionArgs1:[Ljava/lang/String;
    .restart local v8       #sortOrder1:Ljava/lang/String;
    .restart local v12       #filter:Ljava/lang/String;
    .restart local v77       #acckey:Ljava/lang/String;
    .restart local v125       #ric:Landroid/database/Cursor;
    :cond_7b
    :try_start_7b
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$RecipientInformationCache;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 404
    .local v4, uri_ric:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v89

    .line 405
    .local v89, context:Landroid/content/Context;
    invoke-virtual/range {v89 .. v89}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_91
    .catchall {:try_start_7b .. :try_end_91} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_91} :catch_117

    .line 407
    :try_start_91
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "Baseemailaddress adapter- RI Email Address"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->RIC_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v125

    .line 411
    const-string v3, "[ExchagneDirectoryProvider]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ri email address"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_91 .. :try_end_c0} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_c0} :catch_112

    .line 416
    :goto_c0
    if-eqz v125, :cond_152

    :try_start_c2
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_152

    .line 417
    new-instance v110, Landroid/database/MatrixCursor;

    move-object/from16 v0, v110

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 418
    .local v110, newCursor:Landroid/database/MatrixCursor;
    const/4 v3, -0x1

    move-object/from16 v0, v125

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 421
    const/16 v123, 0x0

    .line 424
    .local v123, record:I
    :goto_d9
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_126

    const/16 v3, 0xa

    move/from16 v0, v123

    if-gt v0, v3, :cond_126

    .line 425
    const-string v3, "alias"

    move-object/from16 v0, v125

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v125

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 427
    .local v21, displayName:Ljava/lang/String;
    const-string v3, "email_address"

    move-object/from16 v0, v125

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v125

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v94

    .line 429
    .local v94, emailAddress:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v21, v3, v5

    const/4 v5, 0x1

    aput-object v94, v3, v5

    move-object/from16 v0, v110

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 432
    add-int/lit8 v123, v123, 0x1

    .line 433
    goto :goto_d9

    .line 412
    .end local v21           #displayName:Ljava/lang/String;
    .end local v94           #emailAddress:Ljava/lang/String;
    .end local v110           #newCursor:Landroid/database/MatrixCursor;
    .end local v123           #record:I
    :catch_112
    move-exception v92

    .line 413
    .local v92, e:Ljava/lang/Exception;
    invoke-virtual/range {v92 .. v92}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_116
    .catchall {:try_start_c2 .. :try_end_116} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_116} :catch_117

    goto :goto_c0

    .line 447
    .end local v4           #uri_ric:Landroid/net/Uri;
    .end local v6           #selection1:Ljava/lang/String;
    .end local v7           #selectionArgs1:[Ljava/lang/String;
    .end local v8           #sortOrder1:Ljava/lang/String;
    .end local v12           #filter:Ljava/lang/String;
    .end local v77           #acckey:Ljava/lang/String;
    .end local v89           #context:Landroid/content/Context;
    .end local v92           #e:Ljava/lang/Exception;
    :catch_117
    move-exception v92

    .line 448
    .restart local v92       #e:Ljava/lang/Exception;
    :try_start_118
    invoke-virtual/range {v92 .. v92}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_142

    .line 449
    const/4 v15, 0x0

    .line 452
    if-eqz v125, :cond_7a

    .line 453
    :try_start_11e
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_121} :catch_123

    goto/16 :goto_7a

    .line 455
    .end local v92           #e:Ljava/lang/Exception;
    :catch_123
    move-exception v3

    goto/16 :goto_7a

    .line 434
    .restart local v4       #uri_ric:Landroid/net/Uri;
    .restart local v6       #selection1:Ljava/lang/String;
    .restart local v7       #selectionArgs1:[Ljava/lang/String;
    .restart local v8       #sortOrder1:Ljava/lang/String;
    .restart local v12       #filter:Ljava/lang/String;
    .restart local v77       #acckey:Ljava/lang/String;
    .restart local v89       #context:Landroid/content/Context;
    .restart local v110       #newCursor:Landroid/database/MatrixCursor;
    .restart local v123       #record:I
    :cond_126
    if-lez v123, :cond_130

    if-eqz v110, :cond_130

    :try_start_12a
    invoke-virtual/range {v110 .. v110}, Landroid/database/MatrixCursor;->getCount()I
    :try_end_12d
    .catchall {:try_start_12a .. :try_end_12d} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_12d} :catch_117

    move-result v3

    if-gtz v3, :cond_149

    .line 435
    :cond_130
    if-eqz v110, :cond_135

    .line 437
    :try_start_132
    invoke-virtual/range {v110 .. v110}, Landroid/database/MatrixCursor;->close()V
    :try_end_135
    .catchall {:try_start_132 .. :try_end_135} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_135} :catch_13d

    .line 442
    :cond_135
    :goto_135
    const/4 v15, 0x0

    .line 452
    if-eqz v125, :cond_7a

    .line 453
    :try_start_138
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13b} :catch_123

    goto/16 :goto_7a

    .line 438
    :catch_13d
    move-exception v92

    .line 439
    .restart local v92       #e:Ljava/lang/Exception;
    :try_start_13e
    invoke-virtual/range {v92 .. v92}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_141
    .catchall {:try_start_13e .. :try_end_141} :catchall_142
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_117

    goto :goto_135

    .line 451
    .end local v4           #uri_ric:Landroid/net/Uri;
    .end local v6           #selection1:Ljava/lang/String;
    .end local v7           #selectionArgs1:[Ljava/lang/String;
    .end local v8           #sortOrder1:Ljava/lang/String;
    .end local v12           #filter:Ljava/lang/String;
    .end local v77           #acckey:Ljava/lang/String;
    .end local v89           #context:Landroid/content/Context;
    .end local v92           #e:Ljava/lang/Exception;
    .end local v110           #newCursor:Landroid/database/MatrixCursor;
    .end local v123           #record:I
    :catchall_142
    move-exception v3

    .line 452
    if-eqz v125, :cond_148

    .line 453
    :try_start_145
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_145 .. :try_end_148} :catch_8b1

    .line 451
    :cond_148
    :goto_148
    throw v3

    .line 452
    .restart local v4       #uri_ric:Landroid/net/Uri;
    .restart local v6       #selection1:Ljava/lang/String;
    .restart local v7       #selectionArgs1:[Ljava/lang/String;
    .restart local v8       #sortOrder1:Ljava/lang/String;
    .restart local v12       #filter:Ljava/lang/String;
    .restart local v77       #acckey:Ljava/lang/String;
    .restart local v89       #context:Landroid/content/Context;
    .restart local v110       #newCursor:Landroid/database/MatrixCursor;
    .restart local v123       #record:I
    :cond_149
    if-eqz v125, :cond_14e

    .line 453
    :try_start_14b
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_8b4

    :cond_14e
    :goto_14e
    move-object/from16 v15, v110

    .line 444
    goto/16 :goto_7a

    .line 446
    .end local v110           #newCursor:Landroid/database/MatrixCursor;
    .end local v123           #record:I
    :cond_152
    const/4 v15, 0x0

    .line 452
    if-eqz v125, :cond_7a

    .line 453
    :try_start_155
    invoke-interface/range {v125 .. v125}, Landroid/database/Cursor;->close()V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_155 .. :try_end_158} :catch_123

    goto/16 :goto_7a

    .line 531
    .end local v4           #uri_ric:Landroid/net/Uri;
    .end local v6           #selection1:Ljava/lang/String;
    .end local v7           #selectionArgs1:[Ljava/lang/String;
    .end local v8           #sortOrder1:Ljava/lang/String;
    .end local v12           #filter:Ljava/lang/String;
    .end local v77           #acckey:Ljava/lang/String;
    .end local v89           #context:Landroid/content/Context;
    .end local v125           #ric:Landroid/database/Cursor;
    :sswitch_15a
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 536
    :sswitch_15d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v5, "com.android.exchange"

    invoke-virtual {v3, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v80

    .line 539
    .local v80, accounts:[Landroid/accounts/Account;
    new-instance v15, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 541
    .local v15, cursor:Landroid/database/MatrixCursor;
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "start query GAL_DIRECTORIES "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v89

    .line 548
    .restart local v89       #context:Landroid/content/Context;
    if-eqz v80, :cond_7a

    .line 549
    move-object/from16 v83, v80

    .local v83, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v83

    array-length v0, v0

    move/from16 v105, v0

    .local v105, len$:I
    const/16 v100, 0x0

    .local v100, i$:I
    :goto_188
    move/from16 v0, v100

    move/from16 v1, v105

    if-ge v0, v1, :cond_7a

    aget-object v78, v83, v100

    .line 575
    .local v78, account:Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v3, v0

    new-array v0, v3, [Ljava/lang/Object;

    move-object/from16 v126, v0

    .line 576
    .local v126, row:[Ljava/lang/Object;
    const/16 v99, 0x0

    .local v99, i:I
    :goto_199
    move-object/from16 v0, p2

    array-length v3, v0

    move/from16 v0, v99

    if-ge v0, v3, :cond_288

    .line 577
    aget-object v88, p2, v99

    .line 578
    .local v88, column:Ljava/lang/String;
    const-string v3, "accountName"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b5

    .line 579
    move-object/from16 v0, v78

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v126, v99

    .line 576
    :cond_1b2
    :goto_1b2
    add-int/lit8 v99, v99, 0x1

    goto :goto_199

    .line 580
    :cond_1b5
    const-string v3, "accountType"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c6

    .line 581
    move-object/from16 v0, v78

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v3, v126, v99

    goto :goto_1b2

    .line 582
    :cond_1c6
    const-string v3, "typeResourceId"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_208

    .line 583
    const/16 v85, 0x0

    .line 585
    .local v85, bundle:Landroid/os/Bundle;
    :try_start_1d2
    const-string v79, "com.android.exchange"

    .line 586
    .local v79, accountType:Ljava/lang/String;
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    move-object/from16 v0, v89

    invoke-direct {v3, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v79

    invoke-virtual {v3, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1e0
    .catch Landroid/os/RemoteException; {:try_start_1d2 .. :try_end_1e0} :catch_1fa

    move-result-object v85

    .line 596
    .end local v79           #accountType:Ljava/lang/String;
    :cond_1e1
    :goto_1e1
    const v95, 0x7f060001

    .line 597
    .local v95, exchangeName:I
    if-eqz v85, :cond_1f3

    const-string v3, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    const/4 v5, 0x1

    move-object/from16 v0, v85

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1f3

    .line 602
    const/high16 v95, 0x7f06

    .line 604
    :cond_1f3
    invoke-static/range {v95 .. v95}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v126, v99

    goto :goto_1b2

    .line 588
    .end local v95           #exchangeName:I
    :catch_1fa
    move-exception v92

    .line 589
    .local v92, e:Landroid/os/RemoteException;
    const-string v3, "ExchangeDirectoryProvider."

    const-string v5, "Exception Caughted"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    if-eqz v92, :cond_1e1

    .line 591
    invoke-virtual/range {v92 .. v92}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1e1

    .line 605
    .end local v85           #bundle:Landroid/os/Bundle;
    .end local v92           #e:Landroid/os/RemoteException;
    :cond_208
    const-string v3, "displayName"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_262

    .line 610
    move-object/from16 v0, v78

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 611
    .local v20, accountName:Ljava/lang/String;
    const/16 v3, 0x40

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v84

    .line 612
    .local v84, atIndex:I
    const/4 v3, -0x1

    move/from16 v0, v84

    if-eq v0, v3, :cond_25a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    move/from16 v0, v84

    if-ge v0, v3, :cond_25a

    .line 613
    add-int/lit8 v3, v84, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v96

    .line 615
    .local v96, firstLetter:C
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v96

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v5, v84, 0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v126, v99

    goto/16 :goto_1b2

    .line 617
    .end local v96           #firstLetter:C
    :cond_25a
    move-object/from16 v0, v78

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v3, v126, v99

    goto/16 :goto_1b2

    .line 619
    .end local v20           #accountName:Ljava/lang/String;
    .end local v84           #atIndex:I
    :cond_262
    const-string v3, "exportSupport"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_275

    .line 620
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v126, v99

    goto/16 :goto_1b2

    .line 621
    :cond_275
    const-string v3, "shortcutSupport"

    move-object/from16 v0, v88

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b2

    .line 622
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v126, v99

    goto/16 :goto_1b2

    .line 625
    .end local v88           #column:Ljava/lang/String;
    :cond_288
    move-object/from16 v0, v126

    invoke-virtual {v15, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 549
    add-int/lit8 v100, v100, 0x1

    goto/16 :goto_188

    .line 632
    .end local v15           #cursor:Landroid/database/MatrixCursor;
    .end local v78           #account:Landroid/accounts/Account;
    .end local v80           #accounts:[Landroid/accounts/Account;
    .end local v83           #arr$:[Landroid/accounts/Account;
    .end local v89           #context:Landroid/content/Context;
    .end local v99           #i:I
    .end local v100           #i$:I
    .end local v105           #len$:I
    .end local v126           #row:[Ljava/lang/Object;
    :sswitch_291
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 635
    .restart local v12       #filter:Ljava/lang/String;
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "query GAL_EMAIL_FILTER "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-eqz v12, :cond_2a9

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-ge v3, v5, :cond_2ac

    .line 637
    :cond_2a9
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 639
    :cond_2ac
    const-string v3, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 640
    .restart local v20       #accountName:Ljava/lang/String;
    if-nez v20, :cond_2b9

    .line 641
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 644
    :cond_2b9
    const-string v3, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v108

    .line 645
    .local v108, limitString:Ljava/lang/String;
    move-object/from16 v128, p3

    .line 646
    .local v128, startString:Ljava/lang/String;
    const/16 v14, 0x14

    .line 647
    .local v14, limit:I
    if-eqz v108, :cond_2eb

    .line 649
    :try_start_2c7
    invoke-static/range {v108 .. v108}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2ca
    .catch Ljava/lang/NumberFormatException; {:try_start_2c7 .. :try_end_2ca} :catch_2e8

    move-result v14

    .line 653
    :goto_2cb
    if-gtz v14, :cond_2eb

    .line 654
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Limit not valid: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v108

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 650
    :catch_2e8
    move-exception v92

    .line 651
    .local v92, e:Ljava/lang/NumberFormatException;
    const/4 v14, 0x0

    goto :goto_2cb

    .line 657
    .end local v92           #e:Ljava/lang/NumberFormatException;
    :cond_2eb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v86

    .line 658
    .local v86, callingId:J
    const/4 v13, 0x0

    .line 659
    .local v13, startindex:I
    if-eqz p4, :cond_2f9

    .line 660
    const/4 v3, 0x0

    aget-object v3, p4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 664
    :cond_2f9
    :try_start_2f9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_304
    .catchall {:try_start_2f9 .. :try_end_304} :catchall_358

    move-result-wide v10

    .line 665
    .local v10, accountId:J
    const-wide/16 v22, -0x1

    cmp-long v3, v10, v22

    if-nez v3, :cond_311

    .line 667
    const/4 v15, 0x0

    .line 687
    .end local v20           #accountName:Ljava/lang/String;
    :goto_30c
    invoke-static/range {v86 .. v87}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_7a

    .line 671
    .restart local v20       #accountName:Ljava/lang/String;
    :cond_311
    :try_start_311
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "Before EasSyncService.searchGal "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/16 v98, 0x0

    .line 673
    .local v98, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz v128, :cond_33a

    if-eqz p4, :cond_33a

    .line 674
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static/range {v9 .. v14}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;II)Lcom/android/exchange/provider/GalResult;

    move-result-object v98

    .line 680
    .end local v20           #accountName:Ljava/lang/String;
    :goto_326
    if-eqz v98, :cond_34b

    .line 681
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "EasSyncService.searchGal galResult != nul "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v98

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;I)Landroid/database/Cursor;

    move-result-object v15

    goto :goto_30c

    .line 677
    .restart local v20       #accountName:Ljava/lang/String;
    :cond_33a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v19, 0x0

    move-wide/from16 v16, v10

    move-object/from16 v18, v12

    move/from16 v20, v14

    invoke-static/range {v15 .. v20}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;II)Lcom/android/exchange/provider/GalResult;

    .end local v20           #accountName:Ljava/lang/String;
    move-result-object v98

    goto :goto_326

    .line 685
    :cond_34b
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "After EasSyncService.searchGal "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_352
    .catchall {:try_start_311 .. :try_end_352} :catchall_358

    .line 687
    invoke-static/range {v86 .. v87}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1045
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 687
    .end local v10           #accountId:J
    .end local v98           #galResult:Lcom/android/exchange/provider/GalResult;
    :catchall_358
    move-exception v3

    invoke-static/range {v86 .. v87}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 693
    .end local v12           #filter:Ljava/lang/String;
    .end local v13           #startindex:I
    .end local v14           #limit:I
    .end local v86           #callingId:J
    .end local v108           #limitString:Ljava/lang/String;
    .end local v128           #startString:Ljava/lang/String;
    :sswitch_35d
    const-string v3, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 694
    .restart local v20       #accountName:Ljava/lang/String;
    const-string v3, "[ExchagneDirectoryProvider]"

    const-string v5, "Gal query GAL_CONTACT_WITH_ID "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    if-nez v20, :cond_371

    .line 696
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 698
    :cond_371
    new-instance v16, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;-><init>([Ljava/lang/String;)V

    .line 699
    .local v16, galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    new-instance v15, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 702
    .restart local v15       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v116

    .line 703
    .local v116, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x2

    move-object/from16 v0, v116

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 704
    .local v19, lookupKey:Ljava/lang/String;
    const/4 v3, 0x3

    move/from16 v0, v109

    if-ne v0, v3, :cond_43f

    const/4 v3, 0x3

    move-object/from16 v0, v116

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 706
    .local v17, contactId:J
    :goto_3a0
    new-instance v120, Lcom/android/emailcommon/mail/PackedString;

    move-object/from16 v0, v120

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 707
    .local v120, ps:Lcom/android/emailcommon/mail/PackedString;
    const-string v3, "displayName"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 708
    .restart local v21       #displayName:Ljava/lang/String;
    const-string v3, "emailAddress"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v15 .. v22}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/16 v29, 0x1

    const-string v3, "homePhone"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-wide/from16 v24, v17

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v28, v21

    invoke-static/range {v22 .. v30}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 712
    const/16 v29, 0x3

    const-string v3, "workPhone"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-wide/from16 v24, v17

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v28, v21

    invoke-static/range {v22 .. v30}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 714
    const/16 v29, 0x2

    const-string v3, "mobilePhone"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-wide/from16 v24, v17

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v28, v21

    invoke-static/range {v22 .. v30}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 716
    const-string v3, "firstName"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string v3, "lastName"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-wide/from16 v24, v17

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v30, v21

    invoke-static/range {v22 .. v30}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v3, "firstName"

    move-object/from16 v0, v120

    invoke-virtual {v0, v3}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v22, v15

    move-object/from16 v23, v16

    move-wide/from16 v24, v17

    move-object/from16 v26, v20

    move-object/from16 v27, v21

    move-object/from16 v29, v120

    invoke-static/range {v22 .. v29}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addDataRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/emailcommon/mail/PackedString;)V

    goto/16 :goto_7a

    .line 704
    .end local v17           #contactId:J
    .end local v21           #displayName:Ljava/lang/String;
    .end local v120           #ps:Lcom/android/emailcommon/mail/PackedString;
    :cond_43f
    const-wide/16 v17, 0x1

    goto/16 :goto_3a0

    .line 727
    .end local v15           #cursor:Landroid/database/MatrixCursor;
    .end local v16           #galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .end local v19           #lookupKey:Ljava/lang/String;
    .end local v20           #accountName:Ljava/lang/String;
    .end local v116           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_443
    :try_start_443
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->validateCert(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_44c
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_443 .. :try_end_44c} :catch_44f

    move-result-object v15

    goto/16 :goto_7a

    .line 728
    :catch_44f
    move-exception v93

    .line 730
    .local v93, e1:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessagingException: type:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v93 .. v93}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 742
    .end local v93           #e1:Lcom/android/emailcommon/mail/MessagingException;
    :sswitch_46d
    if-nez p3, :cond_472

    .line 743
    const/4 v15, 0x0

    goto/16 :goto_7a

    .line 747
    :cond_472
    const-wide/16 v10, -0x1

    .line 748
    .restart local v10       #accountId:J
    const/16 v26, 0x1

    .line 749
    .local v26, certificateRetrieval:I
    const/16 v32, 0x0

    .line 750
    .local v32, accountIdStr:Ljava/lang/String;
    new-instance v130, Ljava/util/ArrayList;

    invoke-direct/range {v130 .. v130}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v130, toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v27, 0x0

    .line 752
    .local v27, startTimeStr:Ljava/lang/String;
    const/16 v28, 0x0

    .line 753
    .local v28, endTimeStr:Ljava/lang/String;
    const/16 v103, 0x1

    .line 755
    .local v103, isValidWhereClause:Z
    const/16 v42, 0x0

    .line 756
    .local v42, idFlag:Z
    const/16 v43, 0x0

    .line 757
    .local v43, accountIdFlag:Z
    const/16 v44, 0x0

    .line 758
    .local v44, toFlag:Z
    const/16 v45, 0x0

    .line 759
    .local v45, responseStatusFlag:Z
    const/16 v46, 0x0

    .line 760
    .local v46, displayNameFlag:Z
    const/16 v47, 0x0

    .line 761
    .local v47, emailFlag:Z
    const/16 v48, 0x0

    .line 764
    .local v48, certificateStatusFlag:Z
    const/16 v49, 0x0

    .line 765
    .local v49, certificateFlag:Z
    const/16 v50, 0x0

    .line 766
    .local v50, miniCertificateFlag:Z
    const/16 v51, 0x0

    .line 767
    .local v51, availabilityStatusFlag:Z
    const/16 v52, 0x0

    .line 768
    .local v52, mergedFreeBusyFlag:Z
    new-instance v118, Ljava/util/ArrayList;

    invoke-direct/range {v118 .. v118}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v118, projectionStrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v117

    .line 770
    .local v117, projectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "_id"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b5

    .line 771
    const/16 v42, 0x1

    .line 772
    const-string v3, "_id"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 774
    :cond_4b5
    const-string v3, "accountId"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c8

    .line 775
    const/16 v43, 0x1

    .line 776
    const-string v3, "accountId"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    :cond_4c8
    const-string v3, "to"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4db

    .line 779
    const/16 v44, 0x1

    .line 780
    const-string v3, "to"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_4db
    const-string v3, "responseStatus"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4ee

    .line 783
    const/16 v45, 0x1

    .line 784
    const-string v3, "responseStatus"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    :cond_4ee
    const-string v3, "displayName"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_501

    .line 787
    const/16 v46, 0x1

    .line 788
    const-string v3, "displayName"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 790
    :cond_501
    const-string v3, "email"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_514

    .line 791
    const/16 v47, 0x1

    .line 792
    const-string v3, "email"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 794
    :cond_514
    const-string v3, "certificateStatus"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_527

    .line 795
    const/16 v48, 0x1

    .line 796
    const-string v3, "certificateStatus"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    :cond_527
    const-string v3, "certificate"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53c

    .line 799
    const/16 v49, 0x1

    .line 800
    const-string v3, "certificate"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    const/16 v26, 0x2

    .line 805
    :cond_53c
    const-string v3, "miniCertificate"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_556

    .line 806
    const/16 v50, 0x1

    .line 807
    const-string v3, "miniCertificate"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const/4 v3, 0x2

    move/from16 v0, v26

    if-eq v0, v3, :cond_556

    .line 811
    const/16 v26, 0x3

    .line 814
    :cond_556
    const-string v3, "availabilityStatus"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_569

    .line 815
    const/16 v51, 0x1

    .line 816
    const-string v3, "availabilityStatus"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    :cond_569
    const-string v3, "mergedFreeBusy"

    move-object/from16 v0, v117

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57c

    .line 819
    const/16 v52, 0x1

    .line 820
    const-string v3, "mergedFreeBusy"

    move-object/from16 v0, v118

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_57c
    if-eqz p4, :cond_5b1

    .line 826
    const/16 v3, 0x3f

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v102

    .line 827
    .local v102, index:I
    const/16 v90, 0x0

    .line 828
    .local v90, countReplace:I
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v82, v0

    .line 829
    .local v82, argLength:I
    :goto_58d
    if-ltz v102, :cond_5b1

    if-eqz v103, :cond_5b1

    .line 830
    move/from16 v0, v90

    move/from16 v1, v82

    if-ge v0, v1, :cond_5ae

    .line 831
    const-string v3, "\\?"

    aget-object v5, p4, v90

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 832
    add-int/lit8 v90, v90, 0x1

    .line 833
    const/16 v3, 0x3f

    move-object/from16 v0, p3

    move/from16 v1, v102

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v102

    goto :goto_58d

    .line 835
    :cond_5ae
    const/16 v103, 0x0

    goto :goto_58d

    .line 843
    .end local v82           #argLength:I
    .end local v90           #countReplace:I
    .end local v102           #index:I
    :cond_5b1
    const/16 v3, 0x28

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v97

    .line 844
    .local v97, firstRoundBracket:I
    const/16 v3, 0x29

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v127

    .line 845
    .local v127, secondRoundBracket:I
    if-gez v97, :cond_5c7

    if-ltz v127, :cond_6a0

    if-eqz v103, :cond_6a0

    .line 846
    :cond_5c7
    if-ltz v97, :cond_69c

    if-lez v127, :cond_69c

    move/from16 v0, v127

    move/from16 v1, v97

    if-le v0, v1, :cond_69c

    .line 848
    add-int/lit8 v3, v97, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v127

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v129

    .line 850
    .local v129, substr:Ljava/lang/String;
    const-string v3, "("

    move-object/from16 v0, v129

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_698

    const-string v3, ")"

    move-object/from16 v0, v129

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_698

    const-string v3, "OR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v97

    if-le v3, v0, :cond_698

    const-string v3, "OR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move/from16 v0, v127

    if-ge v3, v0, :cond_698

    .line 853
    const-string v3, "AND"

    move-object/from16 v0, v129

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_613

    .line 854
    const/16 v103, 0x0

    .line 866
    .end local v129           #substr:Ljava/lang/String;
    :cond_613
    :goto_613
    const-string v3, "AND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v81

    .line 867
    .local v81, andTokens:[Ljava/lang/String;
    move-object/from16 v0, v81

    array-length v0, v0

    move/from16 v106, v0

    .line 868
    .local v106, lengthAnd:I
    :cond_620
    :goto_620
    add-int/lit8 v106, v106, -0x1

    if-ltz v106, :cond_744

    if-eqz v103, :cond_744

    .line 869
    aget-object v114, v81, v106

    .line 871
    .local v114, paramAnd:Ljava/lang/String;
    invoke-virtual/range {v114 .. v114}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v114

    .line 872
    const-string v3, "("

    move-object/from16 v0, v114

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6bf

    .line 873
    const-string v3, ")"

    move-object/from16 v0, v114

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6bb

    .line 874
    const/4 v3, 0x1

    invoke-virtual/range {v114 .. v114}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v114

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v111

    .line 875
    .local v111, orParse:Ljava/lang/String;
    const-string v3, "OR"

    move-object/from16 v0, v111

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v112

    .line 876
    .local v112, orTokens:[Ljava/lang/String;
    move-object/from16 v0, v112

    array-length v0, v0

    move/from16 v107, v0

    .line 877
    .local v107, lengthOr:I
    :goto_65a
    add-int/lit8 v107, v107, -0x1

    if-ltz v107, :cond_620

    if-eqz v103, :cond_620

    .line 878
    aget-object v115, v112, v107

    .line 879
    .local v115, paramOr:Ljava/lang/String;
    const-string v3, "="

    move-object/from16 v0, v115

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v113

    .line 880
    .local v113, pair:[Ljava/lang/String;
    move-object/from16 v0, v113

    array-length v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_672

    .line 881
    const/16 v103, 0x0

    .line 883
    :cond_672
    const/4 v3, 0x0

    aget-object v3, v113, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v104

    .line 884
    .local v104, key:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v113, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v131

    .line 885
    .local v131, val:Ljava/lang/String;
    const-string v3, "to"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b8

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v130

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_65a

    .line 857
    .end local v81           #andTokens:[Ljava/lang/String;
    .end local v104           #key:Ljava/lang/String;
    .end local v106           #lengthAnd:I
    .end local v107           #lengthOr:I
    .end local v111           #orParse:Ljava/lang/String;
    .end local v112           #orTokens:[Ljava/lang/String;
    .end local v113           #pair:[Ljava/lang/String;
    .end local v114           #paramAnd:Ljava/lang/String;
    .end local v115           #paramOr:Ljava/lang/String;
    .end local v131           #val:Ljava/lang/String;
    .restart local v129       #substr:Ljava/lang/String;
    :cond_698
    const/16 v103, 0x0

    goto/16 :goto_613

    .line 860
    .end local v129           #substr:Ljava/lang/String;
    :cond_69c
    const/16 v103, 0x0

    goto/16 :goto_613

    .line 862
    :cond_6a0
    const-string v3, "AND"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_613

    const-string v3, "OR"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_613

    .line 863
    const/16 v103, 0x0

    goto/16 :goto_613

    .line 889
    .restart local v81       #andTokens:[Ljava/lang/String;
    .restart local v104       #key:Ljava/lang/String;
    .restart local v106       #lengthAnd:I
    .restart local v107       #lengthOr:I
    .restart local v111       #orParse:Ljava/lang/String;
    .restart local v112       #orTokens:[Ljava/lang/String;
    .restart local v113       #pair:[Ljava/lang/String;
    .restart local v114       #paramAnd:Ljava/lang/String;
    .restart local v115       #paramOr:Ljava/lang/String;
    .restart local v131       #val:Ljava/lang/String;
    :cond_6b8
    const/16 v103, 0x0

    goto :goto_65a

    .line 893
    .end local v104           #key:Ljava/lang/String;
    .end local v107           #lengthOr:I
    .end local v111           #orParse:Ljava/lang/String;
    .end local v112           #orTokens:[Ljava/lang/String;
    .end local v113           #pair:[Ljava/lang/String;
    .end local v115           #paramOr:Ljava/lang/String;
    .end local v131           #val:Ljava/lang/String;
    :cond_6bb
    const/16 v103, 0x0

    goto/16 :goto_620

    .line 898
    :cond_6bf
    const-string v3, "="

    move-object/from16 v0, v114

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v113

    .line 899
    .restart local v113       #pair:[Ljava/lang/String;
    move-object/from16 v0, v113

    array-length v3, v0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_6cf

    .line 900
    const/16 v103, 0x0

    .line 902
    :cond_6cf
    const/4 v3, 0x0

    aget-object v3, v113, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v104

    .line 903
    .restart local v104       #key:Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v113, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v131

    .line 904
    .restart local v131       #val:Ljava/lang/String;
    const-string v3, "accountId"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f1

    .line 905
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_620

    .line 906
    :cond_6f1
    const-string v3, "to"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70a

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v130

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_620

    .line 908
    :cond_70a
    const-string v3, "startTime"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71e

    .line 909
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_620

    .line 910
    :cond_71e
    const-string v3, "endTime"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_732

    .line 911
    move-object/from16 v0, p0

    move-object/from16 v1, v131

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_620

    .line 912
    :cond_732
    const-string v3, "accoundId"

    move-object/from16 v0, v104

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_620

    .line 913
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Use \'AccountId\' instead of \'AccoundId\'"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 922
    .end local v104           #key:Ljava/lang/String;
    .end local v113           #pair:[Ljava/lang/String;
    .end local v114           #paramAnd:Ljava/lang/String;
    .end local v131           #val:Ljava/lang/String;
    :cond_744
    const-string v3, "[ExchagneDirectoryProvider]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Gal query selection: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    if-eqz v103, :cond_76a

    if-nez v27, :cond_764

    if-nez v28, :cond_76a

    :cond_764
    if-nez v28, :cond_768

    if-nez v27, :cond_76a

    :cond_768
    if-nez v32, :cond_772

    .line 935
    :cond_76a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal where clause string"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 938
    :cond_772
    invoke-virtual/range {v118 .. v118}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v119, v0

    .line 939
    .local v119, projs:[Ljava/lang/String;
    invoke-virtual/range {v118 .. v119}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 940
    new-instance v29, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;

    move-object/from16 v0, v29

    move-object/from16 v1, v119

    invoke-direct {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;-><init>([Ljava/lang/String;)V

    .line 943
    .local v29, c:Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;
    :try_start_786
    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_789
    .catch Ljava/lang/NumberFormatException; {:try_start_786 .. :try_end_789} :catch_827

    move-result-wide v10

    .line 947
    invoke-virtual/range {v130 .. v130}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 948
    .local v25, toArray:[Ljava/lang/String;
    move-object/from16 v0, v130

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 951
    const/16 v121, 0x0

    .line 954
    .local v121, r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    :try_start_79b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v22

    move-wide/from16 v23, v10

    invoke-static/range {v22 .. v28}, Lcom/android/exchange/EasSyncService;->doResolveRecipients(Landroid/content/Context;J[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_7a4
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_79b .. :try_end_7a4} :catch_830

    move-result-object v121

    .line 961
    if-eqz v121, :cond_8ad

    .line 962
    const/16 v37, 0x0

    .line 965
    .local v37, certStatus:B
    const/16 v38, 0x0

    .line 966
    .local v38, certificate:Ljava/lang/String;
    const/16 v39, 0x0

    .line 967
    .local v39, miniCertificate:Ljava/lang/String;
    const/16 v91, 0x0

    .line 969
    .local v91, counter:I
    invoke-virtual/range {v121 .. v121}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v100

    :cond_7b3
    :goto_7b3
    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_898

    invoke-interface/range {v100 .. v100}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v124

    check-cast v124, Lcom/android/exchange/provider/RRResponse;

    .line 970
    .local v124, responseData:Lcom/android/exchange/provider/RRResponse;
    move-object/from16 v0, v124

    iget-byte v3, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    const/4 v5, 0x4

    if-eq v3, v5, :cond_858

    .line 971
    move-object/from16 v0, v124

    iget-object v3, v0, Lcom/android/exchange/provider/RRResponse;->recipientData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v101

    .local v101, i$:Ljava/util/Iterator;
    :goto_7ce
    invoke-interface/range {v101 .. v101}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b3

    invoke-interface/range {v101 .. v101}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v122

    check-cast v122, Lcom/android/exchange/provider/RRResponse$RecipientData;

    .line 973
    .local v122, recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    move-object/from16 v0, v122

    iget-object v3, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    if-eqz v3, :cond_851

    .line 974
    move-object/from16 v0, v122

    iget-object v3, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    iget-byte v0, v3, Lcom/android/exchange/provider/RecipientCertificates;->mStatus:B

    move/from16 v37, v0

    .line 979
    move-object/from16 v0, v122

    iget-object v3, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    iget-object v0, v3, Lcom/android/exchange/provider/RecipientCertificates;->mCertificate:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 980
    move-object/from16 v0, v122

    iget-object v3, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mCertificates:Lcom/android/exchange/provider/RecipientCertificates;

    iget-object v0, v3, Lcom/android/exchange/provider/RecipientCertificates;->mMiniCertificate:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 989
    :goto_7f8
    move/from16 v0, v91

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, v124

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v124

    iget-byte v0, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    move/from16 v34, v0

    move-object/from16 v0, v122

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v122

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mEmail:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v122

    iget v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mAvailabilityStatus:I

    move/from16 v40, v0

    move-object/from16 v0, v122

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse$RecipientData;->mMergedFreeBusy:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v29 .. v52}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V

    .line 1010
    add-int/lit8 v91, v91, 0x1

    goto :goto_7ce

    .line 944
    .end local v25           #toArray:[Ljava/lang/String;
    .end local v37           #certStatus:B
    .end local v38           #certificate:Ljava/lang/String;
    .end local v39           #miniCertificate:Ljava/lang/String;
    .end local v91           #counter:I
    .end local v101           #i$:Ljava/util/Iterator;
    .end local v121           #r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    .end local v122           #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    .end local v124           #responseData:Lcom/android/exchange/provider/RRResponse;
    :catch_827
    move-exception v92

    .line 945
    .restart local v92       #e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal value in where clause"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 956
    .end local v92           #e:Ljava/lang/NumberFormatException;
    .restart local v25       #toArray:[Ljava/lang/String;
    .restart local v121       #r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    :catch_830
    move-exception v92

    .line 957
    .local v92, e:Lcom/android/emailcommon/mail/MessagingException;
    invoke-virtual/range {v92 .. v92}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V

    .line 958
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MessagingException: type:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v92 .. v92}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 982
    .end local v92           #e:Lcom/android/emailcommon/mail/MessagingException;
    .restart local v37       #certStatus:B
    .restart local v38       #certificate:Ljava/lang/String;
    .restart local v39       #miniCertificate:Ljava/lang/String;
    .restart local v91       #counter:I
    .restart local v101       #i$:Ljava/util/Iterator;
    .restart local v122       #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    .restart local v124       #responseData:Lcom/android/exchange/provider/RRResponse;
    :cond_851
    const/16 v37, 0x0

    .line 985
    const/16 v38, 0x0

    .line 986
    const/16 v39, 0x0

    goto :goto_7f8

    .line 1014
    .end local v101           #i$:Ljava/util/Iterator;
    .end local v122           #recipientData:Lcom/android/exchange/provider/RRResponse$RecipientData;
    :cond_858
    move/from16 v0, v91

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, v124

    iget-object v0, v0, Lcom/android/exchange/provider/RRResponse;->to:Ljava/lang/String;

    move-object/from16 v57, v0

    move-object/from16 v0, v124

    iget-byte v0, v0, Lcom/android/exchange/provider/RRResponse;->status:B

    move/from16 v58, v0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    move-object/from16 v53, v29

    move-object/from16 v56, v32

    move/from16 v66, v42

    move/from16 v67, v43

    move/from16 v68, v44

    move/from16 v69, v45

    move/from16 v70, v46

    move/from16 v71, v47

    move/from16 v72, v48

    move/from16 v73, v49

    move/from16 v74, v50

    move/from16 v75, v51

    move/from16 v76, v52

    invoke-static/range {v53 .. v76}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->addR2DataRow(Landroid/database/MatrixCursor;JLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZZZZZZZZZZ)V

    .line 1031
    add-int/lit8 v91, v91, 0x1

    goto/16 :goto_7b3

    .line 1035
    .end local v124           #responseData:Lcom/android/exchange/provider/RRResponse;
    :cond_898
    new-instance v85, Landroid/os/Bundle;

    invoke-direct/range {v85 .. v85}, Landroid/os/Bundle;-><init>()V

    .line 1036
    .restart local v85       #bundle:Landroid/os/Bundle;
    const-string v3, "com.android.exchange.provider.TOTAL_RESULTS"

    move-object/from16 v0, v85

    move/from16 v1, v91

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1037
    move-object/from16 v0, v29

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;->setExtras(Landroid/os/Bundle;)V

    .end local v37           #certStatus:B
    .end local v38           #certificate:Ljava/lang/String;
    .end local v39           #miniCertificate:Ljava/lang/String;
    .end local v85           #bundle:Landroid/os/Bundle;
    .end local v91           #counter:I
    :cond_8ad
    move-object/from16 v15, v29

    .line 1039
    goto/16 :goto_7a

    .line 455
    .end local v10           #accountId:J
    .end local v25           #toArray:[Ljava/lang/String;
    .end local v26           #certificateRetrieval:I
    .end local v27           #startTimeStr:Ljava/lang/String;
    .end local v28           #endTimeStr:Ljava/lang/String;
    .end local v29           #c:Lcom/android/exchange/provider/ExchangeDirectoryProvider$MatrixCursorExtras;
    .end local v32           #accountIdStr:Ljava/lang/String;
    .end local v42           #idFlag:Z
    .end local v43           #accountIdFlag:Z
    .end local v44           #toFlag:Z
    .end local v45           #responseStatusFlag:Z
    .end local v46           #displayNameFlag:Z
    .end local v47           #emailFlag:Z
    .end local v48           #certificateStatusFlag:Z
    .end local v49           #certificateFlag:Z
    .end local v50           #miniCertificateFlag:Z
    .end local v51           #availabilityStatusFlag:Z
    .end local v52           #mergedFreeBusyFlag:Z
    .end local v81           #andTokens:[Ljava/lang/String;
    .end local v97           #firstRoundBracket:I
    .end local v103           #isValidWhereClause:Z
    .end local v106           #lengthAnd:I
    .end local v117           #projectionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v118           #projectionStrs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v119           #projs:[Ljava/lang/String;
    .end local v121           #r2Result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/provider/RRResponse;>;"
    .end local v127           #secondRoundBracket:I
    .end local v130           #toList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v125       #ric:Landroid/database/Cursor;
    :catch_8b1
    move-exception v5

    goto/16 :goto_148

    .restart local v4       #uri_ric:Landroid/net/Uri;
    .restart local v6       #selection1:Ljava/lang/String;
    .restart local v7       #selectionArgs1:[Ljava/lang/String;
    .restart local v8       #sortOrder1:Ljava/lang/String;
    .restart local v12       #filter:Ljava/lang/String;
    .restart local v77       #acckey:Ljava/lang/String;
    .restart local v89       #context:Landroid/content/Context;
    .restart local v110       #newCursor:Landroid/database/MatrixCursor;
    .restart local v123       #record:I
    :catch_8b4
    move-exception v3

    goto/16 :goto_14e

    .line 386
    nop

    :sswitch_data_8b8
    .sparse-switch
        0x0 -> :sswitch_15d
        0x1 -> :sswitch_291
        0x2 -> :sswitch_35d
        0x3 -> :sswitch_35d
        0x4 -> :sswitch_291
        0x64 -> :sswitch_46d
        0xc8 -> :sswitch_443
        0x12c -> :sswitch_15a
        0x190 -> :sswitch_4a
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 1291
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
