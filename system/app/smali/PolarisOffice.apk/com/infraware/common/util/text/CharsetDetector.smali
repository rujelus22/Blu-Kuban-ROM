.class public Lcom/infraware/common/util/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# static fields
.field private static fCSRecognizers:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/util/text/CharsetRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private static fCharsetNames:[Ljava/lang/String; = null

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 453
    invoke-static {}, Lcom/infraware/common/util/text/CharsetDetector;->createRecognizers()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/infraware/common/util/text/CharsetDetector;->fCSRecognizers:Ljava/util/ArrayList;

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    .line 424
    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/infraware/common/util/text/CharsetDetector;->fByteStats:[S

    .line 428
    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fC1Bytes:Z

    .line 447
    iput-boolean v1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fStripTags:Z

    .line 55
    return-void
.end method

.method private MungeInput()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 339
    const/4 v8, 0x0

    .line 340
    .local v8, srci:I
    const/4 v2, 0x0

    .line 342
    .local v2, dsti:I
    const/4 v5, 0x0

    .line 343
    .local v5, inMarkup:Z
    const/4 v7, 0x0

    .line 344
    .local v7, openTags:I
    const/4 v1, 0x0

    .line 352
    .local v1, badTags:I
    iget-boolean v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fStripTags:Z

    if-eqz v10, :cond_16

    .line 353
    const/4 v8, 0x0

    :goto_b
    iget v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    if-ge v8, v10, :cond_14

    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    array-length v10, v10

    if-lt v2, v10, :cond_49

    .line 372
    :cond_14
    iput v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    .line 380
    :cond_16
    const/4 v10, 0x5

    if-lt v7, v10, :cond_29

    div-int/lit8 v10, v7, 0x5

    if-lt v10, v1, :cond_29

    .line 381
    iget v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    const/16 v11, 0x64

    if-ge v10, v11, :cond_36

    iget v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    const/16 v11, 0x258

    if-le v10, v11, :cond_36

    .line 382
    :cond_29
    iget v6, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    .line 384
    .local v6, limit:I
    const/16 v10, 0x1f40

    if-le v6, v10, :cond_31

    .line 385
    const/16 v6, 0x1f40

    .line 388
    :cond_31
    const/4 v8, 0x0

    :goto_32
    if-lt v8, v6, :cond_69

    .line 391
    iput v8, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    .line 398
    .end local v6           #limit:I
    :cond_36
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fByteStats:[S

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([SS)V

    .line 399
    const/4 v8, 0x0

    :goto_3c
    iget v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputLen:I

    if-lt v8, v10, :cond_74

    .line 404
    iput-boolean v12, p0, Lcom/infraware/common/util/text/CharsetDetector;->fC1Bytes:Z

    .line 405
    const/16 v4, 0x80

    .local v4, i:I
    :goto_44
    const/16 v10, 0x9f

    if-le v4, v10, :cond_86

    .line 411
    :goto_48
    return-void

    .line 354
    .end local v4           #i:I
    :cond_49
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    aget-byte v0, v10, v8

    .line 355
    .local v0, b:B
    const/16 v10, 0x3c

    if-ne v0, v10, :cond_58

    .line 356
    if-eqz v5, :cond_55

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 359
    :cond_55
    const/4 v5, 0x1

    .line 360
    add-int/lit8 v7, v7, 0x1

    .line 363
    :cond_58
    if-nez v5, :cond_61

    .line 364
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #dsti:I
    .local v3, dsti:I
    aput-byte v0, v10, v2

    move v2, v3

    .line 367
    .end local v3           #dsti:I
    .restart local v2       #dsti:I
    :cond_61
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_66

    .line 368
    const/4 v5, 0x0

    .line 353
    :cond_66
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 389
    .end local v0           #b:B
    .restart local v6       #limit:I
    :cond_69
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    iget-object v11, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    aget-byte v11, v11, v8

    aput-byte v11, v10, v8

    .line 388
    add-int/lit8 v8, v8, 0x1

    goto :goto_32

    .line 400
    .end local v6           #limit:I
    :cond_74
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputBytes:[B

    aget-byte v10, v10, v8

    and-int/lit16 v9, v10, 0xff

    .line 401
    .local v9, val:I
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fByteStats:[S

    aget-short v11, v10, v9

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v10, v9

    .line 399
    add-int/lit8 v8, v8, 0x1

    goto :goto_3c

    .line 406
    .end local v9           #val:I
    .restart local v4       #i:I
    :cond_86
    iget-object v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fByteStats:[S

    aget-short v10, v10, v4

    if-eqz v10, :cond_90

    .line 407
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/infraware/common/util/text/CharsetDetector;->fC1Bytes:Z

    goto :goto_48

    .line 405
    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_44
.end method

.method private static createRecognizers()Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/common/util/text/CharsetRecognizer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 460
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 462
    .local v5, recognizers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/util/text/CharsetRecognizer;>;"
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_UTF8;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_UTF8;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_da;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_da;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_de;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_de;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_en;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_en;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_es;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_es;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_fr;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_fr;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_it;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_it;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_nl;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_nl;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_no;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_no;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_pt;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_pt;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_sv;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_1_sv;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_cs;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_cs;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_hu;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_pl;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_pl;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_ro;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_2_ro;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    new-instance v6, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v6}, Lcom/infraware/common/util/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 511
    .local v0, charsetNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 513
    .local v3, out:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_14e

    .line 521
    new-array v6, v3, [Ljava/lang/String;

    sput-object v6, Lcom/infraware/common/util/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    .line 522
    sget-object v6, Lcom/infraware/common/util/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    invoke-static {v0, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    return-object v5

    .line 514
    :cond_14e
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/common/util/text/CharsetRecognizer;

    invoke-virtual {v6}, Lcom/infraware/common/util/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_164

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_169

    .line 517
    :cond_164
    add-int/lit8 v4, v3, 0x1

    .end local v3           #out:I
    .local v4, out:I
    aput-object v2, v0, v3

    move v3, v4

    .line 513
    .end local v4           #out:I
    .restart local v3       #out:I
    :cond_169
    add-int/lit8 v1, v1, 0x1

    goto :goto_13e
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 297
    sget-object v0, Lcom/infraware/common/util/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/infraware/common/util/text/CharsetMatch;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetDetector;->detectAll()[Lcom/infraware/common/util/text/CharsetMatch;

    move-result-object v0

    .line 164
    .local v0, matches:[Lcom/infraware/common/util/text/CharsetMatch;
    if-eqz v0, :cond_9

    array-length v1, v0

    if-nez v1, :cond_b

    .line 165
    :cond_9
    const/4 v1, 0x0

    .line 168
    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_a
.end method

.method public detectAll()[Lcom/infraware/common/util/text/CharsetMatch;
    .registers 9

    .prologue
    .line 191
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v5, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/common/util/text/CharsetMatch;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_6
    sget-object v7, Lcom/infraware/common/util/text/CharsetDetector;->fCSRecognizers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_21

    .line 204
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    invoke-static {v5}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 206
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v6, v7, [Lcom/infraware/common/util/text/CharsetMatch;

    .line 207
    .local v6, resultArray:[Lcom/infraware/common/util/text/CharsetMatch;
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6           #resultArray:[Lcom/infraware/common/util/text/CharsetMatch;
    check-cast v6, [Lcom/infraware/common/util/text/CharsetMatch;

    .line 208
    .restart local v6       #resultArray:[Lcom/infraware/common/util/text/CharsetMatch;
    return-object v6

    .line 196
    .end local v6           #resultArray:[Lcom/infraware/common/util/text/CharsetMatch;
    :cond_21
    sget-object v7, Lcom/infraware/common/util/text/CharsetDetector;->fCSRecognizers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/common/util/text/CharsetRecognizer;

    .line 197
    .local v1, csr:Lcom/infraware/common/util/text/CharsetRecognizer;
    invoke-virtual {v1, p0}, Lcom/infraware/common/util/text/CharsetRecognizer;->match(Lcom/infraware/common/util/text/CharsetDetector;)I

    move-result v2

    .line 198
    .local v2, detectResults:I
    and-int/lit16 v0, v2, 0xff

    .line 199
    .local v0, confidence:I
    if-lez v0, :cond_39

    .line 200
    new-instance v4, Lcom/infraware/common/util/text/CharsetMatch;

    invoke-direct {v4, p0, v1, v0}, Lcom/infraware/common/util/text/CharsetMatch;-><init>(Lcom/infraware/common/util/text/CharsetDetector;Lcom/infraware/common/util/text/CharsetRecognizer;I)V

    .line 201
    .local v4, m:Lcom/infraware/common/util/text/CharsetMatch;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v4           #m:Lcom/infraware/common/util/text/CharsetMatch;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method public enableInputFilter(Z)Z
    .registers 3
    .parameter "filter"

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/infraware/common/util/text/CharsetDetector;->fStripTags:Z

    .line 329
    .local v0, previous:Z
    iput-boolean p1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fStripTags:Z

    .line 331
    return v0
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .registers 6
    .parameter "in"
    .parameter "declaredEncoding"

    .prologue
    const/4 v2, 0x0

    .line 235
    iput-object p2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 238
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/infraware/common/util/text/CharsetDetector;->setText(Ljava/io/InputStream;)Lcom/infraware/common/util/text/CharsetDetector;

    .line 240
    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetDetector;->detect()Lcom/infraware/common/util/text/CharsetMatch;

    move-result-object v1

    .line 242
    .local v1, match:Lcom/infraware/common/util/text/CharsetMatch;
    if-nez v1, :cond_d

    .line 248
    .end local v1           #match:Lcom/infraware/common/util/text/CharsetMatch;
    :goto_c
    return-object v2

    .line 246
    .restart local v1       #match:Lcom/infraware/common/util/text/CharsetMatch;
    :cond_d
    invoke-virtual {v1}, Lcom/infraware/common/util/text/CharsetMatch;->getReader()Ljava/io/Reader;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_10} :catch_12

    move-result-object v2

    goto :goto_c

    .line 247
    .end local v1           #match:Lcom/infraware/common/util/text/CharsetMatch;
    :catch_12
    move-exception v0

    .line 248
    .local v0, e:Ljava/io/IOException;
    goto :goto_c
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "in"
    .parameter "declaredEncoding"

    .prologue
    const/4 v2, 0x0

    .line 270
    iput-object p2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 273
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/infraware/common/util/text/CharsetDetector;->setText([B)Lcom/infraware/common/util/text/CharsetDetector;

    .line 275
    invoke-virtual {p0}, Lcom/infraware/common/util/text/CharsetDetector;->detect()Lcom/infraware/common/util/text/CharsetMatch;

    move-result-object v1

    .line 277
    .local v1, match:Lcom/infraware/common/util/text/CharsetMatch;
    if-nez v1, :cond_d

    .line 283
    .end local v1           #match:Lcom/infraware/common/util/text/CharsetMatch;
    :goto_c
    return-object v2

    .line 281
    .restart local v1       #match:Lcom/infraware/common/util/text/CharsetMatch;
    :cond_d
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/infraware/common/util/text/CharsetMatch;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_13

    move-result-object v2

    goto :goto_c

    .line 282
    .end local v1           #match:Lcom/infraware/common/util/text/CharsetMatch;
    :catch_13
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    goto :goto_c
.end method

.method public inputFilterEnabled()Z
    .registers 2

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/infraware/common/util/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Lcom/infraware/common/util/text/CharsetDetector;
    .registers 2
    .parameter "encoding"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setText(Ljava/io/InputStream;)Lcom/infraware/common/util/text/CharsetDetector;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f40

    .line 115
    iput-object p1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    .line 116
    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 117
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    .line 121
    const/16 v1, 0x1f40

    .line 122
    .local v1, remainingLength:I
    :goto_12
    if-gtz v1, :cond_1d

    .line 131
    :cond_14
    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 133
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetDetector;->MungeInput()V

    .line 134
    return-object p0

    .line 124
    :cond_1d
    iget-object v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    iget v4, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 125
    .local v0, bytesRead:I
    if-lez v0, :cond_14

    .line 128
    iget v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    .line 129
    sub-int/2addr v1, v0

    goto :goto_12
.end method

.method public setText([B)Lcom/infraware/common/util/text/CharsetDetector;
    .registers 3
    .parameter "in"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawInput:[B

    .line 89
    array-length v0, p1

    iput v0, p0, Lcom/infraware/common/util/text/CharsetDetector;->fRawLength:I

    .line 91
    invoke-direct {p0}, Lcom/infraware/common/util/text/CharsetDetector;->MungeInput()V

    .line 93
    return-object p0
.end method
