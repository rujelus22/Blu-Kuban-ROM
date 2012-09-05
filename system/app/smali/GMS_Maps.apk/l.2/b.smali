.class public Ll/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)F
    .registers 4

    if-lez p0, :cond_6

    int-to-float v0, p1

    int-to-float v1, p0

    div-float/2addr v0, v1

    :goto_5
    return v0

    :cond_6
    const/high16 v0, -0x4080

    goto :goto_5
.end method

.method public static a(LW/a;I)V
    .registers 3

    :goto_0
    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, LW/a;->i(I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LW/a;->f(II)V

    goto :goto_0

    :cond_d
    return-void
.end method

.method public static a(LW/a;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    invoke-virtual {p0, v0}, LW/a;->c(I)I

    move-result v1

    if-nez v1, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/io/File;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    :cond_c
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    move v0, v1

    :goto_14
    if-ge v3, v5, :cond_26

    aget-object v6, v4, v3

    if-eqz v0, :cond_24

    invoke-static {v6}, Ll/b;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    move v0, v2

    goto :goto_21

    :cond_26
    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_2e
    move v1, v2

    goto :goto_c
.end method

.method public static b(LW/a;)Z
    .registers 5

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p0}, Ll/b;->a(LW/a;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-virtual {p0, v3}, LW/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0, v3}, LW/a;->f(I)LW/a;

    move-result-object v2

    invoke-virtual {v2, v1}, LW/a;->c(I)I

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_9
.end method
