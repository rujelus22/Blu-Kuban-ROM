.class public final Lcom/google/zxing/e/a/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/zxing/e/a/p;

.field public static final b:Lcom/google/zxing/e/a/p;

.field public static final c:Lcom/google/zxing/e/a/p;

.field public static final d:Lcom/google/zxing/e/a/p;

.field public static final e:Lcom/google/zxing/e/a/p;

.field public static final f:Lcom/google/zxing/e/a/p;

.field public static final g:Lcom/google/zxing/e/a/p;

.field public static final h:Lcom/google/zxing/e/a/p;

.field public static final i:Lcom/google/zxing/e/a/p;

.field public static final j:Lcom/google/zxing/e/a/p;


# instance fields
.field private final k:[I

.field private final l:I

.field private final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x3

    .line 29
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_9a

    const/4 v2, 0x0

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->a:Lcom/google/zxing/e/a/p;

    .line 30
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_a4

    const/4 v2, 0x1

    const-string v3, "NUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->b:Lcom/google/zxing/e/a/p;

    .line 31
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_ae

    const/4 v2, 0x2

    const-string v3, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->c:Lcom/google/zxing/e/a/p;

    .line 32
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_b8

    const-string v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->d:Lcom/google/zxing/e/a/p;

    .line 33
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_c2

    const/4 v2, 0x4

    const-string v3, "BYTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->e:Lcom/google/zxing/e/a/p;

    .line 34
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_cc

    const/4 v2, 0x7

    const-string v3, "ECI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->f:Lcom/google/zxing/e/a/p;

    .line 35
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_d6

    const/16 v2, 0x8

    const-string v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->g:Lcom/google/zxing/e/a/p;

    .line 36
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_e0

    const/4 v2, 0x5

    const-string v3, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->h:Lcom/google/zxing/e/a/p;

    .line 37
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_ea

    const/16 v2, 0x9

    const-string v3, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->i:Lcom/google/zxing/e/a/p;

    .line 39
    new-instance v0, Lcom/google/zxing/e/a/p;

    new-array v1, v4, [I

    fill-array-data v1, :array_f4

    const/16 v2, 0xd

    const-string v3, "HANZI"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/zxing/e/a/p;-><init>([IILjava/lang/String;)V

    sput-object v0, Lcom/google/zxing/e/a/p;->j:Lcom/google/zxing/e/a/p;

    return-void

    .line 29
    :array_9a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_a4
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_ae
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_b8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_c2
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 34
    :array_cc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_d6
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 36
    :array_e0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_ea
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 39
    :array_f4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/e/a/p;->k:[I

    .line 47
    iput p2, p0, Lcom/google/zxing/e/a/p;->l:I

    .line 48
    iput-object p3, p0, Lcom/google/zxing/e/a/p;->m:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static a(I)Lcom/google/zxing/e/a/p;
    .registers 2
    .parameter

    .prologue
    .line 57
    packed-switch p0, :pswitch_data_28

    .line 80
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 59
    :pswitch_9
    sget-object v0, Lcom/google/zxing/e/a/p;->a:Lcom/google/zxing/e/a/p;

    .line 78
    :goto_b
    return-object v0

    .line 61
    :pswitch_c
    sget-object v0, Lcom/google/zxing/e/a/p;->b:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 63
    :pswitch_f
    sget-object v0, Lcom/google/zxing/e/a/p;->c:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 65
    :pswitch_12
    sget-object v0, Lcom/google/zxing/e/a/p;->d:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 67
    :pswitch_15
    sget-object v0, Lcom/google/zxing/e/a/p;->e:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 69
    :pswitch_18
    sget-object v0, Lcom/google/zxing/e/a/p;->h:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 71
    :pswitch_1b
    sget-object v0, Lcom/google/zxing/e/a/p;->f:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 73
    :pswitch_1e
    sget-object v0, Lcom/google/zxing/e/a/p;->g:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 75
    :pswitch_21
    sget-object v0, Lcom/google/zxing/e/a/p;->i:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 78
    :pswitch_24
    sget-object v0, Lcom/google/zxing/e/a/p;->j:Lcom/google/zxing/e/a/p;

    goto :goto_b

    .line 57
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_3
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/zxing/e/a/q;)I
    .registers 4
    .parameter

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/google/zxing/e/a/q;->a()I

    move-result v0

    .line 92
    const/16 v1, 0x9

    if-gt v0, v1, :cond_e

    .line 93
    const/4 v0, 0x0

    .line 99
    :goto_9
    iget-object v1, p0, Lcom/google/zxing/e/a/p;->k:[I

    aget v0, v1, v0

    return v0

    .line 94
    :cond_e
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_14

    .line 95
    const/4 v0, 0x1

    goto :goto_9

    .line 97
    :cond_14
    const/4 v0, 0x2

    goto :goto_9
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/zxing/e/a/p;->m:Ljava/lang/String;

    return-object v0
.end method
