.class public Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;,
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    }
.end annotation


# static fields
.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 73
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 77
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    .line 102
    return-void
.end method


# virtual methods
.method buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;
    .registers 20
    .parameter "projection"
    .parameter "galResult"

    .prologue
    .line 343
    const/4 v6, -0x1

    .line 344
    .local v6, displayNameIndex:I
    const/4 v1, -0x1

    .line 345
    .local v1, alternateDisplayNameIndex:I
    const/4 v7, -0x1

    .line 346
    .local v7, emailIndex:I
    const/4 v11, -0x1

    .line 347
    .local v11, idIndex:I
    const/4 v13, -0x1

    .line 349
    .local v13, lookupIndex:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_6
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v10, v15, :cond_49

    .line 350
    aget-object v2, p1, v10

    .line 351
    .local v2, column:Ljava/lang/String;
    const-string v15, "display_name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1d

    const-string v15, "display_name"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_21

    .line 353
    :cond_1d
    move v6, v10

    .line 349
    :cond_1e
    :goto_1e
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 354
    :cond_21
    const-string v15, "display_name_alt"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2b

    .line 355
    move v1, v10

    goto :goto_1e

    .line 356
    :cond_2b
    const-string v15, "data1"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    .line 357
    move v7, v10

    goto :goto_1e

    .line 358
    :cond_35
    const-string v15, "_id"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3f

    .line 359
    move v11, v10

    goto :goto_1e

    .line 360
    :cond_3f
    const-string v15, "lookup"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 361
    move v13, v10

    goto :goto_1e

    .line 365
    .end local v2           #column:Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p1

    array-length v15, v0

    new-array v14, v15, [Ljava/lang/Object;

    .line 370
    .local v14, row:[Ljava/lang/Object;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 371
    .local v4, cursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 372
    .local v3, count:I
    const/4 v10, 0x0

    :goto_5e
    if-ge v10, v3, :cond_f8

    .line 373
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/exchange/provider/GalResult$GalData;

    .line 374
    .local v9, galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    const-string v15, "firstName"

    invoke-virtual {v9, v15}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .local v8, firstName:Ljava/lang/String;
    const-string v15, "lastName"

    invoke-virtual {v9, v15}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 376
    .local v12, lastName:Ljava/lang/String;
    const-string v15, "displayName"

    invoke-virtual {v9, v15}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, displayName:Ljava/lang/String;
    if-nez v5, :cond_99

    .line 379
    if-eqz v8, :cond_ed

    if-eqz v12, :cond_ed

    .line 380
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 387
    :cond_99
    :goto_99
    const-string v15, "displayName"

    invoke-virtual {v9, v15, v5}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v15, -0x1

    if-eq v6, v15, :cond_a3

    .line 390
    aput-object v5, v14, v6

    .line 392
    :cond_a3
    const/4 v15, -0x1

    if-eq v1, v15, :cond_c3

    .line 395
    if-eqz v8, :cond_f5

    if-eqz v12, :cond_f5

    .line 396
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v1

    .line 401
    :cond_c3
    :goto_c3
    const/4 v15, -0x1

    if-eq v7, v15, :cond_ce

    .line 402
    const-string v15, "emailAddress"

    invoke-virtual {v9, v15}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 404
    :cond_ce
    const/4 v15, -0x1

    if-eq v11, v15, :cond_d9

    .line 405
    add-int/lit8 v15, v10, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v11

    .line 407
    :cond_d9
    const/4 v15, -0x1

    if-eq v13, v15, :cond_e6

    .line 410
    invoke-virtual {v9}, Lcom/android/exchange/provider/GalResult$GalData;->toPackedString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v13

    .line 412
    :cond_e6
    invoke-virtual {v4, v14}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 372
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5e

    .line 381
    :cond_ed
    if-eqz v8, :cond_f1

    .line 382
    move-object v5, v8

    goto :goto_99

    .line 383
    :cond_f1
    if-eqz v12, :cond_99

    .line 384
    move-object v5, v12

    goto :goto_99

    .line 398
    :cond_f5
    aput-object v5, v14, v1

    goto :goto_c3

    .line 414
    .end local v5           #displayName:Ljava/lang/String;
    .end local v8           #firstName:Ljava/lang/String;
    .end local v9           #galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v12           #lastName:Ljava/lang/String;
    :cond_f8
    return-object v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 429
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

    .line 186
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 187
    .local v8, accountId:Ljava/lang/Long;
    if-nez v8, :cond_2f

    .line 188
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

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

    .line 191
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_2f

    .line 192
    iget-object v0, p0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->mAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_2f
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 419
    sget-object v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 420
    .local v0, match:I
    packed-switch v0, :pswitch_data_e

    .line 424
    const/4 v1, 0x0

    :goto_a
    return-object v1

    .line 422
    :pswitch_b
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_a

    .line 420
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 51
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 201
    sget-object v11, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v41

    .line 207
    .local v41, match:I
    packed-switch v41, :pswitch_data_262

    .line 339
    :goto_b
    const/4 v4, 0x0

    :cond_c
    :goto_c
    return-object v4

    .line 210
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    const-string v12, "com.android.exchange"

    invoke-virtual {v11, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v24

    .line 212
    .local v24, accounts:[Landroid/accounts/Account;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 213
    .local v4, cursor:Landroid/database/MatrixCursor;
    if-eqz v24, :cond_c

    .line 214
    move-object/from16 v25, v24

    .local v25, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v37, 0x0

    .local v37, i$:I
    :goto_2d
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_c

    aget-object v20, v25, v37

    .line 215
    .local v20, account:Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v0, v11, [Ljava/lang/Object;

    move-object/from16 v44, v0

    .line 217
    .local v44, row:[Ljava/lang/Object;
    const/16 v36, 0x0

    .local v36, i:I
    :goto_3e
    move-object/from16 v0, p2

    array-length v11, v0

    move/from16 v0, v36

    if-ge v0, v11, :cond_119

    .line 218
    aget-object v30, p2, v36

    .line 219
    .local v30, column:Ljava/lang/String;
    const-string v11, "accountName"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    .line 220
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v44, v36

    .line 217
    :cond_57
    :goto_57
    add-int/lit8 v36, v36, 0x1

    goto :goto_3e

    .line 221
    :cond_5a
    const-string v11, "accountType"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 222
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v44, v36

    goto :goto_57

    .line 223
    :cond_6b
    const-string v11, "typeResourceId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a1

    .line 224
    const/16 v27, 0x0

    .line 225
    .local v27, bundle:Landroid/os/Bundle;
    const-string v23, "com.android.exchange"

    .line 226
    .local v23, accountType:Ljava/lang/String;
    new-instance v11, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 229
    const v32, 0x7f060001

    .line 230
    .local v32, exchangeName:I
    if-eqz v27, :cond_9a

    const-string v11, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    const/4 v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_9a

    .line 233
    const/high16 v32, 0x7f06

    .line 235
    :cond_9a
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto :goto_57

    .line 236
    .end local v23           #accountType:Ljava/lang/String;
    .end local v27           #bundle:Landroid/os/Bundle;
    .end local v32           #exchangeName:I
    :cond_a1
    const-string v11, "displayName"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f3

    .line 239
    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 240
    .local v9, accountName:Ljava/lang/String;
    const/16 v11, 0x40

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 241
    .local v26, atIndex:I
    const/4 v11, -0x1

    move/from16 v0, v26

    if-eq v0, v11, :cond_eb

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, v26

    if-ge v0, v11, :cond_eb

    .line 242
    add-int/lit8 v11, v26, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v34

    .line 244
    .local v34, firstLetter:C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v26, 0x2

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_57

    .line 246
    .end local v34           #firstLetter:C
    :cond_eb
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v44, v36

    goto/16 :goto_57

    .line 248
    .end local v9           #accountName:Ljava/lang/String;
    .end local v26           #atIndex:I
    :cond_f3
    const-string v11, "exportSupport"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_106

    .line 249
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_57

    .line 250
    :cond_106
    const-string v11, "shortcutSupport"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 251
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_57

    .line 254
    .end local v30           #column:Ljava/lang/String;
    :cond_119
    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 214
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_2d

    .line 262
    .end local v4           #cursor:Landroid/database/MatrixCursor;
    .end local v20           #account:Landroid/accounts/Account;
    .end local v24           #accounts:[Landroid/accounts/Account;
    .end local v25           #arr$:[Landroid/accounts/Account;
    .end local v36           #i:I
    .end local v37           #i$:I
    .end local v38           #len$:I
    .end local v44           #row:[Ljava/lang/Object;
    :pswitch_122
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    .line 264
    .local v33, filter:Ljava/lang/String;
    if-eqz v33, :cond_12f

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_132

    .line 265
    :cond_12f
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 268
    :cond_132
    const-string v11, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 269
    .restart local v9       #accountName:Ljava/lang/String;
    if-nez v9, :cond_13f

    .line 270
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 274
    :cond_13f
    const-string v11, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 275
    .local v40, limitString:Ljava/lang/String;
    const/16 v39, 0x14

    .line 276
    .local v39, limit:I
    if-eqz v40, :cond_170

    .line 278
    :try_start_14b
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_14b .. :try_end_14e} :catch_16c

    move-result v39

    .line 282
    :goto_14f
    if-gtz v39, :cond_170

    .line 283
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Limit not valid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 279
    :catch_16c
    move-exception v31

    .line 280
    .local v31, e:Ljava/lang/NumberFormatException;
    const/16 v39, 0x0

    goto :goto_14f

    .line 287
    .end local v31           #e:Ljava/lang/NumberFormatException;
    :cond_170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 290
    .local v28, callingId:J
    :try_start_174
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_17d
    .catchall {:try_start_174 .. :try_end_17d} :catchall_1a5

    move-result-wide v21

    .line 291
    .local v21, accountId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v21, v11

    if-nez v11, :cond_18a

    .line 293
    const/4 v4, 0x0

    .line 303
    :goto_185
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_c

    .line 297
    :cond_18a
    :try_start_18a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    move-wide/from16 v0, v21

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;

    move-result-object v35

    .line 299
    .local v35, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz v35, :cond_25d

    .line 300
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;
    :try_end_1a3
    .catchall {:try_start_18a .. :try_end_1a3} :catchall_1a5

    move-result-object v4

    goto :goto_185

    .line 303
    .end local v21           #accountId:J
    .end local v35           #galResult:Lcom/android/exchange/provider/GalResult;
    :catchall_1a5
    move-exception v11

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 310
    .end local v9           #accountName:Ljava/lang/String;
    .end local v28           #callingId:J
    .end local v33           #filter:Ljava/lang/String;
    .end local v39           #limit:I
    .end local v40           #limitString:Ljava/lang/String;
    :pswitch_1aa
    const-string v11, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 311
    .restart local v9       #accountName:Ljava/lang/String;
    if-nez v9, :cond_1b7

    .line 312
    const/4 v4, 0x0

    goto/16 :goto_c

    .line 315
    :cond_1b7
    new-instance v5, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;-><init>([Ljava/lang/String;)V

    .line 316
    .local v5, galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 318
    .restart local v4       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v42

    .line 319
    .local v42, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x2

    move-object/from16 v0, v42

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 320
    .local v8, lookupKey:Ljava/lang/String;
    const/4 v11, 0x3

    move/from16 v0, v41

    if-ne v0, v11, :cond_25a

    const/4 v11, 0x3

    move-object/from16 v0, v42

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 323
    .local v6, contactId:J
    :goto_1e4
    new-instance v43, Lcom/android/emailcommon/mail/PackedString;

    move-object/from16 v0, v43

    invoke-direct {v0, v8}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 324
    .local v43, ps:Lcom/android/emailcommon/mail/PackedString;
    const-string v11, "displayName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 325
    .local v10, displayName:Ljava/lang/String;
    const-string v11, "emailAddress"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v4 .. v11}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/16 v18, 0x1

    const-string v11, "homePhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    const/16 v18, 0x3

    const-string v11, "workPhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    const/16 v18, 0x2

    const-string v11, "mobilePhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 333
    const-string v11, "firstName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v11, "lastName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v19, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 320
    .end local v6           #contactId:J
    .end local v10           #displayName:Ljava/lang/String;
    .end local v43           #ps:Lcom/android/emailcommon/mail/PackedString;
    :cond_25a
    const-wide/16 v6, 0x1

    goto :goto_1e4

    .line 303
    .end local v4           #cursor:Landroid/database/MatrixCursor;
    .end local v5           #galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    .end local v8           #lookupKey:Ljava/lang/String;
    .end local v42           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21       #accountId:J
    .restart local v28       #callingId:J
    .restart local v33       #filter:Ljava/lang/String;
    .restart local v35       #galResult:Lcom/android/exchange/provider/GalResult;
    .restart local v39       #limit:I
    .restart local v40       #limitString:Ljava/lang/String;
    :cond_25d
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_b

    .line 207
    :pswitch_data_262
    .packed-switch 0x0
        :pswitch_d
        :pswitch_122
        :pswitch_1aa
        :pswitch_1aa
        :pswitch_122
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 439
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
