.class public Lar/t;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Laf/h;Laf/h;)V
    .registers 11

    invoke-virtual {p0}, Laf/h;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p0, v0}, Laf/h;->a(I)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Laf/h;->a(I)J

    move-result-wide v4

    add-int/lit8 v1, v0, -0x1

    :goto_13
    if-ltz v1, :cond_32

    invoke-virtual {p1, v1}, Laf/h;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_32

    invoke-virtual {p0, v1}, Laf/h;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v6, v7, v8}, Laf/h;->a(JI)V

    invoke-virtual {p1, v1}, Laf/h;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v6, v7, v8}, Laf/h;->a(JI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_32
    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0, v2, v3, v1}, Laf/h;->a(JI)V

    invoke-virtual {p1, v4, v5, v1}, Laf/h;->a(JI)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Laf/h;->b()I

    move-result v1

    if-lt v0, v1, :cond_9

    goto :goto_7
.end method

.method public static b(Laf/h;Laf/h;)V
    .registers 11

    invoke-virtual {p0}, Laf/h;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    const/4 v0, 0x1

    :cond_9
    invoke-virtual {p0, v0}, Laf/h;->a(I)J

    move-result-wide v2

    invoke-virtual {p1, v0}, Laf/h;->a(I)J

    move-result-wide v4

    add-int/lit8 v1, v0, -0x1

    :goto_13
    if-ltz v1, :cond_32

    invoke-virtual {p1, v1}, Laf/h;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_32

    invoke-virtual {p0, v1}, Laf/h;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v6, v7, v8}, Laf/h;->a(JI)V

    invoke-virtual {p1, v1}, Laf/h;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v6, v7, v8}, Laf/h;->a(JI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    :cond_32
    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_3c

    invoke-virtual {p0, v2, v3, v1}, Laf/h;->a(JI)V

    invoke-virtual {p1, v4, v5, v1}, Laf/h;->a(JI)V

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Laf/h;->b()I

    move-result v1

    if-lt v0, v1, :cond_9

    goto :goto_7
.end method
