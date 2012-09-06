.class public LDP;
.super LDv;
.source "QwertyKeyListener.java"


# static fields
.field private static a:LDP;

.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static a:[LDP;


# instance fields
.field private final a:LDX;

.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    invoke-static {}, LDX;->values()[LDX;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [LDP;

    sput-object v0, LDP;->a:[LDP;

    .line 434
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, LDP;->a:Landroid/util/SparseArray;

    .line 437
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const-string v2, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const-string v2, "\u00c7\u0106\u010c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const-string v2, "\u010e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const-string v2, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const-string v2, "\u011e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const-string v2, "\u0141"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const-string v2, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const-string v2, "\u00d1\u0143\u0147"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const-string v2, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const-string v2, "\u0158"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const-string v2, "\u015a\u0160\u015e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const-string v2, "\u0164"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const-string v2, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const-string v2, "\u00dd\u0178"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const-string v2, "\u0179\u017b\u017d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "\u00e7\u0107\u010d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "\u010f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "\u011f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const-string v2, "\u0142"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "\u00f1\u0144\u0148"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const-string v2, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const-string v2, "\u0159"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const-string v2, "\u00a7\u00df\u015b\u0161\u015f"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const-string v2, "\u0165"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const-string v2, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const-string v2, "\u00fd\u00ff"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const-string v2, "\u017a\u017c\u017e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const v1, 0xef01

    const-string v2, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const-string v2, "\u00b9\u00bd\u2153\u00bc\u215b"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const-string v2, "\u00b2\u2154"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const-string v2, "\u00b3\u00be\u215c"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const-string v2, "\u2074"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const-string v2, "\u215d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const-string v2, "\u215e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const-string v2, "\u207f\u2205"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const-string v2, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const-string v2, "\u2030"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const-string v2, "\u2020\u2021"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const-string v2, "\u2013\u2014"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const-string v2, "\u00b1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const-string v2, "[{<"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const-string v2, "]}>"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const-string v2, "\u00a1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const-string v2, "\u201c\u201d\u00ab\u00bb\u02dd"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const-string v2, "\u00bf"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 490
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const-string v2, "\u201a\u201e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 494
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const-string v2, "\u2260\u2248\u221e"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 495
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const-string v2, "\u2264\u00ab\u2039"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 496
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "\u2265\u00bb\u203a"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    return-void
.end method

.method public constructor <init>(LDX;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LDP;-><init>(LDX;ZZ)V

    .line 54
    return-void
.end method

.method private constructor <init>(LDX;ZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, LDv;-><init>()V

    .line 47
    iput-object p1, p0, LDP;->a:LDX;

    .line 48
    iput-boolean p2, p0, LDP;->a:Z

    .line 49
    iput-boolean p3, p0, LDP;->b:Z

    .line 50
    return-void
.end method

.method public static a()LDP;
    .registers 4

    .prologue
    .line 76
    sget-object v0, LDP;->a:LDP;

    if-nez v0, :cond_f

    .line 77
    new-instance v0, LDP;

    sget-object v1, LDX;->a:LDX;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LDP;-><init>(LDX;ZZ)V

    sput-object v0, LDP;->a:LDP;

    .line 79
    :cond_f
    sget-object v0, LDP;->a:LDP;

    return-object v0
.end method

.method public static a(ZLDX;)LDP;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-virtual {p1}, LDX;->ordinal()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :goto_9
    add-int/2addr v0, v1

    .line 63
    sget-object v1, LDP;->a:[LDP;

    aget-object v1, v1, v0

    if-nez v1, :cond_19

    .line 64
    sget-object v1, LDP;->a:[LDP;

    new-instance v2, LDP;

    invoke-direct {v2, p1, p0}, LDP;-><init>(LDX;Z)V

    aput-object v2, v1, v0

    .line 67
    :cond_19
    sget-object v1, LDP;->a:[LDP;

    aget-object v0, v1, v0

    return-object v0

    .line 61
    :cond_1e
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private a(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 365
    sub-int v6, p3, p2

    .line 368
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 370
    if-nez v1, :cond_58

    .line 371
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 372
    sub-int v1, p3, p2

    invoke-static {v0, v3, v1, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 375
    if-nez v1, :cond_1d

    move-object v0, v2

    .line 403
    :cond_1c
    :goto_1c
    return-object v0

    :cond_1d
    move v0, v5

    .line 381
    :goto_1e
    if-eqz v0, :cond_33

    move v4, p2

    move v0, v3

    .line 382
    :goto_22
    if-ge v4, p3, :cond_34

    .line 383
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 384
    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_33
    move v0, v3

    .line 390
    :cond_34
    if-nez v0, :cond_45

    move-object v0, v1

    .line 399
    :goto_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v6, :cond_1c

    invoke-static {p1, p2, v0, v3, v6}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-object v0, v2

    .line 401
    goto :goto_1c

    .line 392
    :cond_45
    if-ne v0, v5, :cond_4c

    .line 393
    invoke-static {v1}, LDP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 394
    :cond_4c
    if-ne v0, v6, :cond_53

    .line 395
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    .line 397
    :cond_53
    invoke-static {v1}, LDP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_37

    :cond_58
    move v0, v3

    goto :goto_1e
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 501
    sget-object v0, LDP;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 502
    if-nez v4, :cond_d

    .line 503
    const/4 v0, 0x0

    .line 511
    :goto_c
    return v0

    .line 506
    :cond_d
    if-ne p5, v6, :cond_1e

    .line 507
    new-instance v0, LDy;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, LDy;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, LDy;->show()V

    :cond_1e
    move v0, v6

    .line 511
    goto :goto_c
.end method


# virtual methods
.method public getInputType()I
    .registers 3

    .prologue
    .line 84
    iget-object v0, p0, LDP;->a:LDX;

    iget-boolean v1, p0, LDP;->a:Z

    invoke-static {v0, v1}, LDP;->a(LDX;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 93
    if-eqz p1, :cond_2f0

    .line 94
    invoke-static {}, LDW;->a()LDW;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, LDW;->a(Landroid/content/Context;)I

    move-result v1

    move v7, v1

    .line 98
    :goto_10
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 99
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 101
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 102
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 104
    if-ltz v2, :cond_24

    if-gez v1, :cond_2ec

    .line 105
    :cond_24
    const/4 v1, 0x0

    .line 106
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v8, v1

    move v9, v1

    .line 110
    :goto_2c
    sget-object v1, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 111
    sget-object v1, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 115
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-static {p2}, LDP;->a(Ljava/lang/CharSequence;)I

    move-result v2

    or-int/2addr v1, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v10

    .line 117
    iget-boolean v1, p0, LDP;->b:Z

    if-nez v1, :cond_74

    .line 118
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 119
    if-lez v6, :cond_74

    if-ne v9, v8, :cond_74

    if-lez v9, :cond_74

    .line 120
    add-int/lit8 v1, v9, -0x1

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 122
    if-eq v4, v10, :cond_65

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ne v4, v1, :cond_74

    if-eqz p1, :cond_74

    .line 123
    :cond_65
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LDP;->a(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 124
    invoke-static {p2}, LDP;->a(Landroid/text/Spannable;)V

    .line 125
    const/4 v1, 0x1

    .line 360
    :goto_73
    return v1

    .line 131
    :cond_74
    const v1, 0xef01

    if-ne v10, v1, :cond_8b

    .line 132
    if-eqz p1, :cond_86

    .line 133
    const v4, 0xef01

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LDP;->a(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 136
    :cond_86
    invoke-static {p2}, LDP;->a(Landroid/text/Spannable;)V

    .line 137
    const/4 v1, 0x1

    goto :goto_73

    .line 140
    :cond_8b
    const v1, 0xef00

    if-ne v10, v1, :cond_2e8

    .line 143
    if-ne v9, v8, :cond_ab

    move v1, v8

    .line 147
    :goto_93
    if-lez v1, :cond_ac

    sub-int v2, v8, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_ac

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p2, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_ac

    .line 148
    add-int/lit8 v1, v1, -0x1

    goto :goto_93

    :cond_ab
    move v1, v9

    .line 154
    :cond_ac
    const/4 v3, -0x1

    .line 156
    :try_start_ad
    invoke-static {p2, v1, v8}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v2

    .line 157
    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_b6
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_b6} :catch_2e1

    move-result v3

    .line 160
    :goto_b7
    if-ltz v3, :cond_1bc

    .line 162
    invoke-static {p2, v1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v2, v1

    .line 169
    :goto_bd
    if-eqz v3, :cond_252

    .line 170
    const/4 v1, 0x0

    .line 172
    const/high16 v4, -0x8000

    and-int/2addr v4, v3

    if-eqz v4, :cond_2e4

    .line 173
    const/4 v1, 0x1

    .line 174
    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move v5, v1

    move v1, v3

    .line 177
    :goto_cc
    if-ne v11, v2, :cond_ef

    if-ne v12, v8, :cond_ef

    .line 178
    const/4 v3, 0x0

    .line 180
    sub-int v4, v8, v2

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_e4

    .line 181
    invoke-interface {p2, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    .line 182
    invoke-static {v4, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    .line 184
    if-eqz v4, :cond_e4

    .line 186
    const/4 v1, 0x1

    move v3, v1

    move v1, v4

    .line 190
    :cond_e4
    if-nez v3, :cond_ef

    .line 191
    invoke-static {p2, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 192
    sget-object v2, LDW;->b:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move v2, v8

    .line 197
    :cond_ef
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_11c

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v3

    if-eqz v3, :cond_11c

    iget-object v3, p0, LDP;->a:LDX;

    invoke-static {v3, p2, v2}, LDW;->a(LDX;Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 200
    sget-object v3, LDW;->c:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 201
    sget-object v4, LDW;->c:Ljava/lang/Object;

    invoke-interface {p2, v4}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    .line 203
    if-ne v3, v2, :cond_1c0

    shr-int/lit8 v3, v4, 0x10

    const v4, 0xffff

    and-int/2addr v3, v4

    if-ne v3, v1, :cond_1c0

    .line 204
    sget-object v3, LDW;->c:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 220
    :cond_11c
    :goto_11c
    if-eq v2, v8, :cond_121

    .line 221
    invoke-static {p2, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 223
    :cond_121
    sget-object v3, LDP;->a:Ljava/lang/Object;

    const/16 v4, 0x11

    invoke-interface {p2, v3, v2, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 226
    int-to-char v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v8, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 228
    sget-object v2, LDP;->a:Ljava/lang/Object;

    invoke-interface {p2, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 229
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 231
    if-ge v4, v2, :cond_14f

    .line 232
    sget-object v3, LDW;->e:Ljava/lang/Object;

    const/16 v6, 0x21

    invoke-interface {p2, v3, v4, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 236
    if-eqz v5, :cond_14f

    .line 237
    invoke-static {p2, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 238
    sget-object v3, LDW;->b:Ljava/lang/Object;

    const/16 v5, 0x21

    invoke-interface {p2, v3, v4, v2, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 243
    :cond_14f
    invoke-static {p2}, LDP;->b(Landroid/text/Spannable;)V

    .line 248
    and-int/lit8 v2, v7, 0x2

    if-eqz v2, :cond_1f7

    iget-boolean v2, p0, LDP;->a:Z

    if-eqz v2, :cond_1f7

    const/16 v2, 0x20

    if-eq v1, v2, :cond_182

    const/16 v2, 0x9

    if-eq v1, v2, :cond_182

    const/16 v2, 0xa

    if-eq v1, v2, :cond_182

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_182

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_182

    const/16 v2, 0x21

    if-eq v1, v2, :cond_182

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_182

    const/16 v2, 0x22

    if-eq v1, v2, :cond_182

    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1f7

    :cond_182
    sget-object v1, LDW;->d:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_1f7

    move v3, v4

    .line 256
    :goto_18b
    if-lez v3, :cond_19d

    .line 257
    add-int/lit8 v1, v3, -0x1

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 258
    const/16 v2, 0x27

    if-eq v1, v2, :cond_1de

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_1de

    .line 263
    :cond_19d
    invoke-direct {p0, p2, v3, v4, p1}, LDP;->a(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 265
    if-eqz v5, :cond_1f7

    .line 266
    const/4 v1, 0x0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v6, LDQ;

    invoke-interface {p2, v1, v2, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDQ;

    .line 268
    const/4 v2, 0x0

    :goto_1b1
    array-length v6, v1

    if-ge v2, v6, :cond_1e2

    .line 269
    aget-object v6, v1, v2

    invoke-interface {p2, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b1

    .line 165
    :cond_1bc
    const/4 v3, 0x0

    move v2, v9

    goto/16 :goto_bd

    .line 206
    :cond_1c0
    shl-int/lit8 v3, v1, 0x10

    .line 207
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    .line 209
    if-nez v2, :cond_1d3

    .line 210
    sget-object v4, LDW;->c:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v9, 0x0

    or-int/lit8 v3, v3, 0x11

    invoke-interface {p2, v4, v6, v9, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_11c

    .line 213
    :cond_1d3
    sget-object v4, LDW;->c:Ljava/lang/Object;

    add-int/lit8 v6, v2, -0x1

    or-int/lit8 v3, v3, 0x21

    invoke-interface {p2, v4, v6, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_11c

    .line 256
    :cond_1de
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_18b

    .line 271
    :cond_1e2
    sub-int v1, v4, v3

    new-array v1, v1, [C

    .line 272
    const/4 v2, 0x0

    invoke-static {p2, v3, v4, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 274
    new-instance v2, LDQ;

    invoke-direct {v2, v1}, LDQ;-><init>([C)V

    const/16 v1, 0x21

    invoke-interface {p2, v2, v3, v4, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 276
    invoke-interface {p2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 282
    :cond_1f7
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_24f

    iget-boolean v1, p0, LDP;->a:Z

    if-eqz v1, :cond_24f

    .line 283
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    .line 284
    add-int/lit8 v1, v3, -0x3

    if-ltz v1, :cond_24f

    .line 285
    add-int/lit8 v1, v3, -0x1

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_24f

    add-int/lit8 v1, v3, -0x2

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_24f

    .line 287
    add-int/lit8 v1, v3, -0x3

    invoke-interface {p2, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 289
    add-int/lit8 v1, v3, -0x3

    :goto_223
    if-lez v1, :cond_23a

    .line 290
    const/16 v4, 0x22

    if-eq v2, v4, :cond_231

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v4

    const/16 v5, 0x16

    if-ne v4, v5, :cond_23a

    .line 292
    :cond_231
    add-int/lit8 v2, v1, -0x1

    invoke-interface {p2, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    .line 289
    add-int/lit8 v1, v1, -0x1

    goto :goto_223

    .line 298
    :cond_23a
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-nez v1, :cond_246

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 299
    :cond_246
    add-int/lit8 v1, v3, -0x2

    add-int/lit8 v2, v3, -0x1

    const-string v3, "."

    invoke-interface {p2, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 305
    :cond_24f
    const/4 v1, 0x1

    goto/16 :goto_73

    .line 306
    :cond_252
    const/16 v1, 0x43

    move/from16 v0, p3

    if-ne v0, v1, :cond_2db

    invoke-static/range {p4 .. p4}, LDE;->a(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_264

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-eqz v1, :cond_2db

    :cond_264
    if-ne v2, v8, :cond_2db

    .line 311
    const/4 v1, 0x1

    .line 318
    sget-object v3, LDW;->e:Ljava/lang/Object;

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ne v3, v2, :cond_27a

    .line 319
    add-int/lit8 v3, v2, -0x1

    invoke-interface {p2, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_27a

    .line 320
    const/4 v1, 0x2

    .line 323
    :cond_27a
    sub-int v1, v2, v1

    const-class v3, LDQ;

    invoke-interface {p2, v1, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LDQ;

    .line 326
    array-length v3, v1

    if-lez v3, :cond_2db

    .line 327
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-interface {p2, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 328
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-interface {p2, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 329
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-static {v6}, LDQ;->a(LDQ;)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    .line 331
    const/4 v6, 0x0

    aget-object v1, v1, v6

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 337
    if-lt v2, v4, :cond_2d2

    .line 338
    sget-object v1, LDW;->d:Ljava/lang/Object;

    const/16 v2, 0x22

    invoke-interface {p2, v1, v4, v4, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 340
    invoke-interface {p2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 342
    sget-object v1, LDW;->d:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 343
    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_2cc

    .line 344
    sget-object v2, LDW;->d:Ljava/lang/Object;

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x21

    invoke-interface {p2, v2, v3, v1, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 350
    :goto_2c6
    invoke-static {p2}, LDP;->b(Landroid/text/Spannable;)V

    .line 356
    const/4 v1, 0x1

    goto/16 :goto_73

    .line 348
    :cond_2cc
    sget-object v1, LDW;->d:Ljava/lang/Object;

    invoke-interface {p2, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_2c6

    .line 352
    :cond_2d2
    invoke-static {p2}, LDP;->b(Landroid/text/Spannable;)V

    .line 353
    invoke-super/range {p0 .. p4}, LDv;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_73

    .line 360
    :cond_2db
    invoke-super/range {p0 .. p4}, LDv;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_73

    .line 158
    :catch_2e1
    move-exception v2

    goto/16 :goto_b7

    :cond_2e4
    move v5, v1

    move v1, v3

    goto/16 :goto_cc

    :cond_2e8
    move v3, v10

    move v2, v9

    goto/16 :goto_bd

    :cond_2ec
    move v8, v1

    move v9, v2

    goto/16 :goto_2c

    :cond_2f0
    move v7, v1

    goto/16 :goto_10
.end method
