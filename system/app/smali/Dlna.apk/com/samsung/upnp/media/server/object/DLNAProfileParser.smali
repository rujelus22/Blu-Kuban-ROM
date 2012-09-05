.class public Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
.super Ljava/lang/Object;
.source "DLNAProfileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE:[I

.field public static PROTOCOL_TYPE_MICRO:I

.field public static PROTOCOL_TYPE_ORIGIN:I

.field public static PROTOCOL_TYPE_SMALL:I

.field private static mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

.field static parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;


# instance fields
.field postfixDictionary:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field protocols:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE()[I
    .registers 3

    .prologue
    .line 11
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->values()[Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_cb

    :goto_16
    :try_start_16
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ADTS:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_c8

    :goto_20
    :try_start_20
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ASF:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_c5

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_34} :catch_c2

    :goto_34
    :try_start_34
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3d} :catch_bf

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_46} :catch_bd

    :goto_46
    :try_start_46
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->JPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_4f} :catch_bb

    :goto_4f
    :try_start_4f
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->LPCM:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_58} :catch_b9

    :goto_58
    :try_start_58
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_62
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_62} :catch_b7

    :goto_62
    :try_start_62
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6c} :catch_b5

    :goto_6c
    :try_start_6c
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_75} :catch_b3

    :goto_75
    :try_start_75
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_7f} :catch_b1

    :goto_7f
    :try_start_7f
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->PNG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_88
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_88} :catch_af

    :goto_88
    :try_start_88
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->RAW:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_91
    .catch Ljava/lang/NoSuchFieldError; {:try_start_88 .. :try_end_91} :catch_ad

    :goto_91
    :try_start_91
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMA:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_91 .. :try_end_9b} :catch_ab

    :goto_9b
    :try_start_9b
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_a5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9b .. :try_end_a5} :catch_a9

    :goto_a5
    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE:[I

    goto/16 :goto_4

    :catch_a9
    move-exception v1

    goto :goto_a5

    :catch_ab
    move-exception v1

    goto :goto_9b

    :catch_ad
    move-exception v1

    goto :goto_91

    :catch_af
    move-exception v1

    goto :goto_88

    :catch_b1
    move-exception v1

    goto :goto_7f

    :catch_b3
    move-exception v1

    goto :goto_75

    :catch_b5
    move-exception v1

    goto :goto_6c

    :catch_b7
    move-exception v1

    goto :goto_62

    :catch_b9
    move-exception v1

    goto :goto_58

    :catch_bb
    move-exception v1

    goto :goto_4f

    :catch_bd
    move-exception v1

    goto :goto_46

    :catch_bf
    move-exception v1

    goto/16 :goto_3d

    :catch_c2
    move-exception v1

    goto/16 :goto_34

    :catch_c5
    move-exception v1

    goto/16 :goto_2a

    :catch_c8
    move-exception v1

    goto/16 :goto_20

    :catch_cb
    move-exception v1

    goto/16 :goto_16
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 332
    new-instance v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    invoke-direct {v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;-><init>()V

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    .line 579
    const/4 v0, 0x0

    sput v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    .line 580
    const/4 v0, 0x1

    sput v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_SMALL:I

    .line 581
    const/4 v0, 0x2

    sput v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_MICRO:I

    .line 608
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 338
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    .line 583
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 340
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "image/jpeg"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->JPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "image/png"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->PNG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/vnd.dolby.dd-raw"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->RAW:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/vnd.dlna.adts"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ADTS:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/x-ms-asf"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ASF:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/3gpp"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/3gpp"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->GPP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/L16"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->LPCM:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/mp4"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/mp4"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP4:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/mpeg"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MP3:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/mpeg"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/vnd.dlna.mpeg-tts"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MPEG:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/x-ms-wma"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMA:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/x-ms-wmv"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->WMV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/avi"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/x-divx"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AVI:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/vnd.dlna.adts"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "audio/aac"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->AAC:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/mkv"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    const-string v1, "video/x-matroska"

    sget-object v2, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->MKV:Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_SM"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_MED"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:image/jpeg:DLNA.ORG_PN=JPEG_LRG"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:audio/mpeg:DLNA.ORG_PN=MP3"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/mp4:DLNA.ORG_PN=AVC_MP4_BL_CIF15_AAC_520"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/mp4:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/3gpp:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/avi:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/x-ms-wmv:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/x-msvideo:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/avi:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/x-divx:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/x-ms-asf:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/mkv:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:video/x-matroska:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:audio/mp4:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:audio/mpeg:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:audio/x-ms-wma:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:audio/3gpp:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:image/jpeg:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string v1, "http-get:*:image/png:*"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    return-void
.end method

.method private addNewSourceProtocol(Ljava/lang/String;Z)V
    .registers 5
    .parameter "protocol"
    .parameter "atFront"

    .prologue
    .line 617
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 629
    :cond_8
    :goto_8
    return-void

    .line 620
    :cond_9
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 621
    if-eqz p2, :cond_23

    .line 622
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 626
    :goto_19
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    if-eqz v0, :cond_8

    .line 627
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ConnectionManager;->updateSoruceProtocolInfo()V

    goto :goto_8

    .line 624
    :cond_23
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19
.end method

.method private build1stField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 504
    const-string v0, "http-get"

    return-object v0
.end method

.method private build3rdField(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "mime"

    .prologue
    .line 510
    return-object p1
.end method

.method private build4thField(Ljava/lang/String;III)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x1000

    const/16 v3, 0xa0

    .line 513
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getUPnPClassByMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    .line 516
    if-nez v0, :cond_15

    .line 517
    const-string v0, ""

    .line 572
    :goto_14
    return-object v0

    .line 519
    :cond_15
    const-string v2, "object.item.videoItem.movie"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 520
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_c8

    .line 530
    const-string v0, ""

    goto :goto_14

    .line 522
    :pswitch_2d
    const-string v0, "AVC_MP4_BL_CIF15_AAC_520"

    goto :goto_14

    .line 532
    :cond_30
    const-string v2, "object.item.audioItem.musicTrack"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 533
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_ce

    .line 545
    :pswitch_45
    const-string v0, ""

    goto :goto_14

    .line 535
    :pswitch_48
    const-string v0, "MP3"

    goto :goto_14

    .line 537
    :pswitch_4b
    const-string v0, "AAC_ISO_320"

    goto :goto_14

    .line 539
    :pswitch_4e
    const-string v0, "LPCM"

    goto :goto_14

    .line 541
    :pswitch_51
    const-string v0, "WMABASE"

    goto :goto_14

    .line 543
    :pswitch_54
    const-string v0, "AAC_ADTS_320"

    goto :goto_14

    .line 548
    :cond_57
    const-string v2, "object.item.imageItem.photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 549
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_e6

    .line 570
    :cond_6c
    const-string v0, ""

    goto :goto_14

    .line 551
    :pswitch_6f
    if-eqz p2, :cond_73

    if-nez p3, :cond_76

    .line 552
    :cond_73
    const-string v0, ""

    goto :goto_14

    .line 553
    :cond_76
    if-lt v3, p2, :cond_84

    if-lt v3, p3, :cond_84

    .line 554
    sget v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_MICRO:I

    if-ne p4, v0, :cond_81

    const-string v0, "JPEG_TN"

    goto :goto_14

    :cond_81
    const-string v0, "JPEG_SM"

    goto :goto_14

    .line 555
    :cond_84
    const/16 v0, 0x280

    if-lt v0, p2, :cond_8f

    const/16 v0, 0x1e0

    if-lt v0, p3, :cond_8f

    .line 556
    const-string v0, "JPEG_SM"

    goto :goto_14

    .line 557
    :cond_8f
    const/16 v0, 0x400

    if-lt v0, p2, :cond_9b

    const/16 v0, 0x300

    if-lt v0, p3, :cond_9b

    .line 558
    const-string v0, "JPEG_MED"

    goto/16 :goto_14

    .line 559
    :cond_9b
    if-lt v4, p2, :cond_6c

    if-lt v4, p3, :cond_6c

    .line 560
    const-string v0, "JPEG_LRG"

    goto/16 :goto_14

    .line 563
    :pswitch_a3
    if-eqz p2, :cond_a7

    if-nez p3, :cond_ab

    .line 564
    :cond_a7
    const-string v0, ""

    goto/16 :goto_14

    .line 565
    :cond_ab
    if-lez p2, :cond_bf

    if-lt v3, p2, :cond_bf

    if-lez p3, :cond_bf

    if-lt v3, p3, :cond_bf

    .line 566
    sget v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_MICRO:I

    if-ne p4, v0, :cond_bb

    const-string v0, "PNG_TN"

    goto/16 :goto_14

    :cond_bb
    const-string v0, "PNG_LRG"

    goto/16 :goto_14

    .line 568
    :cond_bf
    const-string v0, "PNG_LRG"

    goto/16 :goto_14

    .line 572
    :cond_c3
    const-string v0, ""

    goto/16 :goto_14

    .line 520
    nop

    :pswitch_data_c8
    .packed-switch 0x6
        :pswitch_2d
    .end packed-switch

    .line 533
    :pswitch_data_ce
    .packed-switch 0x4
        :pswitch_4b
        :pswitch_45
        :pswitch_45
        :pswitch_4e
        :pswitch_45
        :pswitch_54
        :pswitch_51
        :pswitch_45
        :pswitch_45
        :pswitch_48
    .end packed-switch

    .line 549
    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_a3
    .end packed-switch
.end method

.method private bulid2ndField()Ljava/lang/String;
    .registers 2

    .prologue
    .line 507
    const-string v0, "*"

    return-object v0
.end method

.method public static declared-synchronized getParser()Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
    .registers 2

    .prologue
    .line 334
    const-class v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->parser:Lcom/samsung/upnp/media/server/object/DLNAProfileParser;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setConnectionManager(Lcom/samsung/upnp/media/server/ConnectionManager;)V
    .registers 2
    .parameter "conMgr"

    .prologue
    .line 610
    sput-object p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    .line 611
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    if-eqz v0, :cond_b

    .line 612
    sget-object v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->mConMgr:Lcom/samsung/upnp/media/server/ConnectionManager;

    invoke-virtual {v0}, Lcom/samsung/upnp/media/server/ConnectionManager;->updateSoruceProtocolInfo()V

    .line 613
    :cond_b
    return-void
.end method


# virtual methods
.method public attachAdditionalFlags(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 697
    if-nez p1, :cond_3

    .line 708
    :cond_2
    :goto_2
    return-object p1

    .line 700
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->get4thField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 701
    const-string v0, "jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "DLNA.ORG_OP=01"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 705
    :cond_3e
    sget v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    if-ne p2, v0, :cond_56

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";DLNA.ORG_OP=01;DLNA.ORG_CI=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 708
    :cond_56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";DLNA.ORG_OP=01;DLNA.ORG_CI=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2
.end method

.method public buildProtocol(Ljava/lang/String;III)Ljava/lang/String;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build1stField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->bulid2ndField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-direct {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build3rdField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build4thField(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v1

    .line 593
    const-string v2, ""

    .line 595
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 596
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->addNewSourceProtocol(Ljava/lang/String;Z)V

    .line 605
    :goto_46
    invoke-virtual {p0, v0, p4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->attachAdditionalFlags(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 601
    :cond_4b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DLNA.ORG_PN="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build4thField(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->addNewSourceProtocol(Ljava/lang/String;Z)V

    goto :goto_46
.end method

.method public convertToValidateProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build1stField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->bulid2ndField()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->get4thField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 642
    if-lez v2, :cond_3c

    .line 643
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 644
    :cond_3c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->PROTOCOL_TYPE_ORIGIN:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->attachAdditionalFlags(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToValidateProtocolWithout4thField(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->build1stField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    invoke-direct {p0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->bulid2ndField()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p0, p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get4thField(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 462
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 463
    :cond_8
    const-string v0, ""

    .line 474
    :goto_a
    return-object v0

    .line 465
    :cond_b
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 467
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 468
    :cond_1b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 469
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 470
    :cond_24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 471
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 472
    :cond_2d
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 473
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 474
    :cond_38
    const-string v0, ""

    goto :goto_a
.end method

.method public getCurrentProtocolInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    .line 667
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 668
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 663
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 664
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d
.end method

.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 479
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 480
    :cond_8
    const-string v0, "*/*"

    .line 489
    :goto_a
    return-object v0

    .line 482
    :cond_b
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ":"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 484
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 485
    :cond_1b
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 486
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 487
    :cond_24
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 488
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 489
    :cond_2f
    const-string v0, "*/*"

    goto :goto_a
.end method

.method public getMimeTypeByPN(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 493
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 494
    :cond_8
    const-string v0, "*/*"

    .line 500
    :goto_a
    return-object v0

    .line 496
    :cond_b
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 500
    const-string v0, "*/*"

    goto :goto_a

    .line 496
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 498
    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getPostfixByMimetype(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 439
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 440
    :cond_8
    const-string v0, ""

    .line 445
    :goto_a
    return-object v0

    .line 442
    :cond_b
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    .line 443
    if-nez v0, :cond_18

    .line 444
    const-string v0, ".tmp"

    goto :goto_a

    .line 445
    :cond_18
    iget-object v0, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->postfixDictionary:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;

    invoke-virtual {p0, v0}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->getPostfixByPostfixEnum(Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method getPostfixByPostfixEnum(Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 397
    invoke-static {}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->$SWITCH_TABLE$com$samsung$upnp$media$server$object$DLNAProfileParser$POSTFIX_TYPE()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/upnp/media/server/object/DLNAProfileParser$POSTFIX_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 431
    const-string v0, ""

    :goto_f
    return-object v0

    .line 399
    :pswitch_10
    const-string v0, ".adts"

    goto :goto_f

    .line 401
    :pswitch_13
    const-string v0, ".asf"

    goto :goto_f

    .line 403
    :pswitch_16
    const-string v0, ".3gpp"

    goto :goto_f

    .line 405
    :pswitch_19
    const-string v0, ".3gp"

    goto :goto_f

    .line 407
    :pswitch_1c
    const-string v0, ".jpeg"

    goto :goto_f

    .line 409
    :pswitch_1f
    const-string v0, ".lpcm"

    goto :goto_f

    .line 411
    :pswitch_22
    const-string v0, ".mp3"

    goto :goto_f

    .line 413
    :pswitch_25
    const-string v0, ".mp4"

    goto :goto_f

    .line 415
    :pswitch_28
    const-string v0, ".mpeg"

    goto :goto_f

    .line 417
    :pswitch_2b
    const-string v0, ".png"

    goto :goto_f

    .line 419
    :pswitch_2e
    const-string v0, ".raw"

    goto :goto_f

    .line 421
    :pswitch_31
    const-string v0, ".wma"

    goto :goto_f

    .line 423
    :pswitch_34
    const-string v0, ".wmv"

    goto :goto_f

    .line 425
    :pswitch_37
    const-string v0, ".avi"

    goto :goto_f

    .line 427
    :pswitch_3a
    const-string v0, ".aac"

    goto :goto_f

    .line 429
    :pswitch_3d
    const-string v0, ".mkv"

    goto :goto_f

    .line 397
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2b
        :pswitch_2e
        :pswitch_16
        :pswitch_19
        :pswitch_25
        :pswitch_1f
        :pswitch_28
        :pswitch_10
        :pswitch_31
        :pswitch_13
        :pswitch_34
        :pswitch_22
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
    .end packed-switch
.end method

.method public getUPnPClassByMimetype(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 449
    if-nez p1, :cond_5

    .line 450
    const-string v0, "object.item"

    .line 457
    :goto_4
    return-object v0

    .line 451
    :cond_5
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 452
    const-string v0, "object.item.audioItem.musicTrack"

    goto :goto_4

    .line 453
    :cond_10
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 454
    const-string v0, "object.item.videoItem.movie"

    goto :goto_4

    .line 455
    :cond_1b
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 456
    const-string v0, "object.item.imageItem.photo"

    goto :goto_4

    .line 457
    :cond_26
    const-string v0, "object.item"

    goto :goto_4
.end method

.method public isSupportedProtocol(Ljava/lang/String;)Z
    .registers 6
    .parameter "protocol"

    .prologue
    const/4 v1, 0x0

    .line 677
    if-nez p1, :cond_4

    .line 684
    :cond_3
    :goto_3
    return v1

    .line 680
    :cond_4
    iget-object v2, p0, Lcom/samsung/upnp/media/server/object/DLNAProfileParser;->protocols:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 681
    .local v0, prot:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 682
    const/4 v1, 0x1

    goto :goto_3
.end method
