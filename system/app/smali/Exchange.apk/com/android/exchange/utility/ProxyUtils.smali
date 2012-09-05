.class public Lcom/android/exchange/utility/ProxyUtils;
.super Ljava/lang/Object;
.source "ProxyUtils.java"


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static cm:Landroid/net/ConnectivityManager;

.field private static lp:Landroid/net/LinkProperties;

.field private static final where:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/android/exchange/utility/ProxyUtils;->cm:Landroid/net/ConnectivityManager;

    .line 47
    sput-object v0, Lcom/android/exchange/utility/ProxyUtils;->lp:Landroid/net/LinkProperties;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" AND current=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/ProxyUtils;->where:Ljava/lang/String;

    .line 59
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/utility/ProxyUtils;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .parameter "mContext"

    .prologue
    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, host:Ljava/lang/String;
    const/4 v1, 0x0

    .line 97
    .local v1, normalizedHost:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/exchange/utility/ProxyUtils;->getProxy(Landroid/content/Context;)Landroid/net/ProxyProperties;

    move-result-object v2

    .line 101
    .local v2, proxy:Landroid/net/ProxyProperties;
    if-eqz v2, :cond_2b

    .line 103
    invoke-virtual {v2}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_c
    if-eqz v0, :cond_31

    .line 112
    invoke-static {v0}, Lcom/android/exchange/utility/ProxyUtils;->normalizeProxy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_12
    const-string v3, "EmailProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-object v1

    .line 107
    :cond_2b
    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/android/exchange/utility/ProxyUtils;->readFromDB(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 114
    :cond_31
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public static getPort(Landroid/content/Context;)I
    .registers 6
    .parameter "mContext"

    .prologue
    .line 150
    const/4 v0, -0x1

    .line 152
    .local v0, port:I
    invoke-static {p0}, Lcom/android/exchange/utility/ProxyUtils;->getProxy(Landroid/content/Context;)Landroid/net/ProxyProperties;

    move-result-object v1

    .line 156
    .local v1, proxy:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_24

    .line 158
    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v0

    .line 168
    :goto_b
    const-string v2, "EmailProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "port = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0

    .line 162
    :cond_24
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/exchange/utility/ProxyUtils;->readFromDB(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method private static getProxy(Landroid/content/Context;)Landroid/net/ProxyProperties;
    .registers 5
    .parameter "mContext"

    .prologue
    .line 186
    const/4 v1, 0x0

    .line 188
    .local v1, proxy:Landroid/net/ProxyProperties;
    const/4 v0, 0x0

    .line 192
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    sput-object v2, Lcom/android/exchange/utility/ProxyUtils;->cm:Landroid/net/ConnectivityManager;

    .line 194
    sget-object v2, Lcom/android/exchange/utility/ProxyUtils;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    sput-object v2, Lcom/android/exchange/utility/ProxyUtils;->lp:Landroid/net/LinkProperties;

    .line 196
    sget-object v2, Lcom/android/exchange/utility/ProxyUtils;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 200
    sget-object v2, Lcom/android/exchange/utility/ProxyUtils;->lp:Landroid/net/LinkProperties;

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2d

    .line 204
    sget-object v2, Lcom/android/exchange/utility/ProxyUtils;->lp:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 210
    :cond_2d
    return-object v1
.end method

.method private static getSelectedApnKey(Landroid/content/Context;)I
    .registers 10
    .parameter "mContext"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 350
    const/4 v8, 0x0

    .line 352
    .local v8, key:Ljava/lang/String;
    const/4 v6, -0x1

    .line 356
    .local v6, apn_key:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/utility/ProxyUtils;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 360
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2b

    .line 364
    :try_start_1a
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_28

    .line 366
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_32

    move-result-object v8

    .line 374
    :cond_28
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 382
    :cond_2b
    if-eqz v8, :cond_31

    .line 384
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 388
    :cond_31
    return v6

    .line 374
    :catchall_32
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static normalizeProxy(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "proxyAddress"

    .prologue
    .line 398
    const-string v5, "\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 400
    .local v1, ipPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    .line 402
    .local v2, matched:Z
    if-nez v2, :cond_11

    .line 442
    .end local p0
    :goto_10
    return-object p0

    .line 412
    .restart local p0
    :cond_11
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    .local v4, sb:Ljava/lang/StringBuffer;
    const-string v5, "\\."

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 418
    .local v0, ipAry:[Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_1d
    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 420
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 424
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    const/4 v5, 0x2

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 428
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_53} :catch_58

    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 432
    :catch_58
    move-exception v3

    .line 436
    .local v3, nfe:Ljava/lang/NumberFormatException;
    goto :goto_10
.end method

.method private static readFromDB(Landroid/content/Context;I)Ljava/lang/String;
    .registers 15
    .parameter "mContext"
    .parameter "type"

    .prologue
    .line 226
    const/4 v9, 0x0

    .line 228
    .local v9, host:Ljava/lang/String;
    const/4 v11, -0x1

    .line 230
    .local v11, port:I
    const/4 v12, -0x1

    .line 232
    .local v12, posOfApn:I
    const/4 v10, -0x1

    .line 236
    .local v10, key:I
    const/4 v7, 0x0

    .line 242
    .local v7, cursorApn:Landroid/database/Cursor;
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    sget-object v3, Lcom/android/exchange/utility/ProxyUtils;->where:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 248
    if-eqz v7, :cond_35

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 250
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 254
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_35

    .line 256
    invoke-static {p0}, Lcom/android/exchange/utility/ProxyUtils;->getSelectedApnKey(Landroid/content/Context;)I
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_83

    move-result v10

    .line 260
    :cond_33
    if-ne v12, v10, :cond_77

    .line 280
    :cond_35
    :goto_35
    if-eqz v7, :cond_3a

    .line 282
    :goto_37
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 288
    :cond_3a
    const/4 v3, -0x1

    if-eq v12, v3, :cond_74

    .line 290
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v12

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 292
    .local v1, url:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "proxy"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "port"

    aput-object v4, v2, v3

    .line 294
    .local v2, prj:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 300
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_59
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 304
    if-eqz v6, :cond_6f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 306
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 308
    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_6e
    .catchall {:try_start_59 .. :try_end_6e} :catchall_98
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_6e} :catch_91

    move-result v11

    .line 318
    :cond_6f
    if-eqz v6, :cond_74

    .line 320
    :goto_71
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #url:Landroid/net/Uri;
    .end local v2           #prj:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_74
    if-nez p1, :cond_9f

    .line 334
    .end local v9           #host:Ljava/lang/String;
    :goto_76
    return-object v9

    .line 266
    .restart local v9       #host:Ljava/lang/String;
    :cond_77
    const/4 v3, 0x0

    :try_start_78
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 268
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_7f
    .catchall {:try_start_78 .. :try_end_7f} :catchall_8a
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7f} :catch_83

    move-result v3

    if-nez v3, :cond_33

    goto :goto_35

    .line 274
    :catch_83
    move-exception v8

    .line 276
    .local v8, e:Ljava/lang/Exception;
    :try_start_84
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_8a

    .line 280
    if-eqz v7, :cond_3a

    goto :goto_37

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_8a
    move-exception v3

    if-eqz v7, :cond_90

    .line 282
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 280
    :cond_90
    throw v3

    .line 312
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #url:Landroid/net/Uri;
    .restart local v2       #prj:[Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_91
    move-exception v8

    .line 314
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_92
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_98

    .line 318
    if-eqz v6, :cond_74

    goto :goto_71

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_98
    move-exception v3

    if-eqz v6, :cond_9e

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 318
    :cond_9e
    throw v3

    .line 334
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #url:Landroid/net/Uri;
    .end local v2           #prj:[Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_9f
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_76
.end method
