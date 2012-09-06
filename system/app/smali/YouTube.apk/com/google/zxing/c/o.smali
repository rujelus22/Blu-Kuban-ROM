.class public final Lcom/google/zxing/c/o;
.super Lcom/google/zxing/c/n;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final f:[[I


# instance fields
.field private final g:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0xa

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/zxing/c/o;->a:[I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_48

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/c/o;->f:[[I

    return-void

    .line 39
    :array_20
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_30
    .array-data 0x4
        0x38t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/zxing/c/n;-><init>()V

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/c/o;->g:[I

    .line 55
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/zxing/common/a;[ILjava/lang/StringBuffer;)I
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 59
    iget-object v5, p0, Lcom/google/zxing/c/o;->g:[I

    .line 60
    aput v1, v5, v1

    .line 61
    aput v1, v5, v9

    .line 62
    const/4 v0, 0x2

    aput v1, v5, v0

    .line 63
    const/4 v0, 0x3

    aput v1, v5, v0

    .line 64
    iget v6, p1, Lcom/google/zxing/common/a;->b:I

    .line 65
    aget v0, p2, v9

    move v4, v1

    move v3, v1

    .line 69
    :goto_16
    const/4 v2, 0x6

    if-ge v4, v2, :cond_41

    if-ge v0, v6, :cond_41

    .line 70
    sget-object v2, Lcom/google/zxing/c/o;->e:[[I

    invoke-static {p1, v5, v0, v2}, Lcom/google/zxing/c/o;->a(Lcom/google/zxing/common/a;[II[[I)I

    move-result v7

    .line 71
    rem-int/lit8 v2, v7, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 72
    :goto_2b
    array-length v8, v5

    if-ge v0, v8, :cond_34

    .line 73
    aget v8, v5, v0

    add-int/2addr v2, v8

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 75
    :cond_34
    if-lt v7, v10, :cond_68

    .line 76
    rsub-int/lit8 v0, v4, 0x5

    shl-int v0, v9, v0

    or-int/2addr v0, v3

    .line 69
    :goto_3b
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v2

    goto :goto_16

    :cond_41
    move v4, v1

    .line 80
    :goto_42
    if-gt v4, v9, :cond_63

    move v2, v1

    :goto_45
    if-ge v2, v10, :cond_5f

    sget-object v5, Lcom/google/zxing/c/o;->f:[[I

    aget-object v5, v5, v4

    aget v5, v5, v2

    if-ne v3, v5, :cond_5c

    add-int/lit8 v3, v4, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v1, v3}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v2, 0x30

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 82
    return v0

    .line 80
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_5f
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_42

    :cond_63
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_68
    move v0, v3

    goto :goto_3b
.end method

.method protected final a(Ljava/lang/String;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 90
    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p1, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-char v2, v0, v7

    packed-switch v2, :pswitch_data_66

    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2b
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_3c
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2b

    :pswitch_4b
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2b

    :pswitch_57
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2b

    nop

    :pswitch_data_66
    .packed-switch 0x30
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_4b
        :pswitch_57
    .end packed-switch
.end method

.method protected final a(Lcom/google/zxing/common/a;I)[I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/c/o;->a:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/c/o;->a(Lcom/google/zxing/common/a;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method final b()Lcom/google/zxing/a;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;

    return-object v0
.end method
