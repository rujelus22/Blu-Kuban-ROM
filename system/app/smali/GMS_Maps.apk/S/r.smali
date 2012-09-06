.class public LS/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LS/g;

.field public static final b:LS/c;

.field private static c:Lcom/google/googlenav/common/f;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, LS/r;->a:LS/g;

    .line 67
    sput-object v0, LS/r;->b:LS/c;

    .line 1177
    new-instance v0, Lcom/google/googlenav/common/f;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/f;-><init>(I)V

    sput-object v0, LS/r;->c:Lcom/google/googlenav/common/f;

    return-void
.end method

.method private static a(Ljava/lang/String;C)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p1}, LS/n;->a(CC)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 746
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 753
    :cond_14
    :goto_14
    return v0

    .line 748
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    const/4 v1, 0x1

    if-lt v0, v1, :cond_31

    .line 749
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, LS/n;->a(CC)Z

    move-result v1

    if-nez v1, :cond_14

    .line 748
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 753
    :cond_31
    const/4 v0, -0x1

    goto :goto_14
.end method

.method private static a(Ljava/lang/String;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 356
    const-string v0, " \u2003"

    invoke-static {p0, v0, p1}, LS/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 357
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 360
    :cond_d
    return v0
.end method

.method public static a(Ljava/lang/String;LS/d;I)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 890
    if-gtz p2, :cond_5

    move v0, v1

    .line 946
    :cond_4
    :goto_4
    return v0

    .line 893
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 894
    invoke-interface {p1, p0}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 895
    if-gt v0, p2, :cond_11

    move v0, v2

    .line 897
    goto :goto_4

    .line 910
    :cond_11
    mul-int/lit8 v3, p2, 0x2

    if-le v0, v3, :cond_26

    move v0, v1

    .line 914
    :goto_16
    if-ge v0, v2, :cond_4

    .line 915
    invoke-interface {p1, p0, v1, v0}, LS/d;->a(Ljava/lang/String;II)I

    move-result v3

    .line 917
    if-ge v3, p2, :cond_21

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 920
    :cond_21
    if-eq v3, p2, :cond_4

    .line 925
    add-int/lit8 v0, v0, -0x1

    .line 926
    goto :goto_4

    :cond_26
    move v0, v2

    .line 934
    :goto_27
    if-lez v0, :cond_4

    .line 935
    invoke-interface {p1, p0, v1, v0}, LS/d;->a(Ljava/lang/String;II)I

    move-result v2

    .line 937
    if-le v2, p2, :cond_4

    .line 942
    add-int/lit8 v0, v0, -0x1

    .line 944
    goto :goto_27
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 375
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    .line 376
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 380
    :goto_11
    return p2

    .line 375
    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    .line 380
    goto :goto_11
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 414
    if-eqz p0, :cond_a

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 439
    :cond_a
    :goto_a
    return-object p0

    .line 419
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 422
    const-string v0, " "

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, LS/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 424
    const/4 v0, -0x1

    if-ne v2, v0, :cond_1c

    .line 426
    const-string p0, ""

    goto :goto_a

    .line 431
    :cond_1c
    add-int/lit8 v0, v1, -0x1

    :goto_1e
    if-ltz v0, :cond_2d

    .line 432
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2d

    .line 433
    add-int/lit8 v1, v1, -0x1

    .line 431
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    .line 439
    :cond_2d
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_a
.end method

.method public static a(Ljava/lang/String;LS/d;ILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-interface {p1, p0}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 1084
    if-gt v0, p2, :cond_7

    .line 1090
    :goto_6
    return-object p0

    .line 1088
    :cond_7
    invoke-static {p0, p1, p2, p3}, LS/r;->b(Ljava/lang/String;LS/d;ILjava/lang/String;)I

    move-result v0

    .line 1090
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

.method public static a(LS/e;LS/d;Ljava/lang/String;IIII[ILS/g;LS/c;)V
    .registers 19
    .parameter
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
    .line 134
    const/4 v3, 0x0

    .line 135
    invoke-interface {p1}, LS/d;->a()I

    move-result v2

    .line 136
    invoke-static {}, Lcom/google/googlenav/common/Config;->j()Z

    move-result v1

    .line 138
    if-eqz p0, :cond_e

    .line 139
    invoke-interface {p0, p1}, LS/e;->a(LS/d;)V

    .line 143
    :cond_e
    invoke-static {p2, p3, p4}, LS/r;->a(Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v5

    .line 146
    if-eqz v1, :cond_29

    .line 148
    array-length v4, v5

    .line 149
    const/4 v1, 0x0

    :goto_16
    div-int/lit8 v6, v4, 0x2

    if-ge v1, v6, :cond_29

    .line 150
    sub-int v6, v4, v1

    add-int/lit8 v6, v6, -0x1

    .line 151
    aget-object v7, v5, v1

    .line 152
    aget-object v8, v5, v6

    aput-object v8, v5, v1

    .line 153
    aput-object v7, v5, v6

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 158
    :cond_29
    const/4 v1, 0x0

    :goto_2a
    array-length v4, v5

    if-ge v1, v4, :cond_be

    .line 159
    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_49

    .line 160
    if-eqz p0, :cond_3f

    .line 161
    aget-object v4, v5, v1

    add-int v6, p5, v3

    invoke-interface {p1, p0, v4, v6, p6}, LS/d;->a(LS/e;Ljava/lang/String;II)V

    .line 163
    :cond_3f
    aget-object v4, v5, v1

    invoke-interface {p1, v4}, LS/d;->a(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 158
    :cond_46
    :goto_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 165
    :cond_49
    aget-object v4, v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 166
    const v4, 0xff00

    if-lt v6, v4, :cond_79

    .line 168
    const v4, 0xff00

    sub-int v4, v6, v4

    int-to-char v4, v4

    .line 170
    if-eqz p9, :cond_46

    move-object/from16 v0, p9

    invoke-interface {v0, v4}, LS/c;->a(C)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 173
    move-object/from16 v0, p9

    invoke-interface {v0, v4}, LS/c;->b(C)LS/d;

    move-result-object p1

    .line 174
    invoke-interface {p1}, LS/d;->a()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 175
    if-eqz p0, :cond_46

    .line 176
    invoke-interface {p0, p1}, LS/e;->a(LS/d;)V

    goto :goto_46

    .line 185
    :cond_79
    if-eqz p8, :cond_46

    move-object/from16 v0, p8

    invoke-interface {v0, v6}, LS/g;->a(C)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 188
    move-object/from16 v0, p8

    invoke-interface {v0, v6}, LS/g;->b(C)I

    move-result v7

    .line 189
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 190
    if-eqz p0, :cond_a4

    .line 192
    move-object/from16 v0, p8

    invoke-interface {v0, v6}, LS/g;->d(C)I

    move-result v2

    packed-switch v2, :pswitch_data_c8

    move v2, p6

    .line 203
    :goto_99
    add-int v7, p5, v3

    invoke-static {p6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p8

    invoke-interface {v0, v6, p0, v7, v2}, LS/g;->a(CLS/e;II)Z

    .line 205
    :cond_a4
    move-object/from16 v0, p8

    invoke-interface {v0, v6}, LS/g;->c(C)I

    move-result v2

    add-int/2addr v3, v2

    move v2, v4

    goto :goto_46

    .line 194
    :pswitch_ad
    sub-int v2, v4, v7

    add-int/2addr v2, p6

    .line 195
    goto :goto_99

    .line 197
    :pswitch_b1
    sub-int v2, v4, v7

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p6

    .line 198
    goto :goto_99

    .line 200
    :pswitch_b7
    invoke-interface {p1}, LS/d;->c()I

    move-result v2

    sub-int/2addr v2, v7

    add-int/2addr v2, p6

    goto :goto_99

    .line 214
    :cond_be
    if-eqz p7, :cond_c6

    .line 215
    const/4 v1, 0x0

    aput v3, p7, v1

    .line 216
    const/4 v1, 0x1

    aput v2, p7, v1

    .line 218
    :cond_c6
    return-void

    .line 192
    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_b1
        :pswitch_b7
    .end packed-switch
.end method

.method public static a(LS/e;LS/d;Ljava/lang/String;II[ILS/g;LS/c;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
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

    invoke-static/range {v0 .. v9}, LS/r;->a(LS/e;LS/d;Ljava/lang/String;IIII[ILS/g;LS/c;)V

    .line 82
    return-void
.end method

.method private static a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 714
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

.method public static a(LS/e;IIII)Z
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1206
    invoke-interface {p0}, LS/e;->b()I

    move-result v1

    .line 1207
    add-int v2, p2, p4

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, LS/e;->d()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_20

    .line 1209
    invoke-interface {p0}, LS/e;->a()I

    move-result v1

    .line 1210
    add-int v2, p1, p3

    if-ge v1, v2, :cond_20

    invoke-interface {p0}, LS/e;->c()I

    move-result v2

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_20

    const/4 v0, 0x1

    .line 1213
    :cond_20
    return v0
.end method

.method public static a(Landroid/graphics/Point;Landroid/graphics/Point;I)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1274
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 1277
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

.method public static a(LS/d;Ljava/lang/String;LS/g;LS/c;)[I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 774
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 775
    add-int/lit8 v0, v4, 0x2

    new-array v5, v0, [I

    .line 776
    const/4 v3, 0x0

    .line 777
    invoke-interface {p0}, LS/d;->a()I

    move-result v0

    .line 780
    const/4 v2, 0x0

    move-object v1, p0

    :goto_f
    if-ge v2, v4, :cond_8d

    .line 781
    add-int/lit8 v6, v2, 0x2

    .line 782
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 784
    const/4 v8, 0x1

    if-eq v7, v8, :cond_30

    .line 786
    invoke-interface {v1, v7}, LS/d;->a(C)I

    move-result v7

    aput v7, v5, v6

    .line 787
    aget v6, v5, v6

    add-int/2addr v3, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    .line 780
    :goto_28
    add-int/lit8 v0, v0, 0x1

    move v9, v0

    move v0, v1

    move-object v1, v3

    move v3, v2

    move v2, v9

    goto :goto_f

    .line 788
    :cond_30
    add-int/lit8 v7, v2, 0x1

    if-lt v7, v4, :cond_3d

    .line 789
    const/4 v7, 0x0

    aput v7, v5, v6

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    .line 792
    :cond_3d
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 793
    const v8, 0xff00

    if-lt v7, v8, :cond_6f

    .line 794
    if-eqz p3, :cond_5c

    .line 795
    const v1, 0xff00

    sub-int v1, v7, v1

    int-to-char v1, v1

    .line 796
    invoke-interface {p3, v1}, LS/c;->b(C)LS/d;

    move-result-object v1

    .line 797
    invoke-interface {v1}, LS/d;->a()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 799
    :cond_5c
    const/4 v7, 0x0

    aput v7, v5, v6

    .line 809
    :goto_5f
    aget v7, v5, v6

    add-int/2addr v3, v7

    .line 810
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 811
    add-int/lit8 v2, v2, 0x1

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v0

    move v0, v9

    goto :goto_28

    .line 800
    :cond_6f
    if-eqz p2, :cond_80

    .line 802
    invoke-interface {p2, v7}, LS/g;->c(C)I

    move-result v8

    aput v8, v5, v6

    .line 803
    invoke-interface {p2, v7}, LS/g;->b(C)I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5f

    .line 807
    :cond_80
    add-int/lit8 v7, v2, 0x2

    invoke-virtual {p1, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, LS/d;->a(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    goto :goto_5f

    .line 814
    :cond_8d
    const/4 v1, 0x0

    aput v3, v5, v1

    .line 815
    const/4 v1, 0x1

    aput v0, v5, v1

    .line 817
    return-object v5
.end method

.method public static a(IILS/d;Ljava/lang/String;IZ)[Ljava/lang/String;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    .line 233
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 304
    :goto_c
    return-object v0

    .line 237
    :cond_d
    if-lez p4, :cond_d3

    .line 243
    invoke-static {p3}, LS/r;->b(Ljava/lang/String;)I

    move-result v0

    .line 244
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3b

    .line 245
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 251
    :goto_22
    const/4 v1, 0x0

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_26
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 252
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-interface {p2, v2}, LS/d;->a(C)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 247
    :cond_3b
    invoke-interface {p2, p3}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    .line 259
    :cond_40
    const-string v7, ""

    .line 260
    sub-int v0, p0, p4

    if-le v0, v1, :cond_5b

    .line 261
    sub-int v2, p0, p4

    const/4 v3, 0x1

    sget-object v4, LS/r;->a:LS/g;

    sget-object v5, LS/r;->b:LS/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    invoke-static/range {v0 .. v6}, LS/r;->a(LS/d;Ljava/lang/String;IILS/g;LS/c;Z)[Ljava/lang/String;

    move-result-object v0

    .line 263
    array-length v1, v0

    if-lez v1, :cond_5b

    .line 264
    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v7, v0

    .line 269
    :cond_5b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p3, v0}, LS/r;->a(Ljava/lang/String;I)I

    move-result v1

    .line 272
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 273
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    const-string v2, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 277
    const v3, 0x7fffffff

    sget-object v4, LS/r;->a:LS/g;

    sget-object v5, LS/r;->b:LS/c;

    const/4 v6, 0x1

    move-object v0, p2

    move v2, p0

    invoke-static/range {v0 .. v6}, LS/r;->a(LS/d;Ljava/lang/String;IILS/g;LS/c;Z)[Ljava/lang/String;

    move-result-object v0

    .line 280
    :cond_80
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 281
    const/4 v2, 0x0

    aput-object v7, v1, v2

    .line 282
    const/4 v2, 0x0

    const/4 v3, 0x1

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 289
    :goto_8f
    array-length v1, v0

    if-le v1, p1, :cond_e4

    .line 290
    new-array v1, p1, [Ljava/lang/String;

    .line 291
    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, p1, -0x1

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
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

    .line 293
    add-int/lit8 v2, p1, -0x1

    const-string v3, "..."

    invoke-static {v0, p2, p0, v3}, LS/r;->a(Ljava/lang/String;LS/d;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 297
    :goto_c2
    if-eqz p5, :cond_e1

    .line 299
    const/4 v0, 0x0

    :goto_c5
    array-length v2, v1

    if-ge v0, v2, :cond_e1

    .line 300
    aget-object v2, v1, v0

    invoke-static {v2}, LS/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_c5

    .line 286
    :cond_d3
    const/4 v3, -0x1

    sget-object v4, LS/r;->a:LS/g;

    sget-object v5, LS/r;->b:LS/c;

    const/4 v6, 0x1

    move-object v0, p2

    move-object v1, p3

    move v2, p0

    invoke-static/range {v0 .. v6}, LS/r;->a(LS/d;Ljava/lang/String;IILS/g;LS/c;Z)[Ljava/lang/String;

    move-result-object v0

    goto :goto_8f

    :cond_e1
    move-object v0, v1

    .line 304
    goto/16 :goto_c

    :cond_e4
    move-object v1, v0

    goto :goto_c2
.end method

.method public static a(LS/d;Ljava/lang/String;IILS/g;LS/c;Z)[Ljava/lang/String;
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 570
    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    if-lez p2, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_10

    .line 571
    :cond_c
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 705
    :goto_f
    return-object v2

    .line 574
    :cond_10
    if-lez p3, :cond_28

    .line 577
    :goto_12
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {p0, p1, v0, v1}, LS/r;->a(LS/d;Ljava/lang/String;LS/g;LS/c;)[I

    move-result-object v7

    .line 585
    if-nez p6, :cond_2c

    const/4 v2, 0x0

    aget v2, v7, v2

    if-gt v2, p2, :cond_2c

    .line 586
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_f

    .line 574
    :cond_28
    const p3, 0x7fffffff

    goto :goto_12

    .line 589
    :cond_2c
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v8

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 591
    invoke-static {p1}, LS/r;->c(Ljava/lang/String;)I

    move-result v10

    .line 594
    if-nez p6, :cond_44

    if-ltz v10, :cond_de

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-gt v2, v0, :cond_de

    .line 596
    :cond_44
    const/4 v3, 0x0

    .line 597
    const/4 v2, 0x2

    .line 600
    :goto_46
    array-length v4, v7

    if-ge v2, v4, :cond_de

    .line 601
    const/4 v4, 0x0

    .line 602
    const/4 v6, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    .line 611
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

    .line 616
    :cond_66
    if-eqz p6, :cond_92

    add-int/lit8 v5, v4, -0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v11, 0xa

    if-ne v5, v11, :cond_92

    .line 618
    const/4 v2, 0x1

    .line 619
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move v6, v4

    .line 629
    :goto_77
    add-int/lit8 v4, v6, -0x2

    .line 634
    if-eqz v5, :cond_99

    if-le v4, v3, :cond_99

    add-int/lit8 v2, v4, -0x1

    :goto_7f
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 639
    :goto_83
    if-ge v4, v9, :cond_9b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, LS/r;->a(C)Z

    move-result v11

    if-eqz v11, :cond_9b

    .line 640
    add-int/lit8 v4, v4, 0x1

    goto :goto_83

    .line 622
    :cond_92
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_4e

    :cond_99
    move v2, v4

    .line 634
    goto :goto_7f

    .line 644
    :cond_9b
    if-nez v5, :cond_130

    add-int/lit8 v5, v6, -0x2

    if-ne v4, v5, :cond_130

    array-length v5, v7

    if-ge v6, v5, :cond_130

    .line 646
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v2, v5}, LS/r;->a(Ljava/lang/String;C)I

    move-result v5

    .line 647
    if-ltz v5, :cond_130

    .line 648
    add-int v4, v3, v5

    .line 649
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v4

    .line 655
    :goto_b5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, LS/r;->a(C)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 656
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_b5

    .line 659
    :cond_d7
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    add-int/lit8 v2, v3, 0x2

    .line 663
    goto/16 :goto_46

    .line 672
    :cond_de
    if-nez p6, :cond_125

    if-ltz v10, :cond_ea

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p3

    if-le v2, v0, :cond_125

    .line 674
    :cond_ea
    const/4 v3, 0x0

    .line 675
    const/4 v2, 0x2

    .line 677
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 678
    :goto_ef
    array-length v4, v7

    if-ge v2, v4, :cond_125

    .line 679
    const/4 v4, 0x0

    move v12, v4

    move v4, v2

    move v2, v12

    .line 682
    :goto_f6
    array-length v5, v7

    if-ge v4, v5, :cond_109

    aget v5, v7, v4

    add-int/2addr v5, v2

    if-le v5, p2, :cond_102

    add-int/lit8 v5, v4, -0x2

    if-ne v5, v3, :cond_109

    .line 684
    :cond_102
    add-int/lit8 v5, v4, 0x1

    aget v4, v7, v4

    add-int/2addr v2, v4

    move v4, v5

    goto :goto_f6

    .line 688
    :cond_109
    add-int/lit8 v2, v4, -0x2

    .line 689
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move v3, v2

    .line 692
    :goto_110
    if-ge v3, v9, :cond_11f

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, LS/r;->a(C)Z

    move-result v2

    if-eqz v2, :cond_11f

    .line 693
    add-int/lit8 v3, v3, 0x1

    goto :goto_110

    .line 696
    :cond_11f
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 699
    add-int/lit8 v2, v3, 0x2

    .line 700
    goto :goto_ef

    .line 703
    :cond_125
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 704
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
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 457
    .line 458
    add-int v1, p1, p2

    .line 460
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 463
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 464
    :goto_b
    if-ltz v0, :cond_2a

    if-ge v0, v1, :cond_2a

    .line 465
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v1, :cond_23

    .line 469
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_23
    add-int/lit8 p1, v0, 0x2

    .line 473
    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_b

    .line 477
    :cond_2a
    if-ge p1, v1, :cond_37

    .line 478
    if-nez p1, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_41

    .line 482
    :goto_34
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_37
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 486
    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 487
    return-object v0

    .line 478
    :cond_41
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_34
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 322
    const-string v0, " \u2003"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LS/r;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 323
    if-ne v0, v2, :cond_f

    .line 325
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 335
    :cond_e
    :goto_e
    return v0

    .line 329
    :cond_f
    const-string v1, " \u2003"

    invoke-static {p0, v1, v0}, LS/r;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 330
    if-ne v0, v2, :cond_e

    .line 332
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_e
.end method

.method private static b(Ljava/lang/String;LS/d;ILjava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1012
    invoke-interface {p1, p3}, LS/d;->a(Ljava/lang/String;)I

    move-result v0

    sub-int v0, p2, v0

    .line 1013
    invoke-static {p0, p1, v0}, LS/r;->a(Ljava/lang/String;LS/d;I)I

    move-result v0

    .line 1017
    :goto_a
    if-lez v0, :cond_1b

    .line 1018
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1019
    invoke-static {v1}, Laa/b;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1020
    add-int/lit8 v0, v0, -0x1

    .line 1024
    goto :goto_a

    .line 1025
    :cond_1b
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 396
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p2, v1, :cond_15

    .line 397
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v0, :cond_12

    .line 401
    :goto_11
    return p2

    .line 396
    :cond_12
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_15
    move p2, v0

    .line 401
    goto :goto_11
.end method

.method private static c(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 726
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 727
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v1, v2}, LS/n;->a(CC)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 731
    :goto_17
    return v0

    .line 726
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 731
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method
