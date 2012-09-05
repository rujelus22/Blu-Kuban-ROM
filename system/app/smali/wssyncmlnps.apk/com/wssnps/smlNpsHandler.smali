.class public Lcom/wssnps/smlNpsHandler;
.super Ljava/lang/Object;
.source "smlNpsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static FLAG_ATTACHMENT:I

.field static FLAG_NOTIFICATION:I

.field static FLAG_PROTECTION:I

.field static FLAG_TEMPLATELOCK:I

.field public static ModleDefine:Lcom/wssnps/smlModelDefine;

.field public static Restore_Reset:I

.field public static SML_SYNC_DBFULL:Z

.field static _lastGetMmsData:[B

.field static _lastGetMmsId:Ljava/lang/Integer;

.field static _smsSendId:Ljava/lang/String;

.field private static _smsSendStatus:I

.field private static mMaxEmaliCount1:I

.field private static mMaxEmaliCount2:I

.field private static shutdown:Z

.field public static syncAddedSid:Ljava/lang/StringBuffer;

.field public static syncDeletedSid:Ljava/lang/StringBuffer;


# instance fields
.field public ori_luid:I

.field private socket:Ljava/net/Socket;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    sput-boolean v2, Lcom/wssnps/smlNpsHandler;->SML_SYNC_DBFULL:Z

    .line 286
    sput v2, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount1:I

    .line 287
    sput v2, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount2:I

    .line 289
    new-instance v0, Lcom/wssnps/smlModelDefine;

    invoke-direct {v0}, Lcom/wssnps/smlModelDefine;-><init>()V

    sput-object v0, Lcom/wssnps/smlNpsHandler;->ModleDefine:Lcom/wssnps/smlModelDefine;

    .line 335
    sput-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    .line 336
    sput-object v1, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    .line 338
    sput v2, Lcom/wssnps/smlNpsHandler;->Restore_Reset:I

    .line 5398
    const/4 v0, -0x1

    sput v0, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    .line 5399
    sput-object v1, Lcom/wssnps/smlNpsHandler;->_smsSendId:Ljava/lang/String;

    .line 5578
    sput-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    .line 5579
    sput-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsId:Ljava/lang/Integer;

    .line 5580
    const/16 v0, 0x8

    sput v0, Lcom/wssnps/smlNpsHandler;->FLAG_ATTACHMENT:I

    .line 5581
    const/4 v0, 0x4

    sput v0, Lcom/wssnps/smlNpsHandler;->FLAG_NOTIFICATION:I

    .line 5582
    const/4 v0, 0x2

    sput v0, Lcom/wssnps/smlNpsHandler;->FLAG_PROTECTION:I

    .line 5583
    const/4 v0, 0x1

    sput v0, Lcom/wssnps/smlNpsHandler;->FLAG_TEMPLATELOCK:I

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .registers 3
    .parameter "sock"

    .prologue
    .line 340
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    .line 341
    iput-object p1, p0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    .line 342
    return-void
.end method

.method public static SetCalendarSyncID(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 3985
    const-string v0, "calendar_sync_id"

    .line 3987
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3988
    const-string v2, "content://settings/system"

    .line 3989
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3992
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetCalendarSyncID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3994
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v3, :cond_2a

    .line 3995
    const-string v0, "-1\ncontext null\n"

    .line 4013
    :goto_29
    return-object v0

    .line 3997
    :cond_2a
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3998
    if-nez v3, :cond_35

    .line 3999
    const-string v0, "-1\nresolver null\n"

    goto :goto_29

    .line 4001
    :cond_35
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4002
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_65

    .line 4004
    const-string v5, "value"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4012
    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4013
    const-string v0, "0\n"

    goto :goto_29

    .line 4008
    :cond_65
    const-string v1, "value"

    const-string v5, "0"

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method private String12ToCommaLF(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "src"

    .prologue
    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1981
    .local v1, res:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 1983
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1984
    .local v2, v:C
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1b

    .line 1986
    const/16 v2, 0x2c

    .line 1992
    :cond_15
    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1981
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1988
    :cond_1b
    const/4 v3, 0x2

    if-ne v3, v2, :cond_15

    .line 1990
    const/16 v2, 0xa

    goto :goto_15

    .line 1994
    .end local v2           #v:C
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "src"

    .prologue
    .line 2498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2500
    .local v1, res:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_21

    .line 2502
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2503
    .local v2, v:C
    const/16 v3, 0x2c

    if-ne v3, v2, :cond_1b

    .line 2505
    const/4 v2, 0x1

    .line 2511
    :cond_15
    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2500
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2507
    :cond_1b
    const/16 v3, 0xa

    if-ne v3, v2, :cond_15

    .line 2509
    const/4 v2, 0x2

    goto :goto_15

    .line 2513
    .end local v2           #v:C
    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static synthetic access$002(I)I
    .registers 1
    .parameter "x0"

    .prologue
    .line 68
    sput p0, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    return p0
.end method


# virtual methods
.method public CreateSmsItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2001
    const-string v0, ""

    .line 2002
    const-string v1, "content://sms/"

    .line 2003
    const-string v2, ""

    .line 2004
    const/4 v0, 0x0

    .line 2006
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2007
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2008
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2009
    const/4 v1, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CreateSmsItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2017
    sparse-switch p1, :sswitch_data_114

    .line 2037
    :goto_4a
    :sswitch_4a
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    .line 2041
    :try_start_50
    new-instance v1, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {p4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_5b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_50 .. :try_end_5b} :catch_b2

    .line 2047
    :goto_5b
    const-string v2, "body"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    :cond_60
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6b

    .line 2051
    const-string v1, "read"

    invoke-virtual {v4, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    :cond_6b
    const-string v1, "address"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    const/16 v1, 0x1a7

    if-ne p1, v1, :cond_b8

    .line 2057
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_81

    .line 2058
    const-string v1, "address"

    invoke-virtual {v4, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    :cond_81
    :goto_81
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9b

    .line 2068
    invoke-static {p8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v1, v5

    .line 2069
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 2070
    const-string v2, "date"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_9b
    const-string v1, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2075
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_c4

    .line 2076
    const/4 v0, 0x0

    .line 2090
    :goto_a9
    return-object v0

    .line 2020
    :sswitch_aa
    const/4 v0, 0x2

    .line 2021
    goto :goto_4a

    .line 2023
    :sswitch_ac
    const/4 v0, 0x1

    .line 2024
    goto :goto_4a

    .line 2026
    :sswitch_ae
    const/4 v0, 0x4

    .line 2027
    goto :goto_4a

    .line 2029
    :sswitch_b0
    const/4 v0, 0x6

    .line 2030
    goto :goto_4a

    .line 2043
    :catch_b2
    move-exception v1

    .line 2045
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    goto :goto_5b

    .line 2062
    :cond_b8
    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_81

    .line 2063
    const-string v1, "address"

    invoke-virtual {v4, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81

    .line 2078
    :cond_c4
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2080
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2082
    if-eqz v0, :cond_f5

    .line 2083
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    .line 2087
    :cond_f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a9

    .line 2017
    :sswitch_data_114
    .sparse-switch
        0x1a4 -> :sswitch_aa
        0x1a7 -> :sswitch_ac
        0x1aa -> :sswitch_ae
        0x1ad -> :sswitch_b0
        0x1b0 -> :sswitch_4a
    .end sparse-switch
.end method

.method public CreateSmsItem_kor(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2116
    const-string v1, ""

    .line 2117
    const-string v4, "content://com.sec.mms.provider/message"

    .line 2118
    const-string v3, ""

    .line 2119
    const/4 v2, 0x0

    .line 2120
    const/4 v1, 0x0

    .line 2122
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateSmsItem_kor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2127
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2128
    sparse-switch p1, :sswitch_data_1b8

    .line 2172
    :goto_44
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5e

    .line 2174
    invoke-static/range {p8 .. p8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 2175
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 2176
    const-string v7, "RegTime"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2179
    :cond_5e
    const-string v6, "MainType"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2180
    const-string v6, "Status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2181
    const-string v2, "DetailType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2182
    const-string v2, "SubType"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2184
    if-eqz v1, :cond_8a

    const/16 v2, 0xa

    if-ne v1, v2, :cond_148

    .line 2186
    :cond_8a
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_136

    .line 2187
    const-string v1, "MDN1st"

    move-object/from16 v0, p6

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    :goto_97
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13f

    .line 2191
    const-string v1, "MDN2nd"

    move-object/from16 v0, p7

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    :goto_a4
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ba

    .line 2211
    :try_start_aa
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_b5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_aa .. :try_end_b5} :catch_175

    .line 2217
    :goto_b5
    const-string v2, "Title"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    :cond_ba
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2221
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 2223
    if-eqz v1, :cond_197

    .line 2225
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2226
    const-string v2, "-3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17c

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "8\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2235
    :goto_fb
    return-object v1

    .line 2131
    :sswitch_fc
    const/16 v2, 0xcb

    .line 2132
    const/4 v1, 0x1

    .line 2133
    goto/16 :goto_44

    .line 2135
    :sswitch_101
    const-string v1, "1"

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_113

    .line 2136
    const/16 v1, 0x44d

    .line 2139
    :goto_10d
    const/4 v2, 0x0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 2140
    goto/16 :goto_44

    .line 2138
    :cond_113
    const/16 v1, 0x44c

    goto :goto_10d

    .line 2142
    :sswitch_116
    const/16 v2, 0xc8

    .line 2143
    const/4 v1, 0x2

    .line 2144
    goto/16 :goto_44

    .line 2146
    :sswitch_11b
    const/16 v2, 0xcb

    .line 2147
    const/4 v1, 0x1

    .line 2148
    goto/16 :goto_44

    .line 2150
    :sswitch_120
    const-string v1, "1"

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_130

    .line 2152
    const/16 v1, 0xa

    .line 2153
    const/16 v2, 0x44d

    goto/16 :goto_44

    .line 2157
    :cond_130
    const/16 v1, 0xb

    .line 2158
    const/16 v2, 0xcb

    .line 2160
    goto/16 :goto_44

    .line 2189
    :cond_136
    const-string v1, "MDN1st"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_97

    .line 2193
    :cond_13f
    const-string v1, "MDN2nd"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 2197
    :cond_148
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_164

    .line 2198
    const-string v1, "MDN1st"

    move-object/from16 v0, p7

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    :goto_155
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_16c

    .line 2202
    const-string v1, "MDN2nd"

    move-object/from16 v0, p6

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 2200
    :cond_164
    const-string v1, "MDN1st"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_155

    .line 2204
    :cond_16c
    const-string v1, "MDN2nd"

    const-string v2, ""

    invoke-virtual {v5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a4

    .line 2213
    :catch_175
    move-exception v1

    .line 2215
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v3

    goto/16 :goto_b5

    .line 2229
    :cond_17c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_fb

    .line 2232
    :cond_197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_fb

    .line 2128
    nop

    :sswitch_data_1b8
    .sparse-switch
        0x1a4 -> :sswitch_fc
        0x1a7 -> :sswitch_101
        0x1aa -> :sswitch_116
        0x1ad -> :sswitch_11b
        0x1b0 -> :sswitch_120
    .end sparse-switch
.end method

.method public GetCalendar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3704
    .line 3705
    const/4 v0, 0x0

    .line 3707
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3709
    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetCalendar "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3711
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_27

    .line 3713
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3716
    :cond_27
    if-nez v0, :cond_50

    .line 3718
    const/4 v0, 0x2

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4f
    return-object v0

    .line 3722
    :cond_50
    invoke-static {v0, v1}, Lcom/wssnps/database/smlCalendarItem;->getCalItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v1

    .line 3724
    invoke-virtual {v1, v0}, Lcom/wssnps/database/smlCalendarItem;->toString(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    .line 3726
    if-nez v0, :cond_78

    .line 3728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    .line 3732
    :cond_78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method public GetCalendarCount()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 3612
    .line 3615
    const-string v0, ""

    .line 3617
    const-string v0, "GetCalendarCount"

    invoke-static {v10, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3619
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_fc

    .line 3621
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3624
    :goto_14
    if-nez v0, :cond_3f

    .line 3626
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v6

    .line 3671
    :goto_1d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3630
    :cond_3f
    const-string v3, "calendar_id=\"1\" AND original_sync_id is not null"

    .line 3631
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3632
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 3633
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 3637
    :cond_55
    const-string v1, "original_sync_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendar_id=\"1\" AND deleted=\"0\" AND _sync_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3641
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3642
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_ce

    .line 3644
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3646
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3647
    const-string v5, "dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3648
    const-string v5, "calendar_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3649
    const-string v5, "deleted"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar_id=\"1\" AND _id=\""

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3653
    invoke-static {v0, v4, v3}, Lcom/wssnps/database/smlCalendarItem;->updateCalendar(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 3655
    :cond_ce
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3656
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_55

    .line 3658
    :cond_d7
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3660
    const-string v3, "calendar_id=\"1\" AND contact_account_type is null AND deleted = 0"

    .line 3662
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3663
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 3664
    if-ltz v1, :cond_f6

    .line 3665
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3668
    :goto_ee
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v11, v1

    move-object v1, v0

    move v0, v11

    goto/16 :goto_1d

    .line 3667
    :cond_f6
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_ee

    :cond_fc
    move-object v0, v2

    goto/16 :goto_14
.end method

.method public GetContact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 3075
    .line 3077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3079
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetContact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3081
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_35

    .line 3083
    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3092
    :goto_34
    return-object v0

    .line 3087
    :cond_35
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3088
    invoke-static {v1, p1}, Lcom/wssnps/database/smlContactItem;->getContact(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v1

    .line 3090
    const-string v2, "0\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3092
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public GetContactsIndexArray(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 3063
    .line 3065
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_23

    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3070
    :goto_22
    return-object v0

    .line 3068
    :cond_23
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3070
    invoke-static {v0, p1}, Lcom/wssnps/database/smlContactItem;->getContactsIndexArray(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method

.method public GetContactsSize(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 3045
    .line 3049
    const/4 v0, 0x1

    const-string v1, "GetContactsSize"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3051
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_29

    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3058
    :goto_28
    return-object v0

    .line 3054
    :cond_29
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3056
    invoke-static {v0, p1}, Lcom/wssnps/database/smlContactItem;->getContactsSize(Landroid/content/ContentResolver;I)I

    move-result v0

    .line 3058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public GetGoogleSign()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3570
    .line 3575
    const/4 v0, 0x1

    const-string v1, "GetGoogleSign"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3577
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    .line 3579
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3581
    if-nez v0, :cond_43

    .line 3583
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3607
    :goto_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3602
    :cond_43
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21
.end method

.method public GetMedia(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3850
    .line 3851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3853
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMedia "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3855
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_35

    .line 3857
    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3858
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3869
    :goto_34
    return-object v0

    .line 3861
    :cond_35
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3862
    const/4 v2, -0x1

    if-eq v1, v2, :cond_42

    .line 3863
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3865
    :cond_42
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3867
    const-string v2, "0\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1, p1}, Lcom/wssnps/database/smlMediaItem;->getMedia(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3869
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method public GetMediaIndexArray(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3832
    .line 3834
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetMedia "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3836
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_3a

    .line 3837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3845
    :goto_39
    return-object v0

    .line 3839
    :cond_3a
    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3840
    const/4 v1, -0x1

    if-eq v0, v1, :cond_47

    .line 3841
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3843
    :cond_47
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3845
    invoke-static {v0, p1}, Lcom/wssnps/database/smlMediaItem;->getMediaIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public GetMediaResfresh(ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 3914
    const-string v0, "-1\n"

    .line 3919
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetMediaResfresh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3923
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_20

    .line 3924
    const-string v0, "-1\ncontext null\n"

    .line 3946
    :goto_1f
    return-object v0

    .line 3927
    :cond_20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7a

    .line 3929
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3930
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.samsung.ebook.reader"

    const-string v3, "com.samsung.elibrary.KiesReceiver"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3931
    const-string v0, "android.intent.action.EBOOK_IMPORT_NEWBOOKS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3932
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3933
    const-string v0, "</MediaItem>"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3934
    const/4 v0, 0x0

    :goto_48
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_6b

    .line 3936
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    const-string v6, "<Filename>"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    aget-object v6, v3, v0

    const-string v7, "</Filename>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3937
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3934
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 3940
    :cond_6b
    const-string v0, "filenames"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 3941
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3942
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3944
    :cond_7a
    const-string v0, "0\n0\n"

    goto :goto_1f
.end method

.method public GetMediaScaning()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3895
    const-string v0, "-1\n"

    .line 3897
    const/4 v0, 0x1

    const-string v1, "GetMediaScaning "

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3899
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 3900
    const-string v0, "-1\ncontext null\n"

    .line 3909
    :goto_e
    return-object v0

    .line 3903
    :cond_f
    sget-boolean v0, Lcom/wssnps/smlNpsReceiver;->bEbookScaning:Z

    if-eqz v0, :cond_16

    .line 3904
    const-string v0, "0\n1\n"

    goto :goto_e

    .line 3906
    :cond_16
    const-string v0, "0\n0\n"

    goto :goto_e
.end method

.method public GetPhotoData(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 3526
    .line 3533
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_a4

    .line 3535
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3538
    :goto_c
    if-nez v0, :cond_34

    .line 3540
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v0, v4

    move-object v4, v7

    .line 3565
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33
    return-object v0

    .line 3545
    :cond_34
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimetype=\"vnd.android.cursor.item/photo\"AND raw_contact_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3549
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "data15"

    aput-object v5, v2, v6

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3551
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_86

    invoke-interface {v1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_86

    .line 3554
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 3558
    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcom/wssnps/base/smlBase64;->encode([B)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 3562
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16

    .line 3561
    :cond_86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_a4
    move-object v0, v4

    goto/16 :goto_c
.end method

.method public GetResultSecurityFunction(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "cmd"
    .parameter "param"

    .prologue
    .line 1302
    const-string v0, "0"

    .line 1343
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public GetSyncID(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3775
    const-string v7, "0"

    .line 3776
    const-string v3, ""

    .line 3777
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 3778
    const-string v0, "content://settings/system"

    .line 3779
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSyncID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3784
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_2d

    .line 3785
    const-string v0, "-1\ncontext null\n"

    .line 3824
    :goto_2c
    return-object v0

    .line 3787
    :cond_2d
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3788
    if-nez v0, :cond_38

    .line 3789
    const-string v0, "-1\nresolver null\n"

    goto :goto_2c

    .line 3791
    :cond_38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v6, :cond_98

    .line 3793
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v3, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    .line 3794
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v3, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    .line 3795
    const-string v3, "contact_sync_id"

    move-object v6, v3

    .line 3802
    :goto_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 3803
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3804
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_a7

    .line 3806
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3807
    invoke-static {v6}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_92

    .line 3809
    const-string v4, "name"

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    const-string v4, "value"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3814
    :cond_92
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3815
    const-string v0, "0\n0\n"

    goto :goto_2c

    .line 3797
    :cond_98
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_d7

    .line 3799
    const-string v3, "calendar_sync_id"

    move-object v6, v3

    goto :goto_53

    .line 3819
    :cond_a7
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 3821
    const-string v0, "value"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3823
    :goto_b7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    :cond_d5
    move-object v0, v7

    goto :goto_b7

    :cond_d7
    move-object v6, v3

    goto/16 :goto_53
.end method

.method public GetTimeZone(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x1

    .line 3740
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 3741
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 3744
    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 3745
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 3747
    div-int/lit16 v3, v2, 0x3e8

    div-int/lit16 v3, v3, 0xe10

    int-to-double v3, v3

    .line 3748
    div-int/lit16 v2, v2, 0xe10

    rem-int/lit16 v2, v2, 0x3e8

    int-to-double v5, v2

    const-wide v7, 0x3f50624dd2f1a9fcL

    mul-double/2addr v5, v7

    .line 3749
    add-double v2, v3, v5

    .line 3751
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3754
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3755
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3756
    invoke-virtual {v0, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 3757
    if-ne v4, v9, :cond_82

    .line 3759
    const-string v0, "GMT"

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 3760
    invoke-virtual {v1, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 3761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3770
    :goto_81
    return-object v0

    .line 3763
    :cond_82
    if-nez v4, :cond_bc

    .line 3765
    int-to-long v7, v0

    sub-long v4, v5, v7

    .line 3766
    invoke-virtual {v1, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 3767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_81

    .line 3770
    :cond_bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_81
.end method

.method public MediaScan()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3874
    const-string v0, "-1\n"

    .line 3876
    const-string v0, "MediaScan "

    invoke-static {v2, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3878
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_f

    .line 3879
    const-string v0, "-1\ncontext null\n"

    .line 3890
    :goto_e
    return-object v0

    .line 3882
    :cond_f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.EBOOK_SCAN_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3883
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3884
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3886
    sput-boolean v2, Lcom/wssnps/smlNpsReceiver;->bEbookScaning:Z

    .line 3888
    const-string v0, "0\nok\n"

    goto :goto_e
.end method

.method public ResponseKiseStatus()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4844
    .line 4848
    const/4 v2, 0x0

    .line 4850
    const-string v3, "ResponseKiseStatus"

    invoke-static {v0, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4852
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v3, :cond_12

    .line 4854
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4857
    :cond_12
    if-nez v2, :cond_3b

    .line 4860
    const/4 v0, 0x2

    .line 4879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    return-object v0

    .line 4864
    :cond_3b
    invoke-static {}, Lcom/wssnps/smlNpsReceiver;->get_kiesStatus()I

    move-result v2

    .line 4865
    if-gez v2, :cond_42

    move v0, v1

    .line 4870
    :cond_42
    if-nez v0, :cond_62

    .line 4871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "6\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 4874
    :cond_62
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public RestoreGroup(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2965
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2967
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 2986
    :cond_39
    :goto_39
    return-object v0

    .line 2970
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2971
    if-eqz v1, :cond_39

    .line 2973
    invoke-static {p2}, Lcom/wssnps/database/smlContactItem;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v2

    .line 2974
    if-eqz v2, :cond_39

    .line 2976
    invoke-static {v1, v2, p1}, Lcom/wssnps/database/smlContactItem;->RestoreGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 2977
    if-nez v0, :cond_6c

    .line 2978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 2979
    :cond_6c
    const/16 v1, -0xa

    if-ne v0, v1, :cond_8e

    .line 2980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 2982
    :cond_8e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public SetContactsSyncID(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    .line 3953
    const-string v0, "contact_sync_id"

    .line 3954
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3955
    const-string v2, "content://settings/system"

    .line 3956
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3959
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SetContactsSyncID  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3961
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v3, :cond_2a

    .line 3962
    const-string v0, "-1\ncontext null\n"

    .line 3980
    :goto_29
    return-object v0

    .line 3964
    :cond_2a
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3965
    if-nez v3, :cond_35

    .line 3966
    const-string v0, "-1\nresolver null\n"

    goto :goto_29

    .line 3968
    :cond_35
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3969
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_65

    .line 3971
    const-string v5, "value"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3978
    :goto_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name=\""

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3979
    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3980
    const-string v0, "0\n"

    goto :goto_29

    .line 3975
    :cond_65
    const-string v1, "value"

    const-string v5, "0"

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method protected closeSession()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_12

    .line 485
    const/4 v0, 0x1

    const-string v1, "WsNpsHandler close"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 487
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    .line 489
    :cond_12
    return-void
.end method

.method public deleteCalendar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3480
    .line 3484
    const/4 v0, 0x0

    .line 3486
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCalendar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3488
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_23

    .line 3490
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3493
    :cond_23
    if-nez v0, :cond_4c

    .line 3496
    const/4 v0, 0x2

    .line 3521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    return-object v0

    .line 3501
    :cond_4c
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3503
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3505
    new-instance v2, Lcom/wssnps/database/smlCalendarItem;

    invoke-direct {v2}, Lcom/wssnps/database/smlCalendarItem;-><init>()V

    .line 3506
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wssnps/database/smlCalendarItem;->getCalItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v2

    .line 3507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "original_sync_id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Lcom/wssnps/database/smlCalendarItem;->_sync_id:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3508
    invoke-static {v0, v2}, Lcom/wssnps/database/smlCalendarItem;->deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    .line 3510
    invoke-static {v0, v1}, Lcom/wssnps/database/smlCalendarItem;->deleteCalendar(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 3512
    if-nez v0, :cond_a3

    .line 3513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 3516
    :cond_a3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method

.method public deleteContact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3266
    .line 3270
    const/4 v0, 0x0

    .line 3272
    const/4 v1, 0x1

    const-string v2, "deleteContact"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3274
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_12

    .line 3276
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3279
    :cond_12
    if-nez v0, :cond_3b

    .line 3282
    const/4 v0, 0x2

    .line 3298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    return-object v0

    .line 3286
    :cond_3b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3287
    invoke-static {v0, v1}, Lcom/wssnps/database/smlContactItem;->deleteContact(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 3289
    if-nez v0, :cond_6d

    .line 3290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 3293
    :cond_6d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method

.method public deleteContactBatch(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3232
    .line 3236
    const/4 v0, 0x0

    .line 3238
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteContactBatch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3240
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_23

    .line 3242
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3245
    :cond_23
    if-nez v0, :cond_4c

    .line 3248
    const/4 v0, 0x2

    .line 3262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    return-object v0

    .line 3252
    :cond_4c
    invoke-static {v0, p1}, Lcom/wssnps/database/smlContactItem;->deleteContactBatch(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 3253
    if-nez v0, :cond_70

    .line 3254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 3257
    :cond_70
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method

.method public deleteGroup(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3024
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3026
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 3040
    :cond_39
    :goto_39
    return-object v0

    .line 3029
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3030
    if-eqz v1, :cond_39

    .line 3032
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3033
    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->deleteGroup(Landroid/content/ContentResolver;I)Z

    move-result v1

    .line 3034
    if-nez v1, :cond_72

    .line 3035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 3037
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public deleteMemo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMemo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4707
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 4724
    :cond_39
    :goto_39
    return-object v0

    .line 4710
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4711
    if-eqz v1, :cond_39

    .line 4713
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4714
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v4, :cond_78

    .line 4715
    invoke-static {v1, v2}, Lcom/wssnps/database/smlMemoItem;->deleteSmemo(Landroid/content/ContentResolver;I)Z

    move-result v0

    .line 4718
    :goto_58
    if-nez v0, :cond_7d

    .line 4719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4717
    :cond_78
    invoke-static {v1, v2}, Lcom/wssnps/database/smlMemoItem;->deleteMemo(Landroid/content/ContentResolver;I)Z

    move-result v0

    goto :goto_58

    .line 4721
    :cond_7d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public deleteSimContact(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 4884
    .line 4886
    const-string v0, ""

    .line 4888
    sget-object v3, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v3}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v3

    if-ne p2, v3, :cond_5a

    .line 4889
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    .line 4895
    :cond_e
    :goto_e
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSimContact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4897
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v3, :cond_ae

    .line 4899
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4902
    :goto_2f
    if-nez v3, :cond_65

    .line 4905
    const-string v0, "ERROR:resolver null."

    move v6, v1

    move-object v1, v0

    move v0, v6

    .line 4948
    :goto_36
    if-eqz v1, :cond_96

    .line 4950
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4952
    :goto_59
    return-object v0

    .line 4890
    :cond_5a
    sget-object v3, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v3}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v3

    if-ne p2, v3, :cond_e

    .line 4891
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    goto :goto_e

    .line 4909
    :cond_65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4910
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 4912
    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4913
    if-lez v0, :cond_7f

    .line 4914
    const/4 v0, 0x0

    move-object v1, v2

    goto :goto_36

    .line 4918
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v6, v1

    move-object v1, v0

    move v0, v6

    goto :goto_36

    .line 4952
    :cond_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_59

    :cond_ae
    move-object v3, v2

    goto :goto_2f
.end method

.method public deleteSimSms(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2456
    .line 2458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://sms/sim/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2460
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_a1

    .line 2462
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2465
    :goto_1f
    if-nez v2, :cond_47

    .line 2468
    const-string v1, "ERROR:resolver null."

    .line 2489
    :cond_23
    :goto_23
    if-eqz v1, :cond_89

    .line 2490
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2492
    :goto_46
    return-object v0

    .line 2472
    :cond_47
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2476
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_4d
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_55

    move-result v2

    if-lez v2, :cond_23

    .line 2477
    const/4 v0, 0x0

    goto :goto_23

    .line 2481
    :catch_55
    move-exception v2

    .line 2483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2484
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteSimSms ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_23

    .line 2492
    :cond_89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_a1
    move-object v2, v1

    goto/16 :goto_1f
.end method

.method public deleteSmemo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 5938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5943
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteSmemo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5945
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 5959
    :cond_39
    :goto_39
    return-object v0

    .line 5948
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5949
    if-eqz v1, :cond_39

    .line 5951
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5952
    invoke-static {v1, v0}, Lcom/wssnps/database/smlSmemoItem;->deleteSmemo(Landroid/content/ContentResolver;I)Z

    move-result v1

    .line 5953
    if-nez v1, :cond_72

    .line 5954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 5956
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public deleteTask(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4822
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4825
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 4838
    :cond_39
    :goto_39
    return-object v0

    .line 4828
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4829
    if-eqz v1, :cond_39

    .line 4831
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4832
    invoke-static {v1, v0}, Lcom/wssnps/database/smlTaskItem;->deleteTask(Landroid/content/ContentResolver;I)Z

    move-result v1

    .line 4833
    if-nez v1, :cond_72

    .line 4834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4836
    :cond_72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getCalendarIndexArray()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3679
    const-string v1, ""

    .line 3681
    const/4 v1, 0x1

    const-string v2, "getCalendarIndexArray"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3683
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_2f

    .line 3685
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 3688
    :cond_2f
    const-string v1, "calendar_id=\"1\" AND contact_account_type is null AND deleted = 0 AND original_sync_id is null"

    .line 3691
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_36

    .line 3699
    :cond_35
    :goto_35
    return-object v0

    .line 3694
    :cond_36
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3695
    if-eqz v2, :cond_35

    .line 3697
    invoke-static {v2, v1}, Lcom/wssnps/database/smlCalendarItem;->getCalendarIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method public getGroupIndexArray(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2869
    const/4 v1, 0x1

    const-string v2, "getGroupIndexArray"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2871
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 2898
    :cond_28
    :goto_28
    return-object v0

    .line 2874
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2875
    if-eqz v1, :cond_28

    .line 2877
    const-string v0, ""

    .line 2878
    if-nez p1, :cond_3c

    .line 2880
    const-string v0, "deleted = 0 AND (account_type=\"vnd.sec.contact.phone\" OR account_type=\"com.google\" OR account_type=\"com.android.exchange\")"

    .line 2888
    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->getGroupIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 2892
    :cond_3c
    const-string v0, "account_type = \"vnd.sec.contact.phone\" AND deleted = 0"

    .line 2893
    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->getGroupIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getGroupItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2903
    .line 2904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2907
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGroupItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2909
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 2927
    :cond_39
    :goto_39
    return-object v0

    .line 2912
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2913
    if-eqz v1, :cond_39

    .line 2915
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->getGroupItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlContactItem;

    move-result-object v0

    .line 2916
    if-nez v0, :cond_72

    .line 2918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 2922
    :cond_72
    invoke-virtual {v0}, Lcom/wssnps/database/smlContactItem;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2923
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getGroupSize(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2833
    const/4 v1, 0x1

    const-string v2, "getGroupSize"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2835
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 2861
    :cond_28
    :goto_28
    return-object v0

    .line 2838
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2839
    if-eqz v1, :cond_28

    .line 2841
    const-string v0, ""

    .line 2842
    if-nez p1, :cond_59

    .line 2844
    const-string v0, "deleted = 0 AND (account_type=\"vnd.sec.contact.phone\" OR account_type=\"com.google\" OR account_type=\"com.android.exchange\")"

    .line 2852
    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->getGroupCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2859
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 2856
    :cond_59
    const-string v0, "account_type = \"vnd.sec.contact.phone\" AND deleted = 0"

    .line 2857
    invoke-static {v1, v0}, Lcom/wssnps/database/smlContactItem;->getGroupCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_3b
.end method

.method public getMemoIndexArray()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 4538
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4544
    const-string v0, "getMemoIndexArray"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4546
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_3a

    .line 4548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4549
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4568
    :goto_39
    return-object v0

    .line 4552
    :cond_3a
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4553
    if-eqz v0, :cond_98

    .line 4555
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v3

    if-ne v3, v4, :cond_93

    .line 4556
    invoke-static {v0}, Lcom/wssnps/database/smlMemoItem;->getSMemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4559
    :goto_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4563
    :goto_70
    if-ge v1, v3, :cond_98

    .line 4564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4563
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 4558
    :cond_93
    invoke-static {v0}, Lcom/wssnps/database/smlMemoItem;->getMemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_4c

    .line 4567
    :cond_98
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4568
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getMemoItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4573
    .line 4574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMemoItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4581
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 4603
    :cond_39
    :goto_39
    return-object v0

    .line 4584
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4585
    if-eqz v1, :cond_39

    .line 4587
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4588
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v2

    if-ne v2, v4, :cond_78

    .line 4589
    invoke-static {v1, v0}, Lcom/wssnps/database/smlMemoItem;->getSMemoItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlMemoItem;

    move-result-object v0

    .line 4592
    :goto_58
    if-nez v0, :cond_7d

    .line 4594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4591
    :cond_78
    invoke-static {v1, v0}, Lcom/wssnps/database/smlMemoItem;->getMemoItem(Landroid/content/ContentResolver;I)Lcom/wssnps/database/smlMemoItem;

    move-result-object v0

    goto :goto_58

    .line 4598
    :cond_7d
    invoke-virtual {v0}, Lcom/wssnps/database/smlMemoItem;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getMemoSize()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 4608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4612
    const-string v1, "getMemoSize"

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4614
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4627
    :cond_28
    :goto_28
    return-object v0

    .line 4617
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4618
    if-eqz v1, :cond_28

    .line 4620
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v2, :cond_59

    .line 4621
    invoke-static {v1}, Lcom/wssnps/database/smlMemoItem;->getSMemoSize(Landroid/content/ContentResolver;)I

    move-result v0

    .line 4624
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 4623
    :cond_59
    invoke-static {v1}, Lcom/wssnps/database/smlMemoItem;->getMemoSize(Landroid/content/ContentResolver;)I

    move-result v0

    goto :goto_3b
.end method

.method public getMmsCount(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5249
    const-string v0, "content://mms"

    .line 5251
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5253
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_24

    .line 5254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5257
    :cond_24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5259
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_2f

    .line 5260
    const-string v0, "-1\ncontext null\n"

    .line 5273
    :goto_2e
    return-object v0

    .line 5261
    :cond_2f
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5262
    if-nez v0, :cond_3a

    .line 5263
    const-string v0, "-1\nresolver null\n"

    goto :goto_2e

    :cond_3a
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 5265
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5267
    if-nez v0, :cond_46

    .line 5268
    const-string v0, "-1\nquery null\n"

    goto :goto_2e

    .line 5270
    :cond_46
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 5271
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e
.end method

.method public getMmsGetItem(Ljava/lang/String;[Ljava/lang/String;)[B
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 5534
    const-string v0, "-1\n"

    .line 5536
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5539
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5541
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_28

    .line 5542
    const-string v0, "-1\ncontext null\n"

    .line 5574
    :cond_23
    :goto_23
    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 5575
    const/4 v0, 0x0

    :goto_27
    return-object v0

    .line 5545
    :cond_28
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/wssnps/mmspdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/wssnps/mmspdu/PduPersister;

    move-result-object v2

    .line 5549
    if-nez v2, :cond_33

    .line 5550
    const-string v0, "-1\nPduPersister null\n"

    goto :goto_23

    .line 5554
    :cond_33
    :try_start_33
    invoke-virtual {v2, v1}, Lcom/wssnps/mmspdu/PduPersister;->load(Landroid/net/Uri;)Lcom/wssnps/mmspdu/GenericPdu;

    move-result-object v1

    .line 5555
    if-eqz v1, :cond_47

    .line 5557
    new-instance v2, Lcom/wssnps/mmspdu/PduComposer;

    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/wssnps/mmspdu/PduComposer;-><init>(Landroid/content/Context;Lcom/wssnps/mmspdu/GenericPdu;)V

    .line 5558
    if-eqz v2, :cond_23

    .line 5560
    invoke-virtual {v2}, Lcom/wssnps/mmspdu/PduComposer;->make()[B

    move-result-object v0

    goto :goto_27

    .line 5565
    :cond_47
    const-string v0, "-1\nERROR:pdu null\n"
    :try_end_49
    .catch Lcom/google/android/mms/MmsException; {:try_start_33 .. :try_end_49} :catch_4a

    goto :goto_23

    .line 5568
    :catch_4a
    move-exception v0

    .line 5569
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5570
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-1\nERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_23
.end method

.method public getMmsGetItemHdr(Ljava/lang/String;)Ljava/lang/String;
    .registers 34
    .parameter

    .prologue
    .line 5587
    const-string v1, "-1\n"

    .line 5588
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 5590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mms/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5593
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 5594
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 5597
    const-string v11, ""

    .line 5598
    const-string v10, ""

    .line 5599
    new-instance v19, Ljava/lang/StringBuffer;

    const-string v1, ""

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5600
    new-instance v20, Ljava/lang/StringBuffer;

    const-string v1, ""

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5601
    new-instance v21, Ljava/lang/StringBuffer;

    const-string v1, ""

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5602
    new-instance v22, Ljava/lang/StringBuffer;

    const-string v1, ""

    move-object/from16 v0, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 5603
    const-string v9, ""

    .line 5604
    const/4 v13, 0x0

    .line 5605
    const/4 v12, 0x0

    .line 5606
    const/4 v8, 0x0

    .line 5607
    const/16 v23, 0x0

    .line 5608
    const/16 v24, 0x0

    .line 5609
    const/4 v7, 0x0

    .line 5610
    const/16 v25, 0x0

    .line 5611
    const/16 v26, 0x0

    .line 5612
    const/16 v27, 0x0

    .line 5613
    const/16 v28, 0x0

    .line 5614
    sget v29, Lcom/wssnps/smlNpsHandler;->FLAG_ATTACHMENT:I

    .line 5615
    const/4 v15, 0x0

    .line 5624
    const/4 v1, 0x0

    sput-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsId:Ljava/lang/Integer;

    .line 5625
    const/4 v1, 0x0

    sput-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    .line 5627
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_8a

    .line 5628
    const-string v1, "-1\ncontext null\n"

    .line 5796
    :goto_87
    const-string v1, "-1\nERROR MMS hdr info\n"

    :goto_89
    return-object v1

    .line 5631
    :cond_8a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-static {v1}, Lcom/wssnps/mmspdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/wssnps/mmspdu/PduPersister;

    move-result-object v30

    .line 5632
    const/4 v14, 0x0

    .line 5634
    if-nez v30, :cond_96

    .line 5635
    const-string v1, "-1\nPduPersister null\n"

    goto :goto_87

    .line 5639
    :cond_96
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5640
    const/16 v16, 0x0

    .line 5642
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 5644
    :try_start_a6
    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Lcom/wssnps/mmspdu/PduPersister;->load(Landroid/net/Uri;)Lcom/wssnps/mmspdu/GenericPdu;
    :try_end_ab
    .catch Lcom/google/android/mms/MmsException; {:try_start_a6 .. :try_end_ab} :catch_ce

    move-result-object v2

    move-object v3, v2

    .line 5650
    :goto_ad
    if-eqz v3, :cond_30c

    .line 5653
    new-instance v2, Lcom/wssnps/mmspdu/PduComposer;

    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/wssnps/mmspdu/PduComposer;-><init>(Landroid/content/Context;Lcom/wssnps/mmspdu/GenericPdu;)V

    .line 5654
    if-eqz v2, :cond_c4

    .line 5656
    invoke-virtual {v2}, Lcom/wssnps/mmspdu/PduComposer;->make()[B

    move-result-object v4

    sput-object v4, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    .line 5657
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    sput-object v4, Lcom/wssnps/smlNpsHandler;->_lastGetMmsId:Ljava/lang/Integer;

    .line 5659
    :cond_c4
    invoke-virtual {v3}, Lcom/wssnps/mmspdu/GenericPdu;->getMessageType()I

    move-result v3

    move v14, v3

    .line 5661
    :goto_c9
    if-nez v2, :cond_d5

    .line 5663
    const-string v1, "-1\nERROR composer.make\n"

    goto :goto_89

    .line 5645
    :catch_ce
    move-exception v2

    .line 5646
    invoke-virtual {v2}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object/from16 v3, v16

    goto :goto_ad

    .line 5667
    :cond_d5
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_137

    .line 5670
    const-string v2, "tr_id"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5671
    const-string v2, "sub"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5672
    const-string v2, "date"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5673
    const-string v2, "read"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 5675
    const-string v2, "m_cls"

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v31

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5676
    if-nez v2, :cond_125

    .line 5677
    const-string v2, ""

    .line 5679
    :cond_125
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 5682
    const-string v7, "personal"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_250

    .line 5683
    const/4 v2, 0x1

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    .line 5696
    :cond_137
    :goto_137
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 5698
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, v18

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5700
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_186

    .line 5705
    :cond_14a
    const-string v2, "type"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 5706
    const-string v3, "address"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5707
    const/16 v4, 0x97

    if-ne v2, v4, :cond_29c

    .line 5709
    const-string v2, "insert-address-token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 5711
    const/16 v2, 0x80

    if-ne v14, v2, :cond_288

    .line 5714
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_17b

    .line 5715
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5716
    :cond_17b
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5760
    :cond_180
    :goto_180
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_14a

    .line 5762
    :cond_186
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5766
    const-string v1, "0\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5767
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5768
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5769
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5770
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5771
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5772
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5773
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5775
    sget-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    if-eqz v1, :cond_308

    .line 5777
    new-instance v1, Lcom/wssnps/mmspdu/PduParser;

    sget-object v2, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    invoke-direct {v1, v2}, Lcom/wssnps/mmspdu/PduParser;-><init>([B)V

    .line 5780
    invoke-virtual {v1}, Lcom/wssnps/mmspdu/PduParser;->getParserdHeaderSize()I

    move-result v2

    .line 5781
    sget-object v1, Lcom/wssnps/smlNpsHandler;->_lastGetMmsData:[B

    array-length v1, v1

    sub-int/2addr v1, v2

    .line 5784
    :goto_1ed
    const-string v4, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n"

    const/16 v5, 0xb

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x6

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0x9

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/16 v1, 0xa

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5788
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5791
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_89

    .line 5684
    :cond_250
    const-string v7, "advertisement"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_260

    .line 5685
    const/4 v2, 0x2

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_137

    .line 5686
    :cond_260
    const-string v7, "informational"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_270

    .line 5687
    const/4 v2, 0x3

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_137

    .line 5688
    :cond_270
    const-string v7, "auto"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_280

    .line 5689
    const/4 v2, 0x4

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_137

    .line 5691
    :cond_280
    const/4 v2, 0x0

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    move-object v11, v6

    goto/16 :goto_137

    .line 5721
    :cond_288
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_295

    .line 5722
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5723
    :cond_295
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_180

    .line 5727
    :cond_29c
    const/16 v4, 0x81

    if-ne v2, v4, :cond_2b4

    .line 5730
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2ad

    .line 5731
    const-string v2, ","

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5732
    :cond_2ad
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_180

    .line 5734
    :cond_2b4
    const/16 v4, 0x82

    if-ne v2, v4, :cond_2cc

    .line 5737
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2c5

    .line 5738
    const-string v2, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5739
    :cond_2c5
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_180

    .line 5741
    :cond_2cc
    const/16 v4, 0x89

    if-ne v2, v4, :cond_180

    .line 5743
    const-string v2, "insert-address-token"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_180

    .line 5745
    const/16 v2, 0x80

    if-eq v14, v2, :cond_2e0

    const/16 v2, 0x82

    if-ne v14, v2, :cond_2f4

    .line 5747
    :cond_2e0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_2ed

    .line 5748
    const-string v2, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5749
    :cond_2ed
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_180

    .line 5754
    :cond_2f4
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_301

    .line 5755
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5756
    :cond_301
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_180

    :cond_308
    move v1, v12

    move v2, v13

    goto/16 :goto_1ed

    :cond_30c
    move-object v2, v14

    move v14, v15

    goto/16 :goto_c9
.end method

.method public getMmsIdList(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 5278
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 5280
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5281
    const-string v0, "content://mms"

    .line 5282
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_29

    .line 5283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5286
    :cond_29
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5288
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_34

    .line 5289
    const-string v0, "-1\ncontext null\n"

    .line 5310
    :goto_33
    return-object v0

    .line 5290
    :cond_34
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5291
    if-nez v0, :cond_3f

    .line 5292
    const-string v0, "-1\nresolver null\n"

    goto :goto_33

    :cond_3f
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 5294
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5296
    if-nez v0, :cond_4b

    .line 5297
    const-string v0, "-1\nquery null\n"

    goto :goto_33

    .line 5299
    :cond_4b
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 5301
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 5304
    :cond_55
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5305
    const-string v2, "\n"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5306
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_55

    .line 5308
    :cond_6d
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33
.end method

.method public getSentMMS()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, -0x9

    .line 5503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.RequestMmsSend.MMS_SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5504
    const-string v1, "cmd"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5506
    sput v5, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    .line 5507
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5508
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5510
    const/4 v0, 0x0

    :goto_1c
    const/16 v1, 0xa

    if-ge v0, v1, :cond_28

    .line 5512
    sget v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    if-eq v1, v5, :cond_4d

    sget v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    if-eqz v1, :cond_4d

    .line 5522
    :cond_28
    sget v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    sget-object v0, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 5523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5528
    :goto_4c
    return-object v0

    .line 5515
    :cond_4d
    const-wide/16 v1, 0x1f4

    :try_start_4f
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_55

    .line 5510
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 5517
    :catch_55
    move-exception v1

    .line 5518
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_52

    .line 5525
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssnps/smlMmsStatusReceiver;->lastSendStatus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c
.end method

.method public getSentSMS()Ljava/lang/String;
    .registers 6

    .prologue
    .line 5404
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_9

    .line 5406
    sget v1, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    if-eqz v1, :cond_2e

    .line 5416
    :cond_9
    sget v0, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    sget-object v0, Lcom/wssnps/smlNpsHandler;->_smsSendId:Ljava/lang/String;

    if-eqz v0, :cond_53

    .line 5417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/wssnps/smlNpsHandler;->_smsSendId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5418
    :goto_2d
    return-object v0

    .line 5409
    :cond_2e
    const-wide/16 v1, 0x1f4

    :try_start_30
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_36

    .line 5404
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5411
    :catch_36
    move-exception v1

    .line 5412
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_33

    .line 5418
    :cond_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-1\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d
.end method

.method getSimContactCountInfo(I)Ljava/lang/String;
    .registers 16
    .parameter

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 2582
    const-string v0, ""

    .line 2597
    const/4 v0, 0x0

    .line 2599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimContactCountInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2601
    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v2}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v2

    if-ne p1, v2, :cond_34

    .line 2602
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2606
    :cond_34
    if-nez v0, :cond_39

    .line 2608
    const-string v0, "-1\nsim is absent\n"

    .line 2656
    :goto_38
    return-object v0

    .line 2611
    :cond_39
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 2612
    if-ne v0, v10, :cond_42

    .line 2614
    const-string v0, "-1\nsim is absent\n"

    goto :goto_38

    .line 2617
    :cond_42
    if-ne v0, v12, :cond_44

    .line 2624
    :cond_44
    invoke-virtual {p0, p1}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v0

    .line 2626
    if-ne v0, v11, :cond_bf

    .line 2628
    invoke-virtual {p0, v11, p1}, Lcom/wssnps/smlNpsHandler;->getSimInfo3GForSimContact(II)[I

    move-result-object v2

    .line 2629
    if-eqz v2, :cond_d0

    .line 2631
    aget v6, v2, v1

    .line 2632
    aget v3, v2, v10

    .line 2633
    aget v0, v2, v11

    .line 2634
    aget v5, v2, v13

    .line 2635
    const/4 v4, 0x4

    aget v4, v2, v4

    .line 2636
    aget v2, v2, v12

    .line 2651
    :goto_5d
    const-string v7, "0\n"

    .line 2652
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n"

    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v13

    const/4 v3, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v12

    const/4 v3, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    const/4 v2, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v9, v2

    const/16 v0, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v0

    const/16 v0, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_38

    .line 2642
    :cond_bf
    invoke-virtual {p0, p1}, Lcom/wssnps/smlNpsHandler;->getSimInfo2GForSimContact(I)[I

    move-result-object v2

    .line 2643
    if-eqz v2, :cond_d0

    .line 2645
    aget v0, v2, v1

    .line 2646
    aget v2, v2, v10

    move v3, v1

    move v4, v1

    move v5, v0

    move v6, v2

    move v0, v1

    move v2, v1

    goto :goto_5d

    :cond_d0
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    goto :goto_5d
.end method

.method getSimContactIdList(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2662
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2663
    const-string v0, ""

    .line 2665
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p1, v1, :cond_1d

    .line 2666
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    .line 2671
    :cond_12
    :goto_12
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2673
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_28

    .line 2674
    const-string v0, "-1\ncontext null\n"

    .line 2692
    :goto_1c
    return-object v0

    .line 2667
    :cond_1d
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 2668
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    goto :goto_12

    .line 2675
    :cond_28
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2676
    if-nez v0, :cond_33

    .line 2677
    const-string v0, "-1\nresolver null\n"

    goto :goto_1c

    :cond_33
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2679
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2681
    if-nez v0, :cond_3f

    .line 2682
    const-string v0, "-1\nquery null\n"

    goto :goto_1c

    .line 2684
    :cond_3f
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2685
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 2687
    :cond_49
    const-string v2, "adn_index"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2688
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_49

    .line 2691
    :cond_61
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c
.end method

.method public getSimContactInfo(I)Ljava/lang/String;
    .registers 21
    .parameter "nStorageType"

    .prologue
    .line 1467
    const-string v12, ""

    .line 1469
    .local v12, res:Ljava/lang/String;
    const/4 v11, 0x1

    .line 1470
    .local v11, nSimType:I
    const/4 v8, 0x0

    .line 1471
    .local v8, nMaxLenName:I
    const/4 v10, 0x0

    .line 1472
    .local v10, nMaxLenTel:I
    const/4 v5, 0x0

    .line 1473
    .local v5, nMaxFiledCountAnr:I
    const/4 v6, 0x0

    .line 1474
    .local v6, nMaxLenAnr:I
    const/4 v9, 0x0

    .line 1475
    .local v9, nMaxLenSne:I
    const/4 v7, 0x0

    .line 1476
    .local v7, nMaxLenEmail:I
    const/4 v2, 0x0

    .line 1479
    .local v2, bUsed:I
    const/4 v4, 0x0

    .line 1481
    .local v4, manager:Landroid/telephony/TelephonyManager;
    const/4 v14, 0x1

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getSimContactInfo "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1483
    sget-object v14, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v14}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v14

    move/from16 v0, p1

    if-ne v0, v14, :cond_3a

    .line 1484
    sget-object v14, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #manager:Landroid/telephony/TelephonyManager;
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1488
    .restart local v4       #manager:Landroid/telephony/TelephonyManager;
    :cond_3a
    if-nez v4, :cond_3f

    .line 1490
    const-string v14, "-1\nsim is absent\n"

    .line 1531
    :goto_3e
    return-object v14

    .line 1493
    :cond_3f
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    .line 1494
    .local v13, stat:I
    const/4 v14, 0x1

    if-ne v13, v14, :cond_49

    .line 1496
    const-string v14, "-1\nsim is absent\n"

    goto :goto_3e

    .line 1499
    :cond_49
    const/4 v14, 0x5

    if-ne v13, v14, :cond_cc

    .line 1500
    const/4 v2, 0x1

    .line 1506
    :goto_4d
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v11

    .line 1508
    const/4 v14, 0x2

    if-ne v11, v14, :cond_ce

    .line 1510
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v14, v1}, Lcom/wssnps/smlNpsHandler;->getSimInfo3GForSimContact(II)[I

    move-result-object v3

    .line 1511
    .local v3, getMaxLengthForSimContact:[I
    if-eqz v3, :cond_68

    .line 1513
    const/4 v14, 0x0

    aget v8, v3, v14

    .line 1514
    const/4 v14, 0x1

    aget v10, v3, v14

    .line 1515
    const/4 v14, 0x2

    aget v7, v3, v14

    .line 1526
    :cond_68
    :goto_68
    const-string v12, "0\n"

    .line 1527
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%d\n%d\n%d\n%d\n%d\n%d\n%d\n%d\n"

    const/16 v16, 0x8

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    .line 1531
    goto/16 :goto_3e

    .line 1502
    .end local v3           #getMaxLengthForSimContact:[I
    :cond_cc
    const/4 v2, 0x0

    goto :goto_4d

    .line 1520
    :cond_ce
    invoke-virtual/range {p0 .. p1}, Lcom/wssnps/smlNpsHandler;->getSimInfo2GForSimContact(I)[I

    move-result-object v3

    .line 1521
    .restart local v3       #getMaxLengthForSimContact:[I
    const/4 v14, 0x3

    aget v8, v3, v14

    .line 1522
    const/4 v14, 0x4

    aget v10, v3, v14

    goto :goto_68
.end method

.method public getSimContactItem(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .parameter "id"
    .parameter "nStorageType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2755
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/smlNpsHandler;->getStringSimContactItem(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 2756
    .local v1, val:[Ljava/lang/String;
    if-nez v1, :cond_c

    .line 2758
    const-string v2, "-1\n"

    .line 2768
    :goto_b
    return-object v2

    .line 2760
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    array-length v2, v1

    if-ge v0, v2, :cond_1f

    .line 2762
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2763
    const-string v2, ""

    aput-object v2, v1, v0

    .line 2760
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2765
    :cond_1f
    aget-object v2, v1, v6

    if-nez v2, :cond_53

    .line 2766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-direct {p0, v3}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 2768
    :cond_53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-direct {p0, v3}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v5

    invoke-direct {p0, v3}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v6

    invoke-direct {p0, v3}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b
.end method

.method public getSimEmailCount(I)I
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4957
    const/4 v6, 0x0

    .line 4960
    const-string v0, ""

    .line 4961
    const-string v3, ""

    .line 4962
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4964
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p1, v1, :cond_44

    .line 4965
    const-string v3, "account_type = \'vnd.sec.contact.sim\'AND mimetype=\"vnd.android.cursor.item/email_v2\""

    .line 4969
    :cond_16
    :goto_16
    const/4 v1, 0x1

    const-string v4, "getSimEmailCount"

    invoke-static {v1, v4}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4971
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4973
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v6

    .line 4977
    :cond_2b
    const-string v2, "data1"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4978
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 4980
    add-int/lit8 v0, v0, 0x1

    .line 4983
    :cond_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 4986
    :goto_43
    return v0

    .line 4966
    :cond_44
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p1, v1, :cond_16

    .line 4967
    const-string v3, "account_type = \'vnd.sec.contact.sim2\'AND mimetype=\"vnd.android.cursor.item/email_v2\""

    goto :goto_16

    :cond_4f
    move v0, v6

    goto :goto_43
.end method

.method public getSimInfo2GForSimContact(I)[I
    .registers 6
    .parameter "nStorageType"

    .prologue
    .line 1360
    const/4 v3, 0x5

    new-array v2, v3, [I

    .line 1362
    .local v2, recordInfo:[I
    const/4 v1, 0x0

    .line 1364
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :try_start_4
    sget-object v3, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v3}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v3

    if-ne p1, v3, :cond_1f

    .line 1365
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 1369
    :cond_16
    :goto_16
    if-eqz v1, :cond_1e

    .line 1370
    const/16 v3, 0x6f3a

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfo(I)[I

    move-result-object v2

    .line 1376
    :cond_1e
    :goto_1e
    return-object v2

    .line 1366
    :cond_1f
    sget-object v3, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v3}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v3

    if-ne p1, v3, :cond_16

    .line 1367
    const-string v3, "simphonebook2"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_30} :catch_32

    move-result-object v1

    goto :goto_16

    .line 1372
    :catch_32
    move-exception v0

    .line 1373
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public getSimInfo3GForSimContact(II)[I
    .registers 20
    .parameter "nInfoType"
    .parameter "nStorageType"

    .prologue
    .line 1382
    const/4 v15, 0x3

    new-array v2, v15, [I

    .line 1383
    .local v2, SimInfoMaxLenValue:[I
    const/4 v15, 0x6

    new-array v1, v15, [I

    .line 1385
    .local v1, SimInfoCountValue:[I
    :try_start_6
    new-instance v14, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    invoke-direct {v14}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;-><init>()V

    .line 1387
    .local v14, usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    const/4 v7, 0x0

    .line 1389
    .local v7, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    sget-object v15, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v15}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_76

    .line 1390
    const-string v15, "simphonebook"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v7

    .line 1394
    :cond_20
    :goto_20
    if-eqz v7, :cond_bc

    .line 1396
    invoke-interface {v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfo()Lcom/android/internal/telephony/UsimPhonebookCapaInfo;

    move-result-object v14

    .line 1397
    if-eqz v14, :cond_bc

    .line 1399
    const/4 v15, 0x1

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v8

    .line 1400
    .local v8, namelength:I
    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v9

    .line 1401
    .local v9, namemax:I
    const/4 v15, 0x1

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v10

    .line 1402
    .local v10, nameused:I
    const/4 v15, 0x2

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v12

    .line 1403
    .local v12, numlength:I
    const/4 v15, 0x2

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v13

    .line 1404
    .local v13, nummax:I
    const/4 v15, 0x2

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v11

    .line 1405
    .local v11, numUsed:I
    const/4 v15, 0x4

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v4

    .line 1406
    .local v4, emaillength:I
    const/4 v15, 0x4

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v5

    .line 1407
    .local v5, emailmax:I
    const/4 v15, 0x4

    const/16 v16, 0x3

    invoke-virtual/range {v14 .. v16}, Lcom/android/internal/telephony/UsimPhonebookCapaInfo;->getFieldInfo(II)I

    move-result v6

    .line 1410
    .local v6, emailused:I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_8b

    .line 1412
    const/4 v15, 0x0

    aput v8, v2, v15

    .line 1413
    const/4 v15, 0x1

    aput v12, v2, v15

    .line 1414
    const/4 v15, 0x2

    aput v4, v2, v15

    .line 1441
    .end local v2           #SimInfoMaxLenValue:[I
    .end local v4           #emaillength:I
    .end local v5           #emailmax:I
    .end local v6           #emailused:I
    .end local v7           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v8           #namelength:I
    .end local v9           #namemax:I
    .end local v10           #nameused:I
    .end local v11           #numUsed:I
    .end local v12           #numlength:I
    .end local v13           #nummax:I
    .end local v14           #usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :goto_75
    return-object v2

    .line 1391
    .restart local v2       #SimInfoMaxLenValue:[I
    .restart local v7       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v14       #usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :cond_76
    sget-object v15, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v15}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_20

    .line 1392
    const-string v15, "simphonebook2"

    invoke-static {v15}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v7

    goto :goto_20

    .line 1420
    .restart local v4       #emaillength:I
    .restart local v5       #emailmax:I
    .restart local v6       #emailused:I
    .restart local v8       #namelength:I
    .restart local v9       #namemax:I
    .restart local v10       #nameused:I
    .restart local v11       #numUsed:I
    .restart local v12       #numlength:I
    .restart local v13       #nummax:I
    :cond_8b
    const/4 v15, 0x0

    aput v10, v1, v15

    .line 1421
    const/4 v15, 0x1

    aput v11, v1, v15

    .line 1422
    const/4 v15, 0x2

    aput v6, v1, v15

    .line 1424
    const/4 v15, 0x3

    aput v9, v1, v15

    .line 1425
    const/4 v15, 0x4

    aput v13, v1, v15

    .line 1426
    const/4 v15, 0x5

    aput v5, v1, v15

    .line 1428
    sget-object v15, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v15}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_ab

    .line 1429
    sput v5, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount1:I

    :cond_a9
    :goto_a9
    move-object v2, v1

    .line 1433
    goto :goto_75

    .line 1430
    :cond_ab
    sget-object v15, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v15}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v15

    move/from16 v0, p2

    if-ne v0, v15, :cond_a9

    .line 1431
    sput v5, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount2:I
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b7} :catch_b8

    goto :goto_a9

    .line 1437
    .end local v4           #emaillength:I
    .end local v5           #emailmax:I
    .end local v6           #emailused:I
    .end local v7           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v8           #namelength:I
    .end local v9           #namemax:I
    .end local v10           #nameused:I
    .end local v11           #numUsed:I
    .end local v12           #numlength:I
    .end local v13           #nummax:I
    .end local v14           #usimPhonebookCapaInfo:Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :catch_b8
    move-exception v3

    .line 1438
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1441
    .end local v3           #e:Ljava/lang/Exception;
    :cond_bc
    const/4 v2, 0x0

    goto :goto_75
.end method

.method public getSimNetworkValue(I)I
    .registers 5
    .parameter "nStorageType"

    .prologue
    .line 1446
    const/4 v0, 0x1

    .line 1447
    .local v0, nSimType:I
    const-string v1, ""

    .line 1449
    .local v1, str:Ljava/lang/String;
    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v2}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v2

    if-ne p1, v2, :cond_1b

    .line 1450
    const-string v2, "ril.ICC_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1456
    :cond_11
    :goto_11
    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1457
    const/4 v0, 0x2

    .line 1461
    :goto_1a
    return v0

    .line 1451
    :cond_1b
    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v2}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v2

    if-ne p1, v2, :cond_11

    .line 1452
    const-string v2, "ril.ICC2_TYPE"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 1459
    :cond_2a
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public getSimSmsCount()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2376
    const-string v0, "content://sms/sim"

    .line 2377
    const-string v1, ""

    .line 2380
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2382
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 2383
    const-string v0, "-1\ncontext null\n"

    .line 2401
    :goto_f
    return-object v0

    .line 2384
    :cond_10
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2385
    if-nez v0, :cond_1b

    .line 2386
    const-string v0, "-1\nresolver null\n"

    goto :goto_f

    :cond_1b
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2388
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2391
    if-nez v0, :cond_27

    .line 2392
    const-string v0, "-1\nquery null\n"

    goto :goto_f

    .line 2394
    :cond_27
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2395
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2397
    const/16 v0, 0x1f4

    .line 2398
    const-string v2, "0\n"

    .line 2399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%d\n%d\n"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getSimSmsGetItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"

    .prologue
    .line 2438
    invoke-virtual {p0, p1}, Lcom/wssnps/smlNpsHandler;->getStringSimSmsGetItem(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2439
    .local v2, val:[Ljava/lang/String;
    if-nez v2, :cond_9

    .line 2441
    const-string v3, "-1\n"

    .line 2451
    :goto_8
    return-object v3

    .line 2443
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2444
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v3, "0\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_24

    .line 2447
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2445
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 2451
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public getSimSmsIdList()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 2406
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2407
    const-string v0, "content://sms/sim"

    .line 2409
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2411
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 2412
    const-string v0, "-1\ncontext null\n"

    .line 2433
    :goto_12
    return-object v0

    .line 2413
    :cond_13
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2414
    if-nez v0, :cond_1e

    .line 2415
    const-string v0, "-1\nresolver null\n"

    goto :goto_12

    :cond_1e
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2417
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2419
    if-nez v0, :cond_2a

    .line 2420
    const-string v0, "-1\nquery null\n"

    goto :goto_12

    .line 2422
    :cond_2a
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2423
    const-string v2, "index_on_sim"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2425
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 2427
    :cond_3a
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2429
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2432
    :cond_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public getSmemoIndexArray()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 5824
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 5827
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5830
    const/4 v2, 0x1

    const-string v3, "getSmemoIndexArray"

    invoke-static {v2, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5832
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_3a

    .line 5834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5835
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5852
    :goto_39
    return-object v0

    .line 5838
    :cond_3a
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5839
    if-eqz v2, :cond_8d

    .line 5841
    invoke-static {v2}, Lcom/wssnps/database/smlSmemoItem;->getSmemoIndexArray(Landroid/content/ContentResolver;)Ljava/util/ArrayList;

    move-result-object v2

    .line 5842
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5845
    :goto_6a
    if-ge v0, v3, :cond_8d

    .line 5846
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5845
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 5850
    :cond_8d
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5852
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getSmemoItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5859
    const-string v1, ""

    .line 5862
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSmemoItem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5864
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3c

    .line 5878
    :cond_3b
    :goto_3b
    return-object v0

    .line 5867
    :cond_3c
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5868
    if-eqz v1, :cond_3b

    .line 5870
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5871
    invoke-static {v1, v0}, Lcom/wssnps/database/smlSmemoItem;->getSmemoItem(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 5872
    if-nez v0, :cond_74

    .line 5873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 5875
    :cond_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method public getSmemoSize()Ljava/lang/String;
    .registers 4

    .prologue
    .line 5803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5807
    const/4 v1, 0x1

    const-string v2, "getSmemoSize"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5809
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 5819
    :cond_28
    :goto_28
    return-object v0

    .line 5812
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5813
    if-eqz v1, :cond_28

    .line 5815
    invoke-static {v1}, Lcom/wssnps/database/smlSmemoItem;->getSmemoSize(Landroid/content/ContentResolver;)I

    move-result v0

    .line 5816
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getSmsCount(I)Ljava/lang/String;
    .registers 15
    .parameter "nBoxID"

    .prologue
    const/4 v2, 0x0

    .line 1537
    const-string v10, ""

    .line 1538
    .local v10, result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1539
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1540
    .local v8, notsupport:Z
    sparse-switch p1, :sswitch_data_84

    .line 1570
    :goto_8
    const-string v9, "content://sms/"

    .line 1571
    .local v9, path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1572
    .local v7, cnt:I
    if-nez v8, :cond_5f

    .line 1574
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1575
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1576
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v4, :cond_42

    .line 1577
    const-string v2, "-1\ncontext null\n"

    .line 1593
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_18
    return-object v2

    .line 1543
    .end local v7           #cnt:I
    .end local v9           #path:Ljava/lang/String;
    :sswitch_19
    const/4 v8, 0x0

    .line 1544
    const-string v3, "type=\"2\""

    .line 1545
    goto :goto_8

    .line 1547
    :sswitch_1d
    const/4 v8, 0x0

    .line 1548
    const-string v3, "type=\"1\""

    .line 1549
    goto :goto_8

    .line 1551
    :sswitch_21
    const/4 v8, 0x0

    .line 1552
    const-string v3, "type=\"3\""

    .line 1553
    goto :goto_8

    .line 1555
    :sswitch_25
    const/4 v8, 0x0

    .line 1556
    const-string v3, "type=\"6\""

    .line 1557
    goto :goto_8

    .line 1559
    :sswitch_29
    const/4 v8, 0x1

    .line 1560
    goto :goto_8

    .line 1562
    :sswitch_2b
    const/4 v8, 0x0

    .line 1563
    const-string v3, ""

    .line 1564
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type = \'2\' OR type = \'1\' OR type = \'3\' OR type = \'6\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1565
    goto :goto_8

    .line 1578
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cnt:I
    .restart local v9       #path:Ljava/lang/String;
    :cond_42
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1579
    if-nez v0, :cond_4d

    .line 1580
    const-string v2, "-1\nresolver null\n"

    goto :goto_18

    :cond_4d
    move-object v4, v2

    move-object v5, v2

    .line 1582
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1584
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_58

    .line 1585
    const-string v2, "-1\nquery null\n"

    goto :goto_18

    .line 1587
    :cond_58
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1588
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1591
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5f
    const-string v10, "0\n"

    .line 1592
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 1593
    goto :goto_18

    .line 1540
    :sswitch_data_84
    .sparse-switch
        0x78 -> :sswitch_19
        0x79 -> :sswitch_1d
        0x7a -> :sswitch_21
        0x7b -> :sswitch_25
        0x7c -> :sswitch_29
        0x88 -> :sswitch_2b
    .end sparse-switch
.end method

.method public getSmsCount_kor(I)Ljava/lang/String;
    .registers 15
    .parameter "nBoxID"

    .prologue
    const/4 v2, 0x0

    .line 1598
    const-string v10, ""

    .line 1599
    .local v10, result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1600
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1601
    .local v8, notsupport:Z
    sparse-switch p1, :sswitch_data_134

    .line 1637
    :goto_8
    const-string v9, "content://com.sec.mms.provider/message"

    .line 1638
    .local v9, path:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1639
    .local v7, cnt:I
    if-nez v8, :cond_10e

    .line 1641
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1642
    .local v1, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 1643
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v4, :cond_ef

    .line 1644
    const-string v2, "-1\ncontext null\n"

    .line 1660
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_18
    return-object v2

    .line 1604
    .end local v7           #cnt:I
    .end local v9           #path:Ljava/lang/String;
    :sswitch_19
    const-string v3, "SubType=\"0\""

    .line 1605
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MainType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1606
    const/4 v8, 0x0

    .line 1607
    goto :goto_8

    .line 1609
    :sswitch_48
    const-string v3, "SubType=\"0\""

    .line 1610
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MainType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1611
    const/4 v8, 0x0

    .line 1612
    goto :goto_8

    .line 1614
    :sswitch_77
    const-string v3, "SubType=\"0\""

    .line 1615
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND MainType=\"2\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1616
    const/4 v8, 0x0

    .line 1617
    goto/16 :goto_8

    .line 1619
    :sswitch_8f
    const-string v3, "SubType=\"0\""

    .line 1620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MainType"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1621
    const/4 v8, 0x1

    .line 1622
    goto/16 :goto_8

    .line 1624
    :sswitch_bf
    const-string v3, "SubType=\"0\""

    .line 1625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND (MainType = \'10\' OR MainType = \'11\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1626
    const/4 v8, 0x0

    .line 1627
    goto/16 :goto_8

    .line 1629
    :sswitch_d7
    const-string v3, "SubType=\"0\""

    .line 1630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND MainType != 10000 AND MainType != 4 AND MainType != 3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1631
    const/4 v8, 0x0

    .line 1632
    goto/16 :goto_8

    .line 1645
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cnt:I
    .restart local v9       #path:Ljava/lang/String;
    :cond_ef
    sget-object v4, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1646
    if-nez v0, :cond_fb

    .line 1647
    const-string v2, "-1\nresolver null\n"

    goto/16 :goto_18

    :cond_fb
    move-object v4, v2

    move-object v5, v2

    .line 1649
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1651
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_107

    .line 1652
    const-string v2, "-1\nquery null\n"

    goto/16 :goto_18

    .line 1654
    :cond_107
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1655
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1658
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_10e
    const-string v10, "0\n"

    .line 1659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "%d\n"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v11

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 1660
    goto/16 :goto_18

    .line 1601
    :sswitch_data_134
    .sparse-switch
        0x78 -> :sswitch_19
        0x79 -> :sswitch_48
        0x7a -> :sswitch_77
        0x7b -> :sswitch_8f
        0x7c -> :sswitch_bf
        0x88 -> :sswitch_d7
    .end sparse-switch
.end method

.method public getSmsGetItem(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cmd"
    .parameter "id"

    .prologue
    .line 1943
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/smlNpsHandler;->getStringSmsGetItem(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1944
    .local v2, val:[Ljava/lang/String;
    if-nez v2, :cond_9

    .line 1946
    const-string v3, "-1\n"

    .line 1956
    :goto_8
    return-object v3

    .line 1948
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1949
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v3, "0\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_24

    .line 1952
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1953
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1950
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1956
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public getSmsGetItem_kor(ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "cmd"
    .parameter "id"

    .prologue
    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/wssnps/smlNpsHandler;->getStringSmsGetItem_kor(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1962
    .local v2, val:[Ljava/lang/String;
    if-nez v2, :cond_9

    .line 1964
    const-string v3, "-1\n"

    .line 1974
    :goto_8
    return-object v3

    .line 1966
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1967
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v3, "0\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    array-length v3, v2

    if-ge v0, v3, :cond_24

    .line 1970
    aget-object v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1971
    const-string v3, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1968
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1974
    :cond_24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public getSmsIdList(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1665
    const-string v0, ""

    .line 1667
    sparse-switch p1, :sswitch_data_a4

    move-object v3, v2

    .line 1689
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1691
    const-string v0, "content://sms/"

    .line 1693
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1695
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_3b

    .line 1696
    const-string v0, "-1\ncontext null\n"

    .line 1719
    :goto_18
    return-object v0

    .line 1670
    :sswitch_19
    const-string v3, "type=\"2\""

    goto :goto_7

    .line 1673
    :sswitch_1c
    const-string v3, "type=\"1\""

    goto :goto_7

    .line 1676
    :sswitch_1f
    const-string v3, "type=\"3\""

    goto :goto_7

    .line 1679
    :sswitch_22
    const-string v3, "type=\"6\""

    goto :goto_7

    .line 1682
    :sswitch_25
    const-string v0, ""

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type = \'2\' OR type = \'1\' OR type = \'3\' OR type = \'6\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 1697
    :cond_3b
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1698
    if-nez v0, :cond_46

    .line 1699
    const-string v0, "-1\nresolver null\n"

    goto :goto_18

    :cond_46
    move-object v4, v2

    move-object v5, v2

    .line 1701
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1703
    if-nez v0, :cond_51

    .line 1704
    const-string v0, "-1\nquery null\n"

    goto :goto_18

    .line 1706
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1708
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1710
    :cond_5b
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1715
    :cond_73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1717
    const-string v0, "0\n"

    .line 1718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 1667
    nop

    :sswitch_data_a4
    .sparse-switch
        0x7e -> :sswitch_19
        0x7f -> :sswitch_1c
        0x80 -> :sswitch_1f
        0x81 -> :sswitch_22
        0x89 -> :sswitch_25
    .end sparse-switch
.end method

.method public getSmsIdList_kor(I)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1725
    const-string v0, ""

    .line 1727
    packed-switch p1, :pswitch_data_16c

    :pswitch_6
    move-object v3, v2

    .line 1757
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1759
    const-string v0, "content://com.sec.mms.provider/message"

    .line 1761
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1763
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_101

    .line 1764
    const-string v0, "-1\ncontext null\n"

    .line 1786
    :goto_18
    return-object v0

    .line 1730
    :pswitch_19
    const-string v0, "SubType=\"0\""

    .line 1731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MainType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 1734
    :pswitch_47
    const-string v0, "SubType=\"0\""

    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MainType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 1738
    :pswitch_75
    const-string v0, "SubType=\"0\""

    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MainType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1742
    :pswitch_a4
    const-string v0, "SubType=\"0\""

    .line 1743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MainType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1746
    :pswitch_d3
    const-string v0, "SubType=\"0\""

    .line 1747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (MainType = \'10\' OR MainType = \'11\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1750
    :pswitch_ea
    const-string v0, "SubType=\"0\""

    .line 1751
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND MainType != 10000 AND MainType != 4 AND MainType != 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 1765
    :cond_101
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1766
    if-nez v0, :cond_10d

    .line 1767
    const-string v0, "-1\nresolver null\n"

    goto/16 :goto_18

    :cond_10d
    move-object v4, v2

    move-object v5, v2

    .line 1769
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1770
    if-nez v0, :cond_119

    .line 1771
    const-string v0, "-1\nquery null\n"

    goto/16 :goto_18

    .line 1773
    :cond_119
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1775
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 1777
    :cond_123
    const-string v2, "RootID"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    const-string v2, ","

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_123

    .line 1782
    :cond_13b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1784
    const-string v0, "0\n"

    .line 1785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 1727
    nop

    :pswitch_data_16c
    .packed-switch 0x7e
        :pswitch_19
        :pswitch_47
        :pswitch_75
        :pswitch_a4
        :pswitch_d3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_ea
    .end packed-switch
.end method

.method getStringSimContactItem(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 2698
    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/String;

    .line 2699
    const-string v0, ""

    .line 2701
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_1a

    .line 2702
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    .line 2706
    :cond_11
    :goto_11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2708
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_25

    .line 2749
    :cond_19
    :goto_19
    return-object v2

    .line 2703
    :cond_1a
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_11

    .line 2704
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    goto :goto_11

    .line 2710
    :cond_25
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2711
    if-eqz v0, :cond_19

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2714
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2716
    if-eqz v0, :cond_19

    .line 2719
    invoke-virtual {p0, p2}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v1

    .line 2721
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2723
    const-string v3, "emails"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2724
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2726
    :cond_4a
    const-string v4, "adn_index"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_89

    .line 2729
    const/4 v2, 0x0

    const-string v4, "name"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2730
    const/4 v2, 0x1

    const-string v4, "number"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2732
    if-ne v1, v7, :cond_84

    .line 2734
    const/4 v1, -0x1

    if-eq v3, v1, :cond_7f

    .line 2736
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    .line 2746
    :cond_7f
    :goto_7f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 2749
    goto :goto_19

    .line 2740
    :cond_84
    const-string v1, ""

    aput-object v1, v6, v7

    goto :goto_7f

    .line 2744
    :cond_89
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4a

    goto :goto_7f
.end method

.method public getStringSimSmsGetItem(Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 2518
    const-string v0, "content://sms/sim"

    .line 2521
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2522
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_e

    .line 2554
    :cond_d
    :goto_d
    return-object v2

    .line 2525
    :cond_e
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2526
    if-eqz v0, :cond_d

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 2529
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2530
    if-eqz v0, :cond_d

    .line 2533
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2534
    const-string v3, "index_on_sim"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2535
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 2538
    :cond_33
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v1, v4, :cond_7d

    .line 2540
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 2541
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 2542
    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 2543
    const/4 v1, 0x2

    const-string v3, "date"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2545
    aget-object v1, v2, v6

    invoke-direct {p0, v1}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    .line 2546
    aget-object v1, v2, v7

    invoke-direct {p0, v1}, Lcom/wssnps/smlNpsHandler;->StringCommaLFTo12(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 2553
    :cond_79
    :goto_79
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_d

    .line 2551
    :cond_7d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_33

    goto :goto_79
.end method

.method public getStringSmsGetItem(ILjava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1791
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://sms/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1796
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1797
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_25

    .line 1858
    :cond_24
    :goto_24
    return-object v2

    .line 1800
    :cond_25
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1801
    if-eqz v0, :cond_24

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 1804
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1805
    if-eqz v0, :cond_24

    .line 1808
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1810
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_116

    .line 1814
    :cond_44
    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v3, :cond_15d

    .line 1816
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    .line 1817
    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1818
    aget-object v1, v2, v7

    if-eqz v1, :cond_73

    .line 1819
    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1820
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v11

    .line 1823
    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1824
    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1826
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_11b

    .line 1828
    const-string v1, "1\r"

    aput-object v1, v2, v9

    .line 1829
    const-string v1, "0\r"

    aput-object v1, v2, v10

    .line 1846
    :cond_100
    :goto_100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringSmsGetItem "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1857
    :cond_116
    :goto_116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_24

    .line 1831
    :cond_11b
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_131

    .line 1833
    const-string v1, "2\r"

    aput-object v1, v2, v9

    .line 1834
    const-string v1, "0\r"

    aput-object v1, v2, v10

    goto :goto_100

    .line 1836
    :cond_131
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_147

    .line 1838
    const-string v1, "3\r"

    aput-object v1, v2, v9

    .line 1839
    const-string v1, "0\r"

    aput-object v1, v2, v10

    goto :goto_100

    .line 1841
    :cond_147
    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_100

    .line 1843
    const-string v1, "4\r"

    aput-object v1, v2, v9

    .line 1844
    const-string v1, "0\r"

    aput-object v1, v2, v10

    goto :goto_100

    .line 1855
    :cond_15d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_116
.end method

.method public getStringSmsGetItem_kor(ILjava/lang/String;)[Ljava/lang/String;
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1863
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1865
    const-string v0, ""

    .line 1866
    const-string v0, "content://com.sec.mms.provider/message"

    .line 1869
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1870
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_16

    .line 1938
    :cond_15
    :goto_15
    return-object v2

    .line 1873
    :cond_16
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1874
    if-eqz v0, :cond_15

    .line 1877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RootID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 1879
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1880
    if-eqz v0, :cond_15

    .line 1883
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_104

    .line 1886
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    .line 1887
    const-string v1, "Title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1888
    aget-object v1, v2, v7

    if-eqz v1, :cond_5a

    .line 1889
    aget-object v1, v2, v7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1890
    :cond_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 1892
    const-string v1, "Status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0x44c

    if-ne v1, v3, :cond_109

    .line 1893
    const-string v1, "0\r"

    aput-object v1, v2, v9

    .line 1899
    :goto_83
    const/4 v1, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MDN1st"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MDN2nd"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1900
    const/4 v1, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegTime"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v7, 0x3e8

    div-long/2addr v4, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 1902
    const-string v1, "MainType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_123

    .line 1904
    const-string v1, "1\r"

    aput-object v1, v2, v10

    .line 1905
    const-string v1, "0\r"

    aput-object v1, v2, v11

    .line 1928
    :cond_ee
    :goto_ee
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStringSmsGetItem_kor "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1937
    :cond_104
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_15

    .line 1894
    :cond_109
    const-string v1, "Status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0x44d

    if-ne v1, v3, :cond_11d

    .line 1895
    const-string v1, "1\r"

    aput-object v1, v2, v9

    goto/16 :goto_83

    .line 1897
    :cond_11d
    const-string v1, "0\r"

    aput-object v1, v2, v9

    goto/16 :goto_83

    .line 1907
    :cond_123
    const-string v1, "MainType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v9, :cond_138

    .line 1909
    const-string v1, "2\r"

    aput-object v1, v2, v10

    .line 1910
    const-string v1, "0\r"

    aput-object v1, v2, v11

    goto :goto_ee

    .line 1912
    :cond_138
    const-string v1, "MainType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14e

    .line 1914
    const-string v1, "3\r"

    aput-object v1, v2, v10

    .line 1915
    const-string v1, "0\r"

    aput-object v1, v2, v11

    goto :goto_ee

    .line 1917
    :cond_14e
    const-string v1, "MainType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_165

    .line 1919
    const-string v1, "10\r"

    aput-object v1, v2, v10

    .line 1920
    const-string v1, "1\r"

    aput-object v1, v2, v11

    goto :goto_ee

    .line 1922
    :cond_165
    const-string v1, "MainType"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0xb

    if-ne v1, v3, :cond_ee

    .line 1924
    const-string v1, "10\r"

    aput-object v1, v2, v10

    .line 1925
    const-string v1, "2\r"

    aput-object v1, v2, v11

    goto/16 :goto_ee
.end method

.method public getTaskIndexArray()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4744
    .line 4746
    const/4 v0, 0x1

    const-string v1, "getTaskIndexArray"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4748
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_29

    .line 4749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4752
    :goto_28
    return-object v0

    .line 4751
    :cond_29
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4752
    invoke-static {v0}, Lcom/wssnps/database/smlTaskItem;->getTaskIndexArray(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public getTaskItem(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 4757
    .line 4760
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTaskItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4762
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_3a

    .line 4763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4767
    :goto_39
    return-object v0

    .line 4765
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4766
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4767
    invoke-static {v1, v0}, Lcom/wssnps/database/smlTaskItem;->getTaskItem(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public getTaskSize()Ljava/lang/String;
    .registers 3

    .prologue
    .line 4731
    .line 4733
    const/4 v0, 0x1

    const-string v1, "getTaskSize"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4735
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_29

    .line 4736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4739
    :goto_28
    return-object v0

    .line 4738
    :cond_29
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4739
    invoke-static {v0}, Lcom/wssnps/database/smlTaskItem;->getTaskSize(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public insertCalendar(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3304
    .line 3308
    const-string v0, "-1"

    .line 3317
    const/4 v0, 0x1

    const-string v3, "insertCalendar"

    invoke-static {v0, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3320
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_ef

    .line 3322
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v0

    .line 3325
    :goto_18
    if-nez v3, :cond_40

    .line 3381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3f
    return-object v0

    .line 3332
    :cond_40
    invoke-static {p1}, Lcom/wssnps/database/smlCalendarItem;->DecodeVCal(Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v5

    .line 3333
    if-nez v5, :cond_64

    .line 3336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 3339
    :cond_64
    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    if-eqz v0, :cond_ed

    .line 3342
    iget-object v0, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ed

    iget-wide v6, v5, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    cmp-long v0, v6, v8

    if-eqz v0, :cond_ed

    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    iget-object v6, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 3345
    iget v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    iput v0, v5, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    move v0, v1

    .line 3350
    :goto_85
    invoke-static {v3, v5, v2}, Lcom/wssnps/database/smlCalendarItem;->addCalendar(Landroid/content/ContentResolver;Lcom/wssnps/database/smlCalendarItem;I)I

    move-result v3

    .line 3352
    if-eq v0, v1, :cond_a4

    .line 3354
    iget-object v0, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c5

    iget-wide v0, v5, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    cmp-long v0, v0, v8

    if-nez v0, :cond_c5

    .line 3357
    iput v3, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    .line 3358
    new-instance v0, Ljava/lang/String;

    iget-object v1, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    .line 3372
    :cond_a4
    :goto_a4
    if-nez v3, :cond_ce

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3f

    .line 3364
    :cond_c5
    iput v2, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    .line 3365
    iget v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    iput v0, v5, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    .line 3366
    iput-object v4, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    goto :goto_a4

    .line 3376
    :cond_ce
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3f

    :cond_ed
    move v0, v2

    goto :goto_85

    :cond_ef
    move-object v3, v4

    goto/16 :goto_18
.end method

.method public insertContact(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3097
    .line 3098
    const/4 v0, 0x0

    .line 3100
    const-string v1, "-1"

    .line 3103
    const/4 v1, 0x1

    const-string v2, "insertContact"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3106
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 3108
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3110
    :cond_14
    if-nez v0, :cond_3d

    .line 3113
    const/4 v0, 0x2

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    return-object v0

    .line 3117
    :cond_3d
    invoke-static {p1}, Lcom/wssnps/database/smlContactItem;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v1

    .line 3118
    if-nez v1, :cond_61

    .line 3121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 3124
    :cond_61
    invoke-static {v0, v1, v3}, Lcom/wssnps/database/smlContactItem;->addContact(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 3126
    if-nez v0, :cond_85

    .line 3127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 3128
    :cond_85
    const/16 v1, -0xa

    if-ne v0, v1, :cond_a7

    .line 3129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 3132
    :cond_a7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c
.end method

.method public insertContactBatch(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2773
    .line 2774
    const/4 v0, 0x0

    .line 2775
    const-string v1, "-1"

    .line 2777
    const-string v1, "insertContactBatch"

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2780
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 2782
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2785
    :cond_14
    if-nez v0, :cond_3d

    .line 2788
    const/4 v0, 0x2

    .line 2823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    return-object v0

    .line 2792
    :cond_3d
    invoke-static {p1}, Lcom/wssnps/database/smlContactItem;->DecodeVCardList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2793
    if-nez v1, :cond_61

    .line 2796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2799
    :cond_61
    sget-boolean v2, Lcom/wssnps/smlNpsHandler;->SML_SYNC_DBFULL:Z

    if-ne v2, v4, :cond_8a

    .line 2801
    const-string v0, "park  applyBatch DB FULL"

    invoke-static {v4, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2802
    sput-boolean v3, Lcom/wssnps/smlNpsHandler;->SML_SYNC_DBFULL:Z

    .line 2803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2806
    :cond_8a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v3, v2}, Lcom/wssnps/database/smlContactItem;->addContactBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;II)Ljava/lang/String;

    move-result-object v0

    .line 2808
    if-nez v0, :cond_b2

    .line 2809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    .line 2810
    :cond_b2
    const-string v1, "-10"

    if-ne v0, v1, :cond_d5

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c

    .line 2816
    :cond_d5
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_de

    .line 2817
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2818
    :cond_de
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3c
.end method

.method public insertGroup(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2936
    const/4 v1, 0x1

    const-string v2, "insertGroup"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2938
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 2957
    :cond_28
    :goto_28
    return-object v0

    .line 2941
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2942
    if-eqz v1, :cond_28

    .line 2944
    invoke-static {p1}, Lcom/wssnps/database/smlContactItem;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v2

    .line 2945
    if-eqz v2, :cond_28

    .line 2947
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlContactItem;->addGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 2948
    if-nez v0, :cond_5b

    .line 2949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 2950
    :cond_5b
    const/16 v1, -0xa

    if-ne v0, v1, :cond_7d

    .line 2951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 2953
    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public insertMemo(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4636
    const-string v1, "insertMemo"

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4638
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4663
    :cond_28
    :goto_28
    return-object v0

    .line 4641
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4642
    if-eqz v1, :cond_28

    .line 4645
    invoke-static {p1}, Lcom/wssnps/database/smlMemoItem;->DecodeVNote(Ljava/lang/String;)Lcom/wssnps/database/smlMemoItem;

    move-result-object v2

    .line 4646
    if-eqz v2, :cond_28

    .line 4649
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v4, :cond_61

    .line 4650
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlMemoItem;->addSMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I

    move-result v0

    .line 4654
    :goto_41
    if-nez v0, :cond_66

    .line 4655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 4652
    :cond_61
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlMemoItem;->addMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I

    move-result v0

    goto :goto_41

    .line 4658
    :cond_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public insertMms(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x1

    .line 5356
    .line 5359
    new-instance v1, Lcom/wssnps/mmspdu/PduParser;

    invoke-direct {v1, p2}, Lcom/wssnps/mmspdu/PduParser;-><init>([B)V

    .line 5361
    invoke-virtual {v1}, Lcom/wssnps/mmspdu/PduParser;->parse()Lcom/wssnps/mmspdu/GenericPdu;

    move-result-object v1

    .line 5363
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    .line 5365
    invoke-static {v2}, Lcom/wssnps/mmspdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/wssnps/mmspdu/PduPersister;

    move-result-object v2

    .line 5368
    if-eqz v1, :cond_98

    .line 5369
    :try_start_13
    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1, v3}, Lcom/wssnps/mmspdu/PduPersister;->persist(Lcom/wssnps/mmspdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 5371
    :goto_19
    if-eqz v1, :cond_5c

    .line 5374
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Lcom/google/android/mms/MmsException; {:try_start_13 .. :try_end_3e} :catch_40

    move-result-object v0

    .line 5386
    :goto_3f
    return-object v0

    .line 5377
    :catch_40
    move-exception v0

    .line 5379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5380
    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v0, v1

    .line 5384
    :cond_5c
    if-eqz v0, :cond_80

    .line 5385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 5386
    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    :cond_98
    move-object v1, v0

    goto :goto_19
.end method

.method public insertSimContact(Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x2

    .line 4991
    .line 4993
    const-string v0, ""

    .line 4995
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertSimContact "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4997
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_60

    .line 4998
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    .line 5003
    :cond_2a
    :goto_2a
    const-string v1, "-1"

    .line 5008
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_19f

    .line 5010
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v4, v1

    .line 5013
    :goto_37
    if-nez v4, :cond_6b

    .line 5015
    const/4 v0, -0x1

    .line 5016
    const-string v1, "ERROR:resolver null."

    .line 5111
    if-eqz v1, :cond_183

    .line 5113
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5115
    :goto_5f
    return-object v0

    .line 4999
    :cond_60
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_2a

    .line 5000
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    goto :goto_2a

    .line 5020
    :cond_6b
    invoke-static {p1}, Lcom/wssnps/base/smlvCard;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SmlvCard_t;

    move-result-object v5

    .line 5021
    if-nez v5, :cond_76

    .line 5024
    const-string v0, "Error insertSimContact newContactUri"

    .line 5025
    const-string v0, "-1\n"

    goto :goto_5f

    .line 5028
    :cond_76
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    .line 5029
    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 5031
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    if-eqz v1, :cond_165

    .line 5033
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_141

    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_141

    .line 5035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5052
    :cond_b5
    :goto_b5
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 5053
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5054
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 5056
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19c

    .line 5058
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-object v2, v0

    .line 5061
    :goto_d2
    invoke-virtual {p0, p2}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v0

    if-ne v0, v8, :cond_e9

    .line 5063
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e9

    .line 5065
    iget-object v0, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-object v3, v0

    .line 5070
    :cond_e9
    const-string v0, "tag"

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5072
    if-eqz v2, :cond_f7

    .line 5074
    const-string v0, "number"

    iget-object v1, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5077
    :cond_f7
    invoke-virtual {p0, p2}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v0

    if-ne v0, v8, :cond_116

    .line 5079
    if-eqz v3, :cond_116

    .line 5081
    invoke-virtual {p0, p2}, Lcom/wssnps/smlNpsHandler;->getSimEmailCount(I)I

    move-result v0

    .line 5082
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_169

    .line 5084
    sget v1, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount1:I

    if-ge v0, v1, :cond_116

    .line 5085
    const-string v0, "emails"

    iget-object v1, v3, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5095
    :cond_116
    :goto_116
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 5097
    if-eqz v0, :cond_17d

    .line 5100
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5f

    .line 5037
    :cond_141
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 5039
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    goto/16 :goto_b5

    .line 5041
    :cond_151
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v1}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 5043
    iget-object v1, v5, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    goto/16 :goto_b5

    .line 5046
    :cond_161
    const-string v1, ""

    goto/16 :goto_b5

    .line 5049
    :cond_165
    const-string v1, ""

    goto/16 :goto_b5

    .line 5087
    :cond_169
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p2, v1, :cond_116

    .line 5089
    sget v1, Lcom/wssnps/smlNpsHandler;->mMaxEmaliCount2:I

    if-ge v0, v1, :cond_116

    .line 5090
    const-string v0, "emails"

    iget-object v1, v3, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_116

    .line 5106
    :cond_17d
    const-string v0, "Error insertSimContact newContactUri"

    .line 5107
    const-string v0, "-1\n"

    goto/16 :goto_5f

    .line 5115
    :cond_183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5f

    :cond_19c
    move-object v2, v3

    goto/16 :goto_d2

    :cond_19f
    move-object v4, v3

    goto/16 :goto_37
.end method

.method public insertSmemo(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 5884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5888
    const/4 v1, 0x1

    const-string v2, "insertSmemo"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5890
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 5906
    :cond_28
    :goto_28
    return-object v0

    .line 5893
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5894
    if-eqz v1, :cond_28

    .line 5896
    if-eqz p1, :cond_28

    .line 5898
    invoke-static {v1, p1, v3}, Lcom/wssnps/database/smlSmemoItem;->addSmemo(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5899
    if-nez v0, :cond_57

    .line 5900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    .line 5902
    :cond_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public insertTask(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4772
    .line 4773
    const/4 v0, 0x1

    const-string v1, "insertTask"

    invoke-static {v0, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4775
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_29

    .line 4776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4782
    :goto_28
    return-object v0

    .line 4778
    :cond_29
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4780
    invoke-static {p1}, Lcom/wssnps/database/smlTaskItem;->DecodeVTask(Ljava/lang/String;)Lcom/wssnps/database/smlTaskItem;

    move-result-object v1

    .line 4782
    invoke-static {v0, v1, v2}, Lcom/wssnps/database/smlTaskItem;->addTask(Landroid/content/ContentResolver;Lcom/wssnps/database/smlTaskItem;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public putSmsData(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 2095
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 2099
    invoke-direct {p0, p2}, Lcom/wssnps/smlNpsHandler;->String12ToCommaLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2100
    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2102
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v1, 0x5

    aget-object v7, v0, v1

    const/4 v1, 0x6

    aget-object v8, v0, v1

    const/4 v1, 0x7

    aget-object v9, v0, v1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/wssnps/smlNpsHandler;->CreateSmsItem(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    if-nez v0, :cond_30

    .line 2106
    const-string v0, "-1\n"

    .line 2109
    :cond_30
    return-object v0
.end method

.method public putSmsData_kor(ILjava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 2240
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 2244
    invoke-direct {p0, p2}, Lcom/wssnps/smlNpsHandler;->String12ToCommaLF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2247
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v3, v0, v1

    const/4 v1, 0x2

    aget-object v4, v0, v1

    const/4 v1, 0x3

    aget-object v5, v0, v1

    const/4 v1, 0x4

    aget-object v6, v0, v1

    const/4 v1, 0x5

    aget-object v7, v0, v1

    const/4 v1, 0x6

    aget-object v8, v0, v1

    const/4 v1, 0x7

    aget-object v9, v0, v1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/wssnps/smlNpsHandler;->CreateSmsItem_kor(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2249
    if-nez v0, :cond_30

    .line 2251
    const-string v0, "-1\n"

    .line 2254
    :cond_30
    return-object v0
.end method

.method protected readByte(Ljava/io/InputStream;I)[B
    .registers 5
    .parameter "is"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    new-array v0, p2, [B

    .line 475
    .local v0, buf:[B
    const/4 v1, 0x0

    .line 476
    .local v1, readbyte:I
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 477
    if-eq v1, p2, :cond_a

    .line 478
    const/4 v0, 0x0

    .line 479
    .end local v0           #buf:[B
    :cond_a
    return-object v0
.end method

.method protected readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 6
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, readbyte:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 446
    .local v0, line:Ljava/lang/StringBuffer;
    :goto_8
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 448
    if-gtz v1, :cond_10

    .line 450
    const/4 v2, 0x0

    .line 469
    :goto_f
    return-object v2

    .line 452
    :cond_10
    if-ne v1, v3, :cond_26

    .line 454
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 456
    if-ne v1, v3, :cond_21

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    .line 462
    :cond_21
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    .line 466
    :cond_26
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8
.end method

.method public removeMms(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 5315
    .line 5317
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 5318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5320
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v2, :cond_a5

    .line 5322
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5325
    :goto_23
    if-nez v2, :cond_4b

    .line 5328
    const-string v1, "ERROR:resolver null."

    .line 5347
    :cond_27
    :goto_27
    if-eqz v1, :cond_8d

    .line 5348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5350
    :goto_4a
    return-object v0

    .line 5332
    :cond_4b
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5335
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_51
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_59

    move-result v2

    if-lez v2, :cond_27

    .line 5336
    const/4 v0, 0x0

    goto :goto_27

    .line 5339
    :catch_59
    move-exception v2

    .line 5341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5342
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_27

    .line 5350
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4a

    :cond_a5
    move-object v2, v1

    goto/16 :goto_23
.end method

.method public run()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    .line 350
    const/4 v1, 0x1

    sput-boolean v1, Lcom/wssnps/smlNpsHandler;->shutdown:Z

    .line 351
    const-string v1, "run  WsNpsHandler"

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 353
    :goto_9
    sget-boolean v1, Lcom/wssnps/smlNpsHandler;->shutdown:Z

    if-eqz v1, :cond_36

    .line 355
    iget-object v1, p0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    if-nez v1, :cond_12

    .line 368
    :goto_11
    return-void

    .line 359
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lcom/wssnps/smlNpsHandler;->work()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_9

    .line 360
    :catch_16
    move-exception v0

    .line 361
    .local v0, ioe:Ljava/io/IOException;
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException  WsNpsHandler.run:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 367
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_36
    const-string v1, "WsNpsHandler destroy."

    invoke-static {v2, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11
.end method

.method public sendMmsId(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 5484
    const-string v0, "-1\n"

    .line 5485
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5486
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 5487
    const-string v0, "-1\ncontext null\n"

    .line 5497
    :goto_c
    return-object v0

    .line 5490
    :cond_d
    const-string v0, "0\nok\n"

    .line 5491
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.RequestMmsSend.MMS_SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5492
    const-string v3, "cmd"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5493
    const-string v3, "mmsid"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5494
    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5495
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_c
.end method

.method public sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5424
    const-string v0, "SMS_SENT"

    .line 5425
    const-string v1, "SMS_DELIVERED"

    .line 5426
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    .line 5427
    sput v5, Lcom/wssnps/smlNpsHandler;->_smsSendStatus:I

    .line 5428
    sput-object p1, Lcom/wssnps/smlNpsHandler;->_smsSendId:Ljava/lang/String;

    .line 5430
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 5432
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 5435
    new-instance v3, Lcom/wssnps/smlNpsHandler$2;

    invoke-direct {v3, p0}, Lcom/wssnps/smlNpsHandler$2;-><init>(Lcom/wssnps/smlNpsHandler;)V

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5462
    new-instance v0, Lcom/wssnps/smlNpsHandler$3;

    invoke-direct {v0, p0}, Lcom/wssnps/smlNpsHandler$3;-><init>(Lcom/wssnps/smlNpsHandler;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5477
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 5478
    const/4 v2, 0x0

    move-object v1, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 5479
    const-string v0, "0\n"

    return-object v0
.end method

.method public setAddCalendarSyncCount()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4434
    const-string v1, "setAddCalendarSyncCount"

    invoke-static {v5, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4436
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4455
    :cond_28
    :goto_28
    return-object v0

    .line 4439
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4440
    if-eqz v1, :cond_28

    .line 4442
    const-string v0, "name=\"mycalendar\""

    .line 4443
    invoke-static {v1, v0}, Lcom/wssnps/database/smlCalendarItem;->getCalendarTypeId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "deleted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND contact_account_type is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4450
    invoke-static {v1, v0}, Lcom/wssnps/database/smlCalendarItem;->getCalendarCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28
.end method

.method public setAddCalendarSyncIndexArray()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dirty=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND contact_account_type is null AND original_sync_id is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4499
    const-string v2, "setAddCalendarSyncIndexArray"

    invoke-static {v3, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4501
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_8c

    .line 4509
    :cond_8b
    :goto_8b
    return-object v0

    .line 4504
    :cond_8c
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4505
    if-eqz v2, :cond_8b

    .line 4507
    invoke-static {v2, v1}, Lcom/wssnps/database/smlCalendarItem;->getCalendarIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8b
.end method

.method public setAddContactsSyncCount()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4136
    const-string v1, "vnd.sec.contact.phone"

    .line 4137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dirty=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4142
    const-string v2, "setAddContactsSyncCount"

    invoke-static {v5, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4144
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_84

    .line 4155
    :cond_83
    :goto_83
    return-object v0

    .line 4147
    :cond_84
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4148
    if-eqz v2, :cond_83

    .line 4150
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getRawContactsCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83
.end method

.method public setAddContactsSyncIndexArray()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 4282
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4284
    const-string v2, "vnd.sec.contact.phone"

    .line 4285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dirty=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4288
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4291
    const-string v3, "setAddContactsSyncIndexArray"

    invoke-static {v5, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4293
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v3, :cond_95

    .line 4295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4296
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4317
    :goto_94
    return-object v0

    .line 4299
    :cond_95
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4300
    if-eqz v3, :cond_108

    .line 4302
    invoke-static {v3, v2}, Lcom/wssnps/database/smlContactItem;->getRawContactsIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4303
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4305
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4308
    :goto_c1
    if-ge v0, v3, :cond_108

    .line 4309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4311
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_105

    .line 4312
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4308
    :cond_105
    add-int/lit8 v0, v0, 0x1

    goto :goto_c1

    .line 4316
    :cond_108
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4317
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_94
.end method

.method public setAddGroupSyncCount()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4187
    const-string v1, "vnd.sec.contact.phone"

    .line 4188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dirty=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4193
    const-string v2, "setAddGroupSyncCount"

    invoke-static {v5, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4195
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_84

    .line 4206
    :cond_83
    :goto_83
    return-object v0

    .line 4198
    :cond_84
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4199
    if-eqz v2, :cond_83

    .line 4201
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getGroupCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83
.end method

.method public setAddGroupSyncIndexArray()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4238
    const-string v1, "vnd.sec.contact.phone"

    .line 4239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dirty=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4243
    const-string v2, "setAddGroupSyncIndexArray"

    invoke-static {v5, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4245
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_84

    .line 4254
    :cond_83
    :goto_83
    return-object v0

    .line 4248
    :cond_84
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4249
    if-eqz v2, :cond_83

    .line 4251
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getGroupIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_83
.end method

.method public setCalendarInitSyncInfo()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4394
    const-string v1, "setCalendarInitSyncInfo"

    invoke-static {v5, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4396
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4423
    :cond_28
    :goto_28
    return-object v0

    .line 4399
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4400
    if-eqz v1, :cond_28

    .line 4402
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4403
    const-string v3, "dirty"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4404
    const-string v3, "calendar_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dirty=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "calendar_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND contact_account_type is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4409
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlCalendarItem;->updateCalendar(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    .line 4410
    if-eqz v2, :cond_28

    .line 4413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "calendar_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND contact_account_type is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4416
    invoke-static {v1, v2}, Lcom/wssnps/database/smlCalendarItem;->deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 4417
    if-eqz v1, :cond_28

    .line 4420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28
.end method

.method public setCalendarInvalidSyncInit()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 4361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleted=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND contact_account_type is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4368
    const-string v2, "setCalendarInvalidSyncInit"

    invoke-static {v3, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4370
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_72

    .line 4383
    :cond_71
    :goto_71
    return-object v0

    .line 4373
    :cond_72
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4374
    if-eqz v2, :cond_71

    .line 4376
    invoke-static {v2, v1}, Lcom/wssnps/database/smlCalendarItem;->deleteCalendar(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 4377
    if-eqz v1, :cond_71

    .line 4380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71
.end method

.method public setContactsInitSyncInfo()Ljava/lang/String;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 4046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4049
    const-string v2, "vnd.sec.contact.phone"

    .line 4054
    const-string v3, "setContactsInitSyncInfo"

    invoke-static {v1, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4056
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v3, :cond_2c

    .line 4129
    :cond_2b
    :goto_2b
    return-object v0

    .line 4059
    :cond_2c
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4060
    if-eqz v3, :cond_2b

    .line 4062
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4063
    const-string v5, "dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4065
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dirty=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4067
    invoke-static {v3, v4, v5}, Lcom/wssnps/database/smlContactItem;->updateGroup(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v4

    .line 4068
    if-eqz v4, :cond_2b

    .line 4071
    invoke-static {v3}, Lcom/wssnps/database/smlContactItem;->deleteLocalAccoutGroup(Landroid/content/ContentResolver;)Z

    move-result v4

    .line 4072
    if-eqz v4, :cond_2b

    .line 4075
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_126

    .line 4077
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4079
    sput-object v9, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    .line 4080
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    move v2, v1

    .line 4094
    :goto_9c
    if-eqz v2, :cond_2b

    .line 4103
    sget-object v2, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_155

    .line 4105
    sget-object v2, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4107
    sput-object v9, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    .line 4108
    const-string v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_145

    .line 4117
    :goto_b2
    if-eqz v1, :cond_2b

    .line 4126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 4086
    :cond_d3
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4087
    const-string v6, "dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4088
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4089
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id in("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "account_type"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4092
    invoke-static {v3, v5, v2}, Lcom/wssnps/database/smlContactItem;->updateRawContacts(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v2

    goto/16 :goto_9c

    .line 4099
    :cond_126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 4114
    :cond_145
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4115
    invoke-static {v3, v1}, Lcom/wssnps/database/smlContactItem;->deleteLocalAccoutRawContacts(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    goto/16 :goto_b2

    .line 4122
    :cond_155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b
.end method

.method public setContactsInvalidSyncInit()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4022
    const/4 v1, 0x1

    const-string v2, "setContactsInvalidSyncInit"

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4024
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4041
    :cond_28
    :goto_28
    return-object v0

    .line 4027
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4028
    if-eqz v1, :cond_28

    .line 4030
    invoke-static {v1}, Lcom/wssnps/database/smlContactItem;->deleteLocalAccoutGroup(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 4031
    if-eqz v2, :cond_28

    .line 4034
    invoke-static {v1}, Lcom/wssnps/database/smlContactItem;->deleteLocalAccoutRawContacts(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 4035
    if-eqz v1, :cond_28

    .line 4038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method public setDeleteCalendarSyncCount()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4466
    const-string v1, "setDeleteCalendarSyncCount"

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4468
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_29

    .line 4487
    :cond_28
    :goto_28
    return-object v0

    .line 4471
    :cond_29
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4472
    if-eqz v1, :cond_28

    .line 4474
    const-string v0, "name=\"mycalendar\""

    .line 4475
    invoke-static {v1, v0}, Lcom/wssnps/database/smlCalendarItem;->getCalendarTypeId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calendar_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "dirty"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "deleted"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND contact_account_type is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4482
    invoke-static {v1, v0}, Lcom/wssnps/database/smlCalendarItem;->getCalendarCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28
.end method

.method public setDeleteCalendarSyncIndexArray()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 4514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dirty=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "calendar_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND contact_account_type is null AND original_sync_id is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4521
    const-string v2, "setDeleteCalendarSyncIndexArray"

    invoke-static {v3, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4523
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_8c

    .line 4531
    :cond_8b
    :goto_8b
    return-object v0

    .line 4526
    :cond_8c
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4527
    if-eqz v2, :cond_8b

    .line 4529
    invoke-static {v2, v1}, Lcom/wssnps/database/smlCalendarItem;->getCalendarIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8b
.end method

.method public setDeleteContactsSyncCount()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4162
    const-string v1, "vnd.sec.contact.phone"

    .line 4163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4167
    const-string v2, "setDeleteContactsSyncCount"

    invoke-static {v4, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4169
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_64

    .line 4180
    :cond_63
    :goto_63
    return-object v0

    .line 4172
    :cond_64
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4173
    if-eqz v2, :cond_63

    .line 4175
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getRawContactsCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method

.method public setDeleteContactsSyncIndexArray()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 4323
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 4325
    const-string v2, "vnd.sec.contact.phone"

    .line 4326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleted=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4331
    const-string v3, "setDeleteContactsSyncIndexArray"

    invoke-static {v5, v3}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4333
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v3, :cond_75

    .line 4335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4336
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4356
    :goto_74
    return-object v0

    .line 4339
    :cond_75
    sget-object v3, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 4340
    if-eqz v3, :cond_e8

    .line 4342
    invoke-static {v3, v2}, Lcom/wssnps/database/smlContactItem;->getRawContactsIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4343
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4347
    :goto_a1
    if-ge v0, v3, :cond_e8

    .line 4349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4351
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_e5

    .line 4352
    sget-object v4, Lcom/wssnps/smlNpsHandler;->syncDeletedSid:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4347
    :cond_e5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 4355
    :cond_e8
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4356
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_74
.end method

.method public setDeleteGroupSyncCount()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4213
    const-string v1, "vnd.sec.contact.phone"

    .line 4214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4218
    const-string v2, "setDeleteGroupSyncCount"

    invoke-static {v4, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4220
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_64

    .line 4231
    :cond_63
    :goto_63
    return-object v0

    .line 4223
    :cond_64
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4224
    if-eqz v2, :cond_63

    .line 4226
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getGroupCount(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 4228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method

.method public setDeleteGroupSyncIndexArray()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 4259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4261
    const-string v1, "vnd.sec.contact.phone"

    .line 4262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4265
    const-string v2, "setDeleteGroupSyncIndexArray"

    invoke-static {v4, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4267
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v2, :cond_64

    .line 4276
    :cond_63
    :goto_63
    return-object v0

    .line 4270
    :cond_64
    sget-object v2, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4271
    if-eqz v2, :cond_63

    .line 4273
    invoke-static {v2, v1}, Lcom/wssnps/database/smlContactItem;->getGroupIndexArray(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_63
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 1348
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wssnps/smlNpsHandler;->shutdown:Z

    .line 1350
    return-void
.end method

.method public updateCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 3386
    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCalendar "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3402
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_14c

    .line 3404
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v0

    .line 3407
    :goto_27
    if-nez v3, :cond_4f

    .line 3475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    return-object v0

    .line 3414
    :cond_4f
    invoke-static {p2}, Lcom/wssnps/database/smlCalendarItem;->DecodeVCal(Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v5

    .line 3415
    if-nez v5, :cond_73

    .line 3418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4e

    .line 3421
    :cond_73
    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    if-eqz v0, :cond_149

    .line 3423
    iget-object v0, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_149

    iget-wide v6, v5, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    cmp-long v0, v6, v9

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    iget-object v6, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 3426
    iget v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    iput v0, v5, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    move v0, v1

    .line 3431
    :goto_94
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3432
    invoke-static {v3, v5, v6}, Lcom/wssnps/database/smlCalendarItem;->replaceCalendar(Landroid/content/ContentResolver;Lcom/wssnps/database/smlCalendarItem;I)I

    move-result v7

    .line 3434
    if-eq v0, v1, :cond_100

    .line 3436
    iget-object v0, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_121

    iget-wide v0, v5, Lcom/wssnps/database/smlCalendarItem;->exdate:J

    cmp-long v0, v0, v9

    if-nez v0, :cond_121

    .line 3439
    iput v6, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    .line 3440
    new-instance v0, Ljava/lang/String;

    iget-object v1, v5, Lcom/wssnps/database/smlCalendarItem;->uid:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    .line 3443
    new-instance v0, Lcom/wssnps/database/smlCalendarItem;

    invoke-direct {v0}, Lcom/wssnps/database/smlCalendarItem;-><init>()V

    .line 3444
    iget v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/wssnps/database/smlCalendarItem;->getCalItem(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/wssnps/database/smlCalendarItem;

    move-result-object v0

    .line 3446
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3447
    const-string v4, "deleted"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3448
    const-string v4, "original_sync_id"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3449
    const-string v4, "original_id"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original_sync_id=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/wssnps/database/smlCalendarItem;->_sync_id:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3454
    invoke-static {v3, v1, v0}, Lcom/wssnps/database/smlCalendarItem;->updateCalendar(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 3466
    :cond_100
    :goto_100
    if-nez v7, :cond_12a

    .line 3467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4e

    .line 3459
    :cond_121
    iput v2, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    .line 3460
    iget v0, p0, Lcom/wssnps/smlNpsHandler;->ori_luid:I

    iput v0, v5, Lcom/wssnps/database/smlCalendarItem;->ori_id:I

    .line 3461
    iput-object v4, p0, Lcom/wssnps/smlNpsHandler;->uid:Ljava/lang/String;

    goto :goto_100

    .line 3470
    :cond_12a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4e

    :cond_149
    move v0, v2

    goto/16 :goto_94

    :cond_14c
    move-object v3, v4

    goto/16 :goto_27
.end method

.method public updateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 3142
    .line 3147
    const/4 v0, 0x0

    .line 3149
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3152
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_23

    .line 3154
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3157
    :cond_23
    if-nez v0, :cond_4c

    .line 3160
    const/4 v0, 0x2

    .line 3182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4b
    return-object v0

    .line 3164
    :cond_4c
    invoke-static {p2}, Lcom/wssnps/database/smlContactItem;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v1

    .line 3165
    if-nez v1, :cond_70

    .line 3168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 3170
    :cond_70
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3171
    invoke-static {v0, v1, v2}, Lcom/wssnps/database/smlContactItem;->updateContact(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 3173
    if-nez v0, :cond_98

    .line 3174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b

    .line 3177
    :cond_98
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4b
.end method

.method public updateContactBatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3187
    .line 3188
    const-string v0, "-1"

    .line 3189
    const/4 v0, 0x0

    .line 3191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContactBatch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3193
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_25

    .line 3195
    sget-object v0, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3198
    :cond_25
    if-nez v0, :cond_4e

    .line 3200
    const/4 v0, 0x2

    .line 3227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4d
    return-object v0

    .line 3204
    :cond_4e
    invoke-static {p2}, Lcom/wssnps/database/smlContactItem;->DecodeVCardList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3205
    if-nez v1, :cond_72

    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 3210
    :cond_72
    invoke-static {v0, v1, p1}, Lcom/wssnps/database/smlContactItem;->updateContactBatch(Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3212
    if-nez v0, :cond_96

    .line 3213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 3214
    :cond_96
    const-string v1, "-10"

    if-ne v0, v1, :cond_b8

    .line 3216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "7\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    .line 3220
    :cond_b8
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_c1

    .line 3221
    sget-object v1, Lcom/wssnps/smlNpsHandler;->syncAddedSid:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3222
    :cond_c1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 3223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4d
.end method

.method public updateGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2995
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateGroup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 2997
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 3014
    :cond_39
    :goto_39
    return-object v0

    .line 3000
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3001
    if-eqz v1, :cond_39

    .line 3003
    invoke-static {p2}, Lcom/wssnps/database/smlContactItem;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem;

    move-result-object v2

    .line 3004
    if-eqz v2, :cond_39

    .line 3006
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/wssnps/database/smlContactItem;->updateGroup(Landroid/content/ContentResolver;Lcom/wssnps/database/smlContactItem;I)I

    move-result v0

    .line 3007
    if-nez v0, :cond_70

    .line 3008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 3010
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public updateMemo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMemo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4674
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 4695
    :cond_39
    :goto_39
    return-object v0

    .line 4677
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4678
    if-eqz v1, :cond_39

    .line 4680
    invoke-static {p2}, Lcom/wssnps/database/smlMemoItem;->DecodeVNote(Ljava/lang/String;)Lcom/wssnps/database/smlMemoItem;

    move-result-object v2

    .line 4681
    if-eqz v2, :cond_39

    .line 4683
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 4684
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getMemoType()I

    move-result v0

    if-ne v0, v5, :cond_76

    .line 4685
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlMemoItem;->replaceSMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I

    move-result v0

    .line 4688
    :goto_56
    if-nez v0, :cond_7b

    .line 4689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4687
    :cond_76
    invoke-static {v1, v2, v3}, Lcom/wssnps/database/smlMemoItem;->replaceMemo(Landroid/content/ContentResolver;Lcom/wssnps/database/smlMemoItem;I)I

    move-result v0

    goto :goto_56

    .line 4691
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public updateSimContact(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 5120
    .line 5122
    const-string v0, ""

    .line 5124
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p3, v1, :cond_5a

    .line 5125
    const-string v0, "content://com.android.contacts/raw_contacts/adn"

    .line 5134
    :cond_10
    :goto_10
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSimContact "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5136
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-eqz v1, :cond_19f

    .line 5138
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v6, v1

    .line 5141
    :goto_32
    if-nez v6, :cond_65

    .line 5144
    const-string v3, "ERROR:resolver null."

    .line 5240
    :goto_36
    if-eqz v3, :cond_17d

    .line 5241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5243
    :goto_59
    return-object v0

    .line 5126
    :cond_5a
    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v1}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v1

    if-ne p3, v1, :cond_10

    .line 5127
    const-string v0, "content://com.android.contacts/raw_contacts/adn2"

    goto :goto_10

    .line 5148
    :cond_65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 5157
    invoke-static {p2}, Lcom/wssnps/base/smlvCard;->DecodeVCard(Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SmlvCard_t;

    move-result-object v8

    .line 5158
    if-nez v8, :cond_74

    .line 5161
    const-string v0, "Error insertSimContact newContactUri"

    .line 5162
    const-string v0, "-1\n"

    goto :goto_59

    .line 5165
    :cond_74
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->FN:Ljava/lang/String;

    .line 5166
    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19c

    .line 5168
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    if-eqz v0, :cond_13f

    .line 5170
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_119

    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_119

    .line 5172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v1, v1, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 5189
    :goto_b4
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_199

    .line 5191
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->TELList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    move-object v2, v0

    .line 5194
    :goto_c5
    invoke-virtual {p0, p3}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v0

    if-ne v0, v10, :cond_196

    .line 5196
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_196

    .line 5198
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->EMAILList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;

    .line 5203
    :goto_db
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 5204
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 5209
    const-string v9, "newTag"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5211
    if-eqz v2, :cond_f1

    .line 5213
    const-string v1, "newNumber"

    iget-object v2, v2, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    :cond_f1
    invoke-virtual {p0, p3}, Lcom/wssnps/smlNpsHandler;->getSimNetworkValue(I)I

    move-result v1

    if-ne v1, v10, :cond_100

    .line 5218
    if-eqz v0, :cond_100

    .line 5219
    const-string v1, "newEmails"

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardEnumItem;->value:Ljava/lang/String;

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5222
    :cond_100
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5226
    int-to-long v0, v0

    :try_start_109
    invoke-static {v7, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v8, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_112} :catch_148

    move-result v0

    if-lez v0, :cond_144

    move v0, v4

    :goto_116
    move v5, v0

    .line 5236
    goto/16 :goto_36

    .line 5174
    :cond_119
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_129

    .line 5176
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    move-object v1, v0

    goto :goto_b4

    .line 5178
    :cond_129
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->family:Ljava/lang/String;

    invoke-static {v0}, Lcom/wssnps/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 5180
    iget-object v0, v8, Lcom/wssnps/base/smlvCard$SmlvCard_t;->N:Lcom/wssnps/base/smlvCard$SmlvCardName_t;

    iget-object v0, v0, Lcom/wssnps/base/smlvCard$SmlvCardName_t;->given:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_b4

    .line 5183
    :cond_13a
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_b4

    .line 5186
    :cond_13f
    const-string v0, ""

    move-object v1, v0

    goto/16 :goto_b4

    .line 5230
    :cond_144
    :try_start_144
    const-string v3, "ERROR:update fail"
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_146} :catch_148

    move v0, v5

    goto :goto_116

    .line 5232
    :catch_148
    move-exception v0

    .line 5234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5235
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_36

    .line 5243
    :cond_17d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_59

    :cond_196
    move-object v0, v3

    goto/16 :goto_db

    :cond_199
    move-object v2, v3

    goto/16 :goto_c5

    :cond_19c
    move-object v1, v0

    goto/16 :goto_b4

    :cond_19f
    move-object v6, v3

    goto/16 :goto_32
.end method

.method public updateSmemo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5915
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSmemo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 5917
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 5933
    :cond_39
    :goto_39
    return-object v0

    .line 5920
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5921
    if-eqz v1, :cond_39

    .line 5923
    if-eqz p2, :cond_39

    .line 5925
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, p2, v0}, Lcom/wssnps/database/smlSmemoItem;->replaceSmemo(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 5926
    if-nez v0, :cond_6c

    .line 5927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 5929
    :cond_6c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public updateTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4790
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 4794
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    if-nez v1, :cond_3a

    .line 4813
    :cond_39
    :goto_39
    return-object v0

    .line 4797
    :cond_3a
    sget-object v1, Lcom/wssnps/smlNpsService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4798
    if-eqz v1, :cond_39

    .line 4800
    invoke-static {p2}, Lcom/wssnps/database/smlTaskItem;->DecodeVTask(Ljava/lang/String;)Lcom/wssnps/database/smlTaskItem;

    move-result-object v2

    .line 4802
    if-eqz v2, :cond_39

    .line 4804
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4805
    invoke-static {v1, v2, v0}, Lcom/wssnps/database/smlTaskItem;->replaceTask(Landroid/content/ContentResolver;Lcom/wssnps/database/smlTaskItem;I)I

    move-result v1

    .line 4807
    if-nez v1, :cond_70

    .line 4808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "6\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39

    .line 4810
    :cond_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method protected work()V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 1250
    :cond_8
    :goto_8
    return-void

    .line 496
    :cond_9
    const/4 v5, 0x0

    .line 497
    .local v5, _isExit:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 498
    .local v10, is:Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    .line 499
    .local v11, os:Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 500
    .local v6, cmd:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/wssnps/smlNpsHandler;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 502
    .local v15, s:Ljava/lang/String;
    if-eqz v15, :cond_33

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_33

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v19

    if-nez v19, :cond_42

    .line 504
    :cond_33
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->closeSession()V

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->stop()V

    .line 506
    if-eqz v11, :cond_3e

    .line 507
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 508
    :cond_3e
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_8

    .line 514
    :cond_42
    const/4 v12, 0x0

    .line 515
    .local v12, out:Ljava/lang/String;
    const/4 v13, 0x0

    .line 516
    .local v13, outBuf:[B
    const/4 v8, 0x0

    .line 517
    .local v8, inBuf:[B
    if-eqz v15, :cond_d3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_d3

    .line 519
    const/4 v9, 0x0

    .line 520
    .local v9, inLen:I
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    .line 521
    .local v14, param:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v19, v0

    if-eqz v19, :cond_5f

    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v19

    if-nez v19, :cond_67

    .line 523
    :cond_5f
    const/16 v19, 0x1

    const-string v20, "cmd null"

    invoke-static/range {v19 .. v20}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_8

    .line 527
    :cond_67
    const-string v19, "BEGIN"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 529
    .local v18, vcardIndex:I
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    .line 530
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_167

    .line 532
    const/16 v19, 0x1

    const/16 v20, 0x3

    move/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    .line 533
    const/16 v19, 0x2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    .line 538
    :goto_a5
    const/4 v15, 0x0

    .line 539
    const/16 v19, 0x0

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 542
    sparse-switch v6, :sswitch_data_b54

    .line 1189
    :try_start_b5
    const-string v12, "-1\nERROR:none cmd.\n"

    .line 1190
    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "cmd not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d3} :catch_b00

    .line 1201
    .end local v9           #inLen:I
    .end local v14           #param:[Ljava/lang/String;
    .end local v18           #vcardIndex:I
    :cond_d3
    :goto_d3
    :sswitch_d3
    if-eqz v12, :cond_db

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_dd

    .line 1202
    :cond_db
    const-string v12, "-1\nERROR:arg check me.\n"

    .line 1204
    :cond_dd
    if-nez v13, :cond_b39

    .line 1206
    const/16 v19, 0x84

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    const/16 v19, 0x83

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    const/16 v19, 0x85

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    const/16 v19, 0x86

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    const/16 v19, 0x87

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    const/16 v19, 0x8a

    move/from16 v0, v19

    if-eq v6, v0, :cond_118

    .line 1208
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n.\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1210
    :cond_118
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1223
    :goto_121
    const/16 v19, 0xae

    move/from16 v0, v19

    if-ne v6, v0, :cond_151

    sget v19, Lcom/wssnps/smlNpsHandler;->Restore_Reset:I

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_151

    .line 1225
    const/16 v19, 0x1

    const-string v20, "Configuration Restore Reset"

    invoke-static/range {v19 .. v20}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1226
    const/16 v19, 0x0

    sput v19, Lcom/wssnps/smlNpsHandler;->Restore_Reset:I

    .line 1227
    new-instance v4, Lcom/wssnps/smlNpsHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/wssnps/smlNpsHandler$1;-><init>(Lcom/wssnps/smlNpsHandler;)V

    .line 1234
    .local v4, SystemReboot:Ljava/util/TimerTask;
    new-instance v17, Ljava/util/Timer;

    invoke-direct/range {v17 .. v17}, Ljava/util/Timer;-><init>()V

    .line 1235
    .local v17, timer:Ljava/util/Timer;
    const-wide/16 v19, 0x1388

    move-object/from16 v0, v17

    move-wide/from16 v1, v19

    invoke-virtual {v0, v4, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1238
    .end local v4           #SystemReboot:Ljava/util/TimerTask;
    .end local v17           #timer:Ljava/util/Timer;
    :cond_151
    if-eqz v5, :cond_8

    .line 1240
    sget-object v19, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    if-eqz v19, :cond_15c

    .line 1243
    :try_start_157
    sget-object v19, Lcom/wssnps/smlNpsService;->dsServerSocket:Ljava/net/ServerSocket;

    invoke-virtual/range {v19 .. v19}, Ljava/net/ServerSocket;->close()V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15c} :catch_b4d

    .line 1248
    :cond_15c
    :goto_15c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wssnps/smlNpsHandler;->socket:Ljava/net/Socket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/Socket;->close()V

    goto/16 :goto_8

    .line 536
    .restart local v9       #inLen:I
    .restart local v14       #param:[Ljava/lang/String;
    .restart local v18       #vcardIndex:I
    :cond_167
    const/16 v19, 0x1

    const/16 v20, 0x3

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v14, v19

    goto/16 :goto_a5

    .line 550
    :sswitch_17b
    :try_start_17b
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactInfo(I)Ljava/lang/String;

    move-result-object v12

    .line 551
    goto/16 :goto_d3

    .line 554
    :sswitch_18b
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactCountInfo(I)Ljava/lang/String;

    move-result-object v12

    .line 555
    goto/16 :goto_d3

    .line 558
    :sswitch_19b
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactIdList(I)Ljava/lang/String;

    move-result-object v12

    .line 559
    goto/16 :goto_d3

    .line 562
    :sswitch_1ab
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 563
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->getSimContactItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 567
    :sswitch_1cc
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 568
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->insertSimContact(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 572
    :sswitch_1ed
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 573
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    sget-object v21, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v21 .. v21}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/wssnps/smlNpsHandler;->updateSimContact(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 577
    :sswitch_214
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 578
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->deleteSimContact(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 582
    :sswitch_235
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactInfo(I)Ljava/lang/String;

    move-result-object v12

    .line 583
    goto/16 :goto_d3

    .line 586
    :sswitch_245
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactCountInfo(I)Ljava/lang/String;

    move-result-object v12

    .line 587
    goto/16 :goto_d3

    .line 590
    :sswitch_255
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimContactIdList(I)Ljava/lang/String;

    move-result-object v12

    .line 591
    goto/16 :goto_d3

    .line 594
    :sswitch_265
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 595
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->getSimContactItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 599
    :sswitch_286
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 600
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->insertSimContact(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 604
    :sswitch_2a7
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 605
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    sget-object v21, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v21 .. v21}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/wssnps/smlNpsHandler;->updateSimContact(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 609
    :sswitch_2ce
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 610
    const/16 v19, 0x1

    aget-object v19, v14, v19

    sget-object v20, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v20 .. v20}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->deleteSimContact(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 614
    :sswitch_2ef
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSimSmsCount()Ljava/lang/String;

    move-result-object v12

    .line 615
    goto/16 :goto_d3

    .line 623
    :sswitch_2f5
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_309

    .line 624
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/wssnps/smlNpsHandler;->getSmsCount_kor(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 626
    :cond_309
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/wssnps/smlNpsHandler;->getSmsCount(I)Ljava/lang/String;

    move-result-object v12

    .line 627
    goto/16 :goto_d3

    .line 635
    :sswitch_311
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_325

    .line 636
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/wssnps/smlNpsHandler;->getSmsIdList_kor(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 638
    :cond_325
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/wssnps/smlNpsHandler;->getSmsIdList(I)Ljava/lang/String;

    move-result-object v12

    .line 639
    goto/16 :goto_d3

    .line 647
    :sswitch_32d
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_347

    .line 648
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->getSmsGetItem_kor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 650
    :cond_347
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->getSmsGetItem(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 651
    goto/16 :goto_d3

    .line 658
    :sswitch_355
    invoke-static {}, Lcom/wssnps/smlModelDefine;->getKorMessageType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_36f

    .line 659
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->putSmsData_kor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 661
    :cond_36f
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->putSmsData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 662
    goto/16 :goto_d3

    .line 684
    :sswitch_37d
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSimSmsIdList()Ljava/lang/String;

    move-result-object v12

    .line 685
    goto/16 :goto_d3

    .line 688
    :sswitch_383
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 689
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSimSmsGetItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 693
    :sswitch_39c
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 694
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteSimSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 698
    :sswitch_3b5
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 699
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    const/16 v21, 0x3

    aget-object v21, v14, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/wssnps/smlNpsHandler;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 703
    :sswitch_3da
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSentSMS()Ljava/lang/String;

    move-result-object v12

    .line 704
    goto/16 :goto_d3

    .line 707
    :sswitch_3e0
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 708
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getMmsCount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 712
    :sswitch_3f9
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 713
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getMmsIdList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 718
    :sswitch_412
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 719
    .local v16, saTmp:[Ljava/lang/String;
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->getMmsGetItem(Ljava/lang/String;[Ljava/lang/String;)[B

    move-result-object v13

    .line 720
    if-nez v13, :cond_449

    .line 721
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-1\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 723
    :cond_449
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v13

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 728
    .end local v16           #saTmp:[Ljava/lang/String;
    :sswitch_465
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getMmsGetItemHdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 729
    goto/16 :goto_d3

    .line 733
    :sswitch_473
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 735
    const/16 v19, 0x2

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 736
    if-lez v9, :cond_4a6

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Lcom/wssnps/smlNpsHandler;->readByte(Ljava/io/InputStream;I)[B

    move-result-object v8

    .line 739
    if-nez v8, :cond_498

    .line 740
    const-string v12, "-1\nERROR:read bytes.\n"

    goto/16 :goto_d3

    .line 742
    :cond_498
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/wssnps/smlNpsHandler;->insertMms(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 747
    :cond_4a6
    const-string v12, "-1\nERROR:length\n"

    goto/16 :goto_d3

    .line 754
    :sswitch_4aa
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 755
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->removeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 759
    :sswitch_4c3
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 760
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->sendMmsId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 764
    :sswitch_4dc
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSentMMS()Ljava/lang/String;

    move-result-object v12

    .line 765
    goto/16 :goto_d3

    .line 768
    :sswitch_4e2
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 769
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getGroupSize(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 773
    :sswitch_4f9
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getGroupIndexArray(I)Ljava/lang/String;

    move-result-object v12

    .line 774
    goto/16 :goto_d3

    .line 777
    :sswitch_505
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 778
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getGroupItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 779
    goto/16 :goto_d3

    .line 782
    :sswitch_518
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 783
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getGroupSize(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 787
    :sswitch_52f
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getGroupIndexArray(I)Ljava/lang/String;

    move-result-object v12

    .line 788
    goto/16 :goto_d3

    .line 791
    :sswitch_53b
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 792
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 793
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 797
    :sswitch_559
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 798
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 799
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 803
    :sswitch_57d
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 804
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 805
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteGroup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 809
    :sswitch_59b
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 810
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_PHONE:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsSize(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 814
    :sswitch_5b6
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 815
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_PHONE:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsIndexArray(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 819
    :sswitch_5d1
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 820
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsSize(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 824
    :sswitch_5ec
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 825
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsIndexArray(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 831
    :sswitch_607
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 832
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 833
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 837
    :sswitch_625
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 838
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsIndexArray(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 842
    :sswitch_640
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 843
    sget-object v19, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual/range {v19 .. v19}, Lcom/wssnps/database/smlContactItem$StorageType;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetContactsIndexArray(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 847
    :sswitch_65b
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 848
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 849
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 853
    :sswitch_679
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 854
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 855
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateContact(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 859
    :sswitch_69d
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 860
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 861
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 865
    :sswitch_6bb
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 866
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 867
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->insertContactBatch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 871
    :sswitch_6dd
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 872
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 873
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateContactBatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 877
    :sswitch_701
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 878
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 879
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteContactBatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 883
    :sswitch_71f
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 884
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertCalendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 888
    :sswitch_738
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 889
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateCalendar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 893
    :sswitch_757
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 894
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteCalendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 898
    :sswitch_770
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->ResponseKiseStatus()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 903
    :sswitch_781
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getMemoIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 904
    goto/16 :goto_d3

    .line 907
    :sswitch_787
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getMemoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 908
    goto/16 :goto_d3

    .line 911
    :sswitch_795
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getMemoSize()Ljava/lang/String;

    move-result-object v12

    .line 912
    goto/16 :goto_d3

    .line 915
    :sswitch_79b
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 916
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertMemo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 920
    :sswitch_7b4
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 921
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateMemo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 925
    :sswitch_7d3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "0\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->GetResultSecurityFunction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 927
    goto/16 :goto_d3

    .line 929
    :sswitch_7f2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "0\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->GetResultSecurityFunction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 931
    goto/16 :goto_d3

    .line 933
    :sswitch_813
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "0\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->GetResultSecurityFunction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 935
    goto/16 :goto_d3

    .line 937
    :sswitch_832
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "0\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/wssnps/smlNpsHandler;->GetResultSecurityFunction(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 939
    goto/16 :goto_d3

    .line 942
    :sswitch_853
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 943
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteMemo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 947
    :sswitch_86c
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 948
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetPhotoData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 952
    :sswitch_885
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getTaskSize()Ljava/lang/String;

    move-result-object v12

    .line 953
    goto/16 :goto_d3

    .line 956
    :sswitch_88b
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getTaskIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 957
    goto/16 :goto_d3

    .line 960
    :sswitch_891
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getTaskItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 961
    goto/16 :goto_d3

    .line 964
    :sswitch_89f
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 965
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 969
    :sswitch_8b8
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 970
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 974
    :sswitch_8d7
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 975
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 979
    :sswitch_8f0
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetTimeZone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 980
    goto/16 :goto_d3

    .line 983
    :sswitch_8fe
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetSyncID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 984
    goto/16 :goto_d3

    .line 987
    :sswitch_90c
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->SetContactsSyncID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 988
    goto/16 :goto_d3

    .line 991
    :sswitch_91a
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlNpsHandler;->SetCalendarSyncID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 992
    goto/16 :goto_d3

    .line 995
    :sswitch_924
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setContactsInvalidSyncInit()Ljava/lang/String;

    move-result-object v12

    .line 996
    goto/16 :goto_d3

    .line 999
    :sswitch_92a
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setContactsInitSyncInfo()Ljava/lang/String;

    move-result-object v12

    .line 1000
    goto/16 :goto_d3

    .line 1003
    :sswitch_930
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddContactsSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1004
    goto/16 :goto_d3

    .line 1007
    :sswitch_936
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteContactsSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1008
    goto/16 :goto_d3

    .line 1011
    :sswitch_93c
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddGroupSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1012
    goto/16 :goto_d3

    .line 1015
    :sswitch_942
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteGroupSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1016
    goto/16 :goto_d3

    .line 1019
    :sswitch_948
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddGroupSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1020
    goto/16 :goto_d3

    .line 1023
    :sswitch_94e
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteGroupSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1024
    goto/16 :goto_d3

    .line 1027
    :sswitch_954
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddContactsSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1028
    goto/16 :goto_d3

    .line 1031
    :sswitch_95a
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteContactsSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1032
    goto/16 :goto_d3

    .line 1035
    :sswitch_960
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setCalendarInvalidSyncInit()Ljava/lang/String;

    move-result-object v12

    .line 1036
    goto/16 :goto_d3

    .line 1039
    :sswitch_966
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setCalendarInitSyncInfo()Ljava/lang/String;

    move-result-object v12

    .line 1040
    goto/16 :goto_d3

    .line 1043
    :sswitch_96c
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddCalendarSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1044
    goto/16 :goto_d3

    .line 1047
    :sswitch_972
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteCalendarSyncCount()Ljava/lang/String;

    move-result-object v12

    .line 1048
    goto/16 :goto_d3

    .line 1051
    :sswitch_978
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setAddCalendarSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1052
    goto/16 :goto_d3

    .line 1055
    :sswitch_97e
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->setDeleteCalendarSyncIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1056
    goto/16 :goto_d3

    .line 1059
    :sswitch_984
    const-string v12, "0\nok:exit.\n"

    .line 1060
    const/4 v5, 0x1

    .line 1061
    goto/16 :goto_d3

    .line 1064
    :sswitch_989
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBackupReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1065
    goto/16 :goto_d3

    .line 1068
    :sswitch_993
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBackupRestoreCancel()Ljava/lang/String;

    move-result-object v12

    .line 1069
    goto/16 :goto_d3

    .line 1072
    :sswitch_999
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBackupFinish()Ljava/lang/String;

    move-result-object v12

    .line 1073
    goto/16 :goto_d3

    .line 1076
    :sswitch_99f
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1077
    goto/16 :goto_d3

    .line 1080
    :sswitch_9a9
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 1081
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 1082
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->RestoreGroup(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 1086
    :sswitch_9d5
    const-string v12, "0\n"

    .line 1087
    goto/16 :goto_d3

    .line 1090
    :sswitch_9d9
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 1091
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 1092
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->insertContactBatch(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 1096
    :sswitch_9fb
    const-string v12, "0\n"

    .line 1097
    goto/16 :goto_d3

    .line 1100
    :sswitch_9ff
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreStart()Ljava/lang/String;

    move-result-object v12

    .line 1101
    goto/16 :goto_d3

    .line 1104
    :sswitch_a05
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreCheck()Ljava/lang/String;

    move-result-object v12

    .line 1105
    goto/16 :goto_d3

    .line 1108
    :sswitch_a0b
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRBackupRestoreCancel()Ljava/lang/String;

    move-result-object v12

    .line 1109
    goto/16 :goto_d3

    .line 1112
    :sswitch_a11
    invoke-static {}, Lcom/wssnps/database/smlBackupRestoreItem;->smlBRRestoreFinish()Ljava/lang/String;

    move-result-object v12

    .line 1113
    goto/16 :goto_d3

    .line 1116
    :sswitch_a17
    invoke-static {}, Lcom/wssnps/database/smlAcccountItem;->smlGetCurrentAccountSize()Ljava/lang/String;

    move-result-object v12

    .line 1117
    goto/16 :goto_d3

    .line 1120
    :sswitch_a1d
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Lcom/wssnps/database/smlAcccountItem;->smlPimAdapterGetAccountLoad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1121
    goto/16 :goto_d3

    .line 1124
    :sswitch_a27
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->GetGoogleSign()Ljava/lang/String;

    move-result-object v12

    .line 1125
    goto/16 :goto_d3

    .line 1128
    :sswitch_a2d
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->GetCalendarCount()Ljava/lang/String;

    move-result-object v12

    .line 1129
    goto/16 :goto_d3

    .line 1132
    :sswitch_a33
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getCalendarIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1133
    goto/16 :goto_d3

    .line 1136
    :sswitch_a39
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetCalendar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1137
    goto/16 :goto_d3

    .line 1140
    :sswitch_a47
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetMediaIndexArray(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1141
    goto/16 :goto_d3

    .line 1144
    :sswitch_a55
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->GetMedia(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1145
    goto/16 :goto_d3

    .line 1148
    :sswitch_a63
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->MediaScan()Ljava/lang/String;

    move-result-object v12

    .line 1149
    goto/16 :goto_d3

    .line 1152
    :sswitch_a69
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->GetMediaScaning()Ljava/lang/String;

    move-result-object v12

    .line 1153
    goto/16 :goto_d3

    .line 1156
    :sswitch_a6f
    const/16 v19, 0x1

    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->GetMediaResfresh(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1157
    goto/16 :goto_d3

    .line 1160
    :sswitch_a8b
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSmemoSize()Ljava/lang/String;

    move-result-object v12

    .line 1161
    goto/16 :goto_d3

    .line 1164
    :sswitch_a91
    invoke-virtual/range {p0 .. p0}, Lcom/wssnps/smlNpsHandler;->getSmemoIndexArray()Ljava/lang/String;

    move-result-object v12

    .line 1165
    goto/16 :goto_d3

    .line 1168
    :sswitch_a97
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 1169
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->getSmemoItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1170
    goto/16 :goto_d3

    .line 1173
    :sswitch_aaa
    const-string v19, "UP"

    invoke-static/range {v19 .. v19}, Lcom/wssnps/smlModelDefine;->CpuBoostSet(Ljava/lang/String;)V

    .line 1174
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 1175
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->insertSmemo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 1179
    :sswitch_ac8
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 1180
    const/16 v19, 0x1

    aget-object v19, v14, v19

    const/16 v20, 0x2

    aget-object v20, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wssnps/smlNpsHandler;->updateSmemo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_d3

    .line 1184
    :sswitch_ae7
    array-length v0, v14

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d3

    .line 1185
    const/16 v19, 0x1

    aget-object v19, v14, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wssnps/smlNpsHandler;->deleteSmemo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_afd
    .catch Ljava/lang/Exception; {:try_start_17b .. :try_end_afd} :catch_b00

    move-result-object v12

    goto/16 :goto_d3

    .line 1193
    :catch_b00
    move-exception v7

    .line 1194
    .local v7, e:Ljava/lang/Exception;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "-1\nERROR:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1195
    const/16 v19, 0x3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "work ERROR:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/wssnps/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 1196
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d3

    .line 1215
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #inLen:I
    .end local v14           #param:[Ljava/lang/String;
    .end local v18           #vcardIndex:I
    :cond_b39
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write([B)V

    .line 1216
    array-length v0, v13

    move/from16 v19, v0

    if-lez v19, :cond_b4a

    .line 1217
    invoke-virtual {v11, v13}, Ljava/io/OutputStream;->write([B)V

    .line 1219
    :cond_b4a
    const/4 v13, 0x0

    goto/16 :goto_121

    .line 1244
    :catch_b4d
    move-exception v7

    .line 1245
    .local v7, e:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_15c

    .line 542
    nop

    :sswitch_data_b54
    .sparse-switch
        0x0 -> :sswitch_d3
        0x1 -> :sswitch_d3
        0xb -> :sswitch_17b
        0xc -> :sswitch_18b
        0xd -> :sswitch_19b
        0xe -> :sswitch_1ab
        0xf -> :sswitch_1cc
        0x10 -> :sswitch_1ed
        0x11 -> :sswitch_214
        0x15 -> :sswitch_2ef
        0x16 -> :sswitch_37d
        0x17 -> :sswitch_383
        0x1a -> :sswitch_39c
        0x1b -> :sswitch_3b5
        0x1c -> :sswitch_3da
        0x1f -> :sswitch_3e0
        0x20 -> :sswitch_3f9
        0x21 -> :sswitch_412
        0x22 -> :sswitch_473
        0x24 -> :sswitch_4aa
        0x25 -> :sswitch_4c3
        0x26 -> :sswitch_465
        0x27 -> :sswitch_4dc
        0x28 -> :sswitch_65b
        0x29 -> :sswitch_679
        0x2a -> :sswitch_69d
        0x2b -> :sswitch_71f
        0x2c -> :sswitch_738
        0x2d -> :sswitch_757
        0x2e -> :sswitch_89f
        0x2f -> :sswitch_8b8
        0x30 -> :sswitch_8d7
        0x31 -> :sswitch_79b
        0x32 -> :sswitch_7b4
        0x33 -> :sswitch_853
        0x34 -> :sswitch_86c
        0x35 -> :sswitch_770
        0x36 -> :sswitch_7d3
        0x37 -> :sswitch_7f2
        0x38 -> :sswitch_813
        0x39 -> :sswitch_832
        0x3a -> :sswitch_6bb
        0x3b -> :sswitch_701
        0x3c -> :sswitch_53b
        0x3d -> :sswitch_559
        0x3e -> :sswitch_57d
        0x3f -> :sswitch_8f0
        0x40 -> :sswitch_6dd
        0x46 -> :sswitch_607
        0x47 -> :sswitch_59b
        0x48 -> :sswitch_5b6
        0x49 -> :sswitch_5d1
        0x4a -> :sswitch_5ec
        0x50 -> :sswitch_607
        0x52 -> :sswitch_625
        0x53 -> :sswitch_607
        0x55 -> :sswitch_640
        0x5a -> :sswitch_a39
        0x5b -> :sswitch_a2d
        0x5c -> :sswitch_a33
        0x5d -> :sswitch_a27
        0x64 -> :sswitch_787
        0x65 -> :sswitch_781
        0x66 -> :sswitch_795
        0x6e -> :sswitch_891
        0x6f -> :sswitch_88b
        0x70 -> :sswitch_885
        0x78 -> :sswitch_2f5
        0x79 -> :sswitch_2f5
        0x7a -> :sswitch_2f5
        0x7b -> :sswitch_2f5
        0x7c -> :sswitch_2f5
        0x7e -> :sswitch_311
        0x7f -> :sswitch_311
        0x80 -> :sswitch_311
        0x81 -> :sswitch_311
        0x82 -> :sswitch_311
        0x83 -> :sswitch_32d
        0x84 -> :sswitch_32d
        0x85 -> :sswitch_32d
        0x86 -> :sswitch_32d
        0x87 -> :sswitch_32d
        0x88 -> :sswitch_2f5
        0x89 -> :sswitch_311
        0x8a -> :sswitch_32d
        0x8c -> :sswitch_a1d
        0x8d -> :sswitch_a17
        0x96 -> :sswitch_505
        0x97 -> :sswitch_4e2
        0x98 -> :sswitch_4f9
        0x99 -> :sswitch_518
        0x9a -> :sswitch_52f
        0xaa -> :sswitch_989
        0xab -> :sswitch_999
        0xac -> :sswitch_993
        0xad -> :sswitch_99f
        0xae -> :sswitch_a11
        0xaf -> :sswitch_a0b
        0xb0 -> :sswitch_9ff
        0xb1 -> :sswitch_a05
        0xb2 -> :sswitch_9a9
        0xb3 -> :sswitch_9d5
        0xb4 -> :sswitch_9d9
        0xb5 -> :sswitch_9fb
        0xb6 -> :sswitch_235
        0xb7 -> :sswitch_245
        0xb8 -> :sswitch_255
        0xb9 -> :sswitch_265
        0xba -> :sswitch_286
        0xbb -> :sswitch_2a7
        0xbc -> :sswitch_2ce
        0xc8 -> :sswitch_a47
        0xc9 -> :sswitch_a55
        0xca -> :sswitch_a63
        0xcb -> :sswitch_a69
        0xcc -> :sswitch_a6f
        0x190 -> :sswitch_8fe
        0x191 -> :sswitch_90c
        0x192 -> :sswitch_91a
        0x193 -> :sswitch_924
        0x194 -> :sswitch_92a
        0x195 -> :sswitch_930
        0x196 -> :sswitch_936
        0x197 -> :sswitch_93c
        0x198 -> :sswitch_942
        0x199 -> :sswitch_948
        0x19a -> :sswitch_94e
        0x19b -> :sswitch_954
        0x19c -> :sswitch_95a
        0x19d -> :sswitch_960
        0x19e -> :sswitch_966
        0x19f -> :sswitch_96c
        0x1a0 -> :sswitch_972
        0x1a1 -> :sswitch_978
        0x1a2 -> :sswitch_97e
        0x1a4 -> :sswitch_355
        0x1a5 -> :sswitch_d3
        0x1a6 -> :sswitch_d3
        0x1a7 -> :sswitch_355
        0x1a8 -> :sswitch_d3
        0x1a9 -> :sswitch_d3
        0x1aa -> :sswitch_355
        0x1ab -> :sswitch_d3
        0x1ac -> :sswitch_d3
        0x1ad -> :sswitch_355
        0x1ae -> :sswitch_d3
        0x1af -> :sswitch_d3
        0x1b0 -> :sswitch_355
        0x1b1 -> :sswitch_d3
        0x1b2 -> :sswitch_d3
        0x1b3 -> :sswitch_a8b
        0x1b4 -> :sswitch_a91
        0x1b5 -> :sswitch_a97
        0x1b6 -> :sswitch_aaa
        0x1b7 -> :sswitch_ac8
        0x1b8 -> :sswitch_ae7
        0x1f4 -> :sswitch_984
    .end sparse-switch
.end method
