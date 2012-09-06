.class public Lcom/estrongs/android/pop/bt/vcard/a;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B

.field private static c:[B


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x40

    const/4 v1, 0x0

    new-array v0, v5, [C

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    const/16 v0, 0x41

    move v2, v1

    :goto_a
    const/16 v3, 0x5a

    if-le v0, v3, :cond_3f

    const/16 v0, 0x61

    :goto_10
    const/16 v3, 0x7a

    if-le v0, v3, :cond_4a

    const/16 v0, 0x30

    :goto_16
    const/16 v3, 0x39

    if-le v0, v3, :cond_55

    sget-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x2b

    aput-char v4, v0, v2

    sget-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    add-int/lit8 v2, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->b:[B

    move v0, v1

    :goto_31
    sget-object v2, Lcom/estrongs/android/pop/bt/vcard/a;->b:[B

    array-length v2, v2

    if-lt v0, v2, :cond_60

    :goto_36
    if-lt v1, v5, :cond_68

    const/16 v0, 0xff

    new-array v0, v0, [B

    sput-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->c:[B

    return-void

    :cond_3f
    sget-object v4, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_a

    :cond_4a
    sget-object v4, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_10

    :cond_55
    sget-object v4, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    add-int/lit8 v3, v2, 0x1

    aput-char v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v2, v3

    goto :goto_16

    :cond_60
    sget-object v2, Lcom/estrongs/android/pop/bt/vcard/a;->b:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_68
    sget-object v0, Lcom/estrongs/android/pop/bt/vcard/a;->b:[B

    sget-object v2, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    aget-char v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_36
.end method

.method public static a(Ljava/lang/Appendable;[BILjava/lang/String;)V
    .registers 13

    const/4 v1, 0x0

    array-length v6, p1

    move v5, v1

    move v2, v1

    move v4, v1

    move v3, v1

    :goto_6
    if-lt v5, v6, :cond_17

    div-int/lit8 v0, v4, 0x8

    rsub-int/lit8 v0, v0, 0x3

    rem-int/lit8 v0, v0, 0x3

    move v1, v2

    move v2, v4

    :cond_10
    :goto_10
    if-gtz v2, :cond_4f

    :goto_12
    add-int/lit8 v1, v0, -0x1

    if-gtz v0, :cond_68

    return-void

    :cond_17
    aget-byte v0, p1, v5

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v2, v4, 0x8

    const/16 v4, 0x18

    if-ne v2, v4, :cond_2e

    move v2, v1

    move v8, v0

    move v0, v3

    move v3, v8

    :goto_28
    const/4 v4, 0x4

    if-lt v2, v4, :cond_34

    move v2, v1

    move v3, v0

    move v0, v1

    :cond_2e
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    move v2, v0

    goto :goto_6

    :cond_34
    sget-object v4, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    ushr-int/lit8 v7, v3, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-char v4, v4, v7

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v0, 0x1

    rem-int v0, v4, p2

    if-nez v0, :cond_4a

    invoke-interface {p0, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_28

    :cond_4f
    sget-object v4, Lcom/estrongs/android/pop/bt/vcard/a;->a:[C

    ushr-int/lit8 v5, v1, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v4, v4, v5

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    shl-int/lit8 v1, v1, 0x6

    add-int/lit8 v2, v2, -0x6

    add-int/lit8 v3, v3, 0x1

    rem-int v4, v3, p2

    if-nez v4, :cond_10

    invoke-interface {p0, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_10

    :cond_68
    const/16 v0, 0x3d

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move v0, v1

    goto :goto_12
.end method
