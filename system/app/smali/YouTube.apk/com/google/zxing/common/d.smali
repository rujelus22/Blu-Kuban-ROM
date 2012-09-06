.class public final Lcom/google/zxing/common/d;
.super Lcom/google/zxing/common/j;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Hashtable;

.field private static final b:Ljava/util/Hashtable;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v1, 0x1d

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/d;->a:Ljava/util/Hashtable;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lcom/google/zxing/common/d;->b:Ljava/util/Hashtable;

    .line 35
    const-string v0, "Cp437"

    invoke-static {v3, v0}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 36
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "ISO8859_1"

    aput-object v1, v0, v3

    const-string v1, "ISO-8859-1"

    aput-object v1, v0, v4

    invoke-static {v4, v0}, Lcom/google/zxing/common/d;->a(I[Ljava/lang/String;)V

    .line 37
    const-string v0, "Cp437"

    invoke-static {v5, v0}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 38
    const/4 v0, 0x3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ISO8859_1"

    aput-object v2, v1, v3

    const-string v2, "ISO-8859-1"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(I[Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x4

    const-string v1, "ISO8859_2"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 40
    const/4 v0, 0x5

    const-string v1, "ISO8859_3"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 41
    const/4 v0, 0x6

    const-string v1, "ISO8859_4"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 42
    const/4 v0, 0x7

    const-string v1, "ISO8859_5"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 43
    const/16 v0, 0x8

    const-string v1, "ISO8859_6"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 44
    const/16 v0, 0x9

    const-string v1, "ISO8859_7"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 45
    const/16 v0, 0xa

    const-string v1, "ISO8859_8"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 46
    const/16 v0, 0xb

    const-string v1, "ISO8859_9"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 47
    const/16 v0, 0xc

    const-string v1, "ISO8859_10"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 48
    const/16 v0, 0xd

    const-string v1, "ISO8859_11"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 49
    const/16 v0, 0xf

    const-string v1, "ISO8859_13"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 50
    const/16 v0, 0x10

    const-string v1, "ISO8859_14"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 51
    const/16 v0, 0x11

    const-string v1, "ISO8859_15"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 52
    const/16 v0, 0x12

    const-string v1, "ISO8859_16"

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(ILjava/lang/String;)V

    .line 53
    const/16 v0, 0x14

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "SJIS"

    aput-object v2, v1, v3

    const-string v2, "Shift_JIS"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/zxing/common/d;->a(I[Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/google/zxing/common/j;-><init>(I)V

    .line 60
    iput-object p2, p0, Lcom/google/zxing/common/d;->c:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static a(I)Lcom/google/zxing/common/d;
    .registers 4
    .parameter

    .prologue
    .line 88
    if-ltz p0, :cond_6

    const/16 v0, 0x384

    if-lt p0, v0, :cond_1b

    .line 89
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Bad ECI value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1b
    sget-object v0, Lcom/google/zxing/common/d;->a:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/common/d;

    return-object v0
.end method

.method private static a(ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 68
    new-instance v0, Lcom/google/zxing/common/d;

    invoke-direct {v0, p0, p1}, Lcom/google/zxing/common/d;-><init>(ILjava/lang/String;)V

    .line 69
    sget-object v1, Lcom/google/zxing/common/d;->a:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v1, Lcom/google/zxing/common/d;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private static a(I[Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    new-instance v1, Lcom/google/zxing/common/d;

    aget-object v2, p1, v0

    invoke-direct {v1, p0, v2}, Lcom/google/zxing/common/d;-><init>(ILjava/lang/String;)V

    .line 75
    sget-object v2, Lcom/google/zxing/common/d;->a:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :goto_12
    array-length v2, p1

    if-ge v0, v2, :cond_1f

    .line 77
    sget-object v2, Lcom/google/zxing/common/d;->b:Ljava/util/Hashtable;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 79
    :cond_1f
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/zxing/common/d;->c:Ljava/lang/String;

    return-object v0
.end method
