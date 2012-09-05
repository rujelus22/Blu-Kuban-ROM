.class public Lcom/google/googlenav/ui/bf;
.super Ljava/lang/Object;


# static fields
.field private static a:Lah/d;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lah/e;IIIIIZ)V
    .registers 8

    if-nez p5, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-interface {p0, p1}, Lah/e;->b(I)Z

    if-eqz p6, :cond_10

    invoke-interface {p0, p2, p3, p4, p5}, Lah/e;->b(IIII)V

    :goto_b
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lah/e;->a(I)V

    goto :goto_2

    :cond_10
    invoke-interface {p0, p2, p3, p5, p4}, Lah/e;->b(IIII)V

    goto :goto_b
.end method

.method public static a(Lah/e;I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/16 v3, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/google/googlenav/ui/bf;->a:Lah/d;

    if-nez v0, :cond_10

    const/high16 v0, -0x1

    invoke-static {v5, v4, v0}, Lcom/google/googlenav/I;->a(IZI)Lah/d;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/bf;->a:Lah/d;

    :cond_10
    sget-object v0, Lcom/google/googlenav/ui/bf;->a:Lah/d;

    invoke-interface {p0, v0}, Lah/e;->a(Lah/d;)V

    sget-object v0, Lcom/google/googlenav/ui/bf;->a:Lah/d;

    invoke-interface {v0}, Lah/d;->a()I

    move-result v7

    array-length v1, p2

    move v0, v4

    move v6, v4

    :goto_1e
    if-ge v0, v1, :cond_29

    aget-object v2, p2, v0

    invoke-interface {p0, v2, v3, v6}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v7

    goto :goto_1e

    :cond_29
    array-length v1, p3

    move v0, v4

    :goto_2b
    if-ge v0, v1, :cond_36

    aget-object v2, p3, v0

    invoke-interface {p0, v2, v3, v6}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v6, v7

    goto :goto_2b

    :cond_36
    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bw;->O()I

    move-result v0

    add-int/lit8 v0, v0, -0x19

    const v1, 0x7fffffff

    sget-object v2, Lcom/google/googlenav/ui/bf;->a:Lah/d;

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lah/r;->a(IILah/d;Ljava/lang/String;IZ)[Ljava/lang/String;

    move-result-object v2

    sub-int v0, p1, v6

    div-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    array-length v1, v2

    sub-int v0, v1, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v6

    :goto_57
    array-length v3, v2

    if-ge v0, v3, :cond_6f

    rem-int/lit8 v3, v0, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-interface {p0, v3, v4, v1}, Lah/e;->a(Ljava/lang/String;II)V

    aget-object v3, v2, v0

    const/16 v4, 0x19

    invoke-interface {p0, v3, v4, v1}, Lah/e;->a(Ljava/lang/String;II)V

    add-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    :cond_6f
    return-void
.end method
