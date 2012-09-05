.class public Lah/r;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lah/g;

.field public static final b:Lah/c;

.field private static c:Laf/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lah/r;->a:Lah/g;

    sput-object v0, Lah/r;->b:Lah/c;

    new-instance v0, Laf/h;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Laf/h;-><init>(I)V

    sput-object v0, Lah/r;->c:Laf/h;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;C)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, Lah/n;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_14
    :goto_14
    return v0

    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lah/n;->a(CC)Z

    move-result v1

    if-nez v1, :cond_14

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_31
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4

    const-string v0, " \u2003"

    invoke-static {p0, v0, p1}, Lah/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_d
    return v0
.end method

.method public static a(Ljava/lang/String;Lah/d;I)I
    .registers 7

    const/4 v1, 0x0

    if-gtz p2, :cond_5

    move v0, v1

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {p1, p0}, Lah/d;->a(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_11

    move v0, v2

    goto :goto_4

    :cond_11
    mul-int/lit8 v3, p2, 0x2

    if-le v0, v3, :cond_26

    move v0, v1

    :goto_16
    if-ge v0, v2, :cond_4

    invoke-interface {p1, p0, v1, v0}, Lah/d;->a(Ljava/lang/String;II)I

    move-result v3

    if-ge v3, p2, :cond_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_21
    if-eq v3, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_26
    move v0, v2

    :goto_27
    if-lez v0, :cond_4

    invoke-interface {p1, p0, v1, v0}, Lah/d;->a(Ljava/lang/String;II)I

    move-result v2

    if-le v2, p2, :cond_4

    add-int/lit8 v0, v0, -0x1

    goto :goto_27
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_12

    :goto_11
    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    goto :goto_11
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    :goto_a
    return-object p0

    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v0, " "

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lah/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_1c

    const-string p0, ""

    goto :goto_a

    :cond_1c
    add-int/lit8 v0, v1, -0x1

    :goto_1e
    if-ltz v0, :cond_2d

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2d

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_2d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;Lah/d;ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    invoke-interface {p1, p0}, Lah/d;->a(Ljava/lang/String;)I

    move-result v0

    if-gt v0, p2, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p0, p1, p2, p3}, Lah/r;->b(Ljava/lang/String;Lah/d;ILjava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_6
.end method

.method public static a(Lah/e;Lah/d;Ljava/lang/String;IIII[ILah/g;Lah/c;)V
    .registers 19

    const/4 v3, 0x0

    invoke-interface {p1}, Lah/d;->a()I

    move-result v2

    invoke-static {}, Laf/b;->k()Z

    move-result v1

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lah/e;->a(Lah/d;)V

    :cond_e
    invoke-static {p2, p3, p4}, Lah/r;->a(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_29

    array-length v4, v5

    const/4 v1, 0x0

    :goto_16
    div-int/lit8 v6, v4, 0x2

    if-ge v1, v6, :cond_29

    sub-int v6, v4, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v7, v5, v1

    aget-object v8, v5, v6

    aput-object v8, v5, v1

    aput-object v7, v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, v5

    if-ge v1, v4, :cond_be

    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_49

    if-eqz p0, :cond_3f

    aget-object v4, v5, v1

    add-int v6, p5, v3

    invoke-interface {p1, p0, v4, v6, p6}, Lah/d;->a(Lah/e;Ljava/lang/String;II)V

    :cond_3f
    aget-object v4, v5, v1

    invoke-interface {p1, v4}, Lah/d;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_49
    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v4, 0xff00

    if-lt v6, v4, :cond_79

    const v4, 0xff00

    sub-int v4, v6, v4

    int-to-char v4, v4

    if-eqz p9, :cond_46

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Lah/c;->a(C)Z

    move-result v6

    if-eqz v6, :cond_46

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, Lah/c;->b(C)Lah/d;

    move-result-object p1

    invoke-interface {p1}, Lah/d;->a()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p0, :cond_46

    invoke-interface {p0, p1}, Lah/e;->a(Lah/d;)V

    goto :goto_46

    :cond_79
    if-eqz p8, :cond_46

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lah/g;->a(C)Z

    move-result v4

    if-eqz v4, :cond_46

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lah/g;->b(C)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p0, :cond_a4

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lah/g;->d(C)I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    move v2, p6

    :goto_99
    add-int v7, p5, v3

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p8

    invoke-interface {v0, v6, p0, v7, v2}, Lah/g;->a(CLah/e;II)Z

    :cond_a4
    move-object/from16 v0, p8

    invoke-interface {v0, v6}, Lah/g;->c(C)I

    move-result v2

    add-int/2addr v3, v2

    move v2, v4

    goto :goto_46

    :pswitch_ad
    sub-int v2, v4, v7

    add-int/2addr v2, p6

    goto :goto_99

    :pswitch_b1
    sub-int v2, v4, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p6

    goto :goto_99

    :pswitch_b7
    invoke-interface {p1}, Lah/d;->c()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/2addr v2, p6

    goto :goto_99

    :cond_be
    if-eqz p7, :cond_c6

    const/4 v1, 0x0

    aput v3, p7, v1

    const/4 v1, 0x1

    aput v2, p7, v1

    :cond_c6
    return-void

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_b1
        :pswitch_b7
    .end packed-switch
.end method

.method public static a(Lah/e;Lah/d;Ljava/lang/String;II[ILah/g;Lah/c;)V
    .registers 18

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lah/r;->a(Lah/e;Lah/d;Ljava/lang/String;IIII[ILah/g;Lah/c;)V

    return-void
.end method

.method private static a(C)Z
    .registers 3

    const-string v0, " \u2003"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static a(Lah/e;IIII)Z
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p0}, Lah/e;->b()I

    move-result v1

    add-int v2, p2, p4

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, Lah/e;->d()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_20

    invoke-interface {p0}, Lah/e;->a()I

    move-result v1

    add-int v2, p1, p3

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, Lah/e;->c()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_20

    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method public static a(Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p2, :cond_5

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-gt v1, p2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static a(Lah/d;Ljava/lang/String;Lah/g;Lah/c;)[I
    .registers 14

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, 0x2

    new-array v5, v0, [I

    const/4 v3, 0x0

    invoke-interface {p0}, Lah/d;->a()I

    move-result v0

    const/4 v2, 0x0

    move-object v1, p0

    :goto_f
    if-ge v2, v4, :cond_8d

    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_30

    invoke-interface {v1, v7}, Lah/d;->a(C)I

    move-result v7

    aput v7, v5, v6

    aget v6, v5, v6

    add-int/2addr v3, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    :goto_28
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v0, v1

    move-object v1, v3

    move v3, v2

    move v2, v9

    goto :goto_f

    :cond_30
    add-int/lit8 v7, v2, 0x1

    if-lt v7, v4, :cond_3d

    const/4 v7, 0x0

    aput v7, v5, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    :cond_3d
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xff00

    if-lt v7, v8, :cond_6f

    if-eqz p3, :cond_5c

    const v1, 0xff00

    sub-int v1, v7, v1

    int-to-char v1, v1

    invoke-interface {p3, v1}, Lah/c;->b(C)Lah/d;

    move-result-object v1

    invoke-interface {v1}, Lah/d;->a()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_5c
    const/4 v7, 0x0

    aput v7, v5, v6

    :goto_5f
    aget v7, v5, v6

    add-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    :cond_6f
    if-eqz p2, :cond_80

    invoke-interface {p2, v7}, Lah/g;->c(C)I

    move-result v8

    aput v8, v5, v6

    invoke-interface {p2, v7}, Lah/g;->b(C)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5f

    :cond_80
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Lah/d;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    goto :goto_5f

    :cond_8d
    const/4 v1, 0x0

    aput v3, v5, v1

    const/4 v1, 0x1

    aput v0, v5, v1

    return-object v5
.end method

.method public static a(IILah/d;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    :goto_c
    return-object v0

    :cond_d
    if-lez p4, :cond_d3

    invoke-static {p3}, Lah/r;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lah/d;->a(Ljava/lang/String;)I

    move-result v0

    :goto_22
    const/4 v1, 0x0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_40

    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, Lah/d;->a(C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_3b
    invoke-interface {p2, p3}, Lah/d;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    :cond_40
    const-string v7, ""

    sub-int v0, p0, p4

    if-le v0, v1, :cond_5b

    sub-int v2, p0, p4

    const/4 v3, 0x1

    sget-object v4, Lah/r;->a:Lah/g;

    sget-object v5, Lah/r;->b:Lah/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, Lah/r;->a(Lah/d;Ljava/lang/String;IILah/g;Lah/c;Z)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_5b

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v7, v0

    :cond_5b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, Lah/r;->a(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    const v3, 0x7fffffff

    sget-object v4, Lah/r;->a:Lah/g;

    sget-object v5, Lah/r;->b:Lah/c;

    const/4 v6, 0x1

    move-object v0, p2

    move v2, p0

    invoke-static/range {v0 .. v6}, Lah/r;->a(Lah/d;Ljava/lang/String;IILah/g;Lah/c;Z)[Ljava/lang/String;

    move-result-object v0

    :cond_80
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v7, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_8f
    array-length v1, v0

    if-le v1, p1, :cond_e4

    new-array v1, p1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, p1, -0x1

    const-string v3, "..."

    invoke-static {v0, p2, p0, v3}, Lah/r;->a(Ljava/lang/String;Lah/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_c2
    if-eqz p5, :cond_e1

    const/4 v0, 0x0

    :goto_c5
    array-length v2, v1

    if-ge v0, v2, :cond_e1

    aget-object v2, v1, v0

    invoke-static {v2}, Lah/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    :cond_d3
    const/4 v3, -0x1

    sget-object v4, Lah/r;->a:Lah/g;

    sget-object v5, Lah/r;->b:Lah/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    move v2, p0

    invoke-static/range {v0 .. v6}, Lah/r;->a(Lah/d;Ljava/lang/String;IILah/g;Lah/c;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    :cond_e1
    move-object v0, v1

    goto/16 :goto_c

    :cond_e4
    move-object v1, v0

    goto :goto_c2
.end method

.method public static a(Lah/d;Ljava/lang/String;IILah/g;Lah/c;Z)[Ljava/lang/String;
    .registers 20

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    :cond_c
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    :goto_f
    return-object v2

    :cond_10
    if-lez p3, :cond_28

    :goto_12
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, Lah/r;->a(Lah/d;Ljava/lang/String;Lah/g;Lah/c;)[I

    move-result-object v7

    if-nez p6, :cond_2c

    const/4 v2, 0x0

    aget v2, v7, v2

    if-gt v2, p2, :cond_2c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_f

    :cond_28
    const p3, 0x7fffffff

    goto :goto_12

    :cond_2c
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p1}, Lah/r;->c(Ljava/lang/String;)I

    move-result v10

    if-nez p6, :cond_44

    if-ltz v10, :cond_de

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-gt v2, v0, :cond_de

    :cond_44
    const/4 v3, 0x0

    const/4 v2, 0x2

    :goto_46
    array-length v4, v7

    if-ge v2, v4, :cond_de

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    :goto_4e
    array-length v5, v7

    if-ge v4, v5, :cond_132

    aget v5, v7, v4

    add-int/2addr v5, v2

    if-le v5, p2, :cond_66

    if-eqz p6, :cond_62

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xa

    if-eq v5, v11, :cond_66

    :cond_62
    add-int/lit8 v5, v4, -0x2

    if-ne v5, v3, :cond_132

    :cond_66
    if-eqz p6, :cond_92

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xa

    if-ne v5, v11, :cond_92

    const/4 v2, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v6, v4

    :goto_77
    add-int/lit8 v4, v6, -0x2

    if-eqz v5, :cond_99

    if-le v4, v3, :cond_99

    add-int/lit8 v2, v4, -0x1

    :goto_7f
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_83
    if-ge v4, v9, :cond_9b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Lah/r;->a(C)Z

    move-result v11

    if-eqz v11, :cond_9b

    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    :cond_92
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_4e

    :cond_99
    move v2, v4

    goto :goto_7f

    :cond_9b
    if-nez v5, :cond_130

    add-int/lit8 v5, v6, -0x2

    if-ne v4, v5, :cond_130

    array-length v5, v7

    if-ge v6, v5, :cond_130

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, Lah/r;->a(Ljava/lang/String;C)I

    move-result v5

    if-ltz v5, :cond_130

    add-int v4, v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v4

    :goto_b5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lah/r;->a(C)Z

    move-result v4

    if-eqz v4, :cond_d7

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b5

    :cond_d7
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x2

    goto/16 :goto_46

    :cond_de
    if-nez p6, :cond_125

    if-ltz v10, :cond_ea

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_125

    :cond_ea
    const/4 v3, 0x0

    const/4 v2, 0x2

    invoke-interface {v8}, Ljava/util/List;->clear()V

    :goto_ef
    array-length v4, v7

    if-ge v2, v4, :cond_125

    const/4 v4, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    :goto_f6
    array-length v5, v7

    if-ge v4, v5, :cond_109

    aget v5, v7, v4

    add-int/2addr v5, v2

    if-le v5, p2, :cond_102

    add-int/lit8 v5, v4, -0x2

    if-ne v5, v3, :cond_109

    :cond_102
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_f6

    :cond_109
    add-int/lit8 v2, v4, -0x2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v3, v2

    :goto_110
    if-ge v3, v9, :cond_11f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lah/r;->a(C)Z

    move-result v2

    if-eqz v2, :cond_11f

    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    :cond_11f
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x2

    goto :goto_ef

    :cond_125
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v8, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_f

    :cond_130
    move v3, v4

    goto :goto_b5

    :cond_132
    move v5, v6

    move v6, v4

    goto/16 :goto_77
.end method

.method public static a(Ljava/lang/String;II)[Ljava/lang/String;
    .registers 8

    const/4 v4, 0x1

    add-int v1, p1, p2

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_b
    if-ltz v0, :cond_2a

    if-ge v0, v1, :cond_2a

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_23

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 p1, v0, 0x2

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_b

    :cond_2a
    if-ge p1, v1, :cond_37

    if-nez p1, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_41

    :goto_34
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_41
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_34
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    const/4 v2, -0x1

    const-string v0, " \u2003"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lah/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_e
    :goto_e
    return v0

    :cond_f
    const-string v1, " \u2003"

    invoke-static {p0, v1, v0}, Lah/r;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_e
.end method

.method private static b(Ljava/lang/String;Lah/d;ILjava/lang/String;)I
    .registers 6

    invoke-interface {p1, p3}, Lah/d;->a(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {p0, p1, v0}, Lah/r;->a(Ljava/lang/String;Lah/d;I)I

    move-result v0

    :goto_a
    if-lez v0, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Las/b;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1b
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_12

    :goto_11
    return p2

    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    goto :goto_11
.end method

.method private static c(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, Lah/n;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_18

    :goto_17
    return v0

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method
