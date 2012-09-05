.class public Lcom/google/googlenav/b;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/a;)Lcom/google/googlenav/bb;
    .registers 5

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bc;->a(Z)Lcom/google/googlenav/bc;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/a;->f()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The passed in activity has no location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->d(Lam/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :goto_45
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    :cond_52
    invoke-virtual {v1}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    return-object v0

    :cond_57
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->e(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_6f

    if-eqz v2, :cond_67

    invoke-virtual {v1, v2}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    goto :goto_45

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for home Check-in without a reverse geocode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    invoke-virtual {p0}, Lcom/google/googlenav/a;->a()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/b;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    if-eqz v2, :cond_92

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " near "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_92
    invoke-virtual {v1, v0}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    goto :goto_45

    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not create query for a place with no display name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(J)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/google/googlenav/b;->a(JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(JZZ)Ljava/lang/String;
    .registers 13

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v5, 0x1

    cmp-long v2, p0, v0

    if-gez v2, :cond_b

    move-wide p0, v0

    :cond_b
    const-wide/32 v2, 0x5265c00

    div-long v2, p0, v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_44

    if-eqz p3, :cond_35

    if-eqz p2, :cond_2b

    const/16 v0, 0x193

    :goto_1a
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    cmp-long v0, v2, v5

    if-nez v0, :cond_32

    const/16 v0, 0x192

    goto :goto_1a

    :cond_32
    const/16 v0, 0x191

    goto :goto_1a

    :cond_35
    if-eqz p2, :cond_3a

    const/16 v0, 0x128

    goto :goto_1a

    :cond_3a
    cmp-long v0, v2, v5

    if-nez v0, :cond_41

    const/16 v0, 0x127

    goto :goto_1a

    :cond_41
    const/16 v0, 0x126

    goto :goto_1a

    :cond_44
    const-wide/32 v2, 0x36ee80

    div-long v2, p0, v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_7d

    if-eqz p3, :cond_6e

    if-eqz p2, :cond_64

    const/16 v0, 0x196

    :goto_53
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_64
    cmp-long v0, v2, v5

    if-nez v0, :cond_6b

    const/16 v0, 0x195

    goto :goto_53

    :cond_6b
    const/16 v0, 0x194

    goto :goto_53

    :cond_6e
    if-eqz p2, :cond_73

    const/16 v0, 0x148

    goto :goto_53

    :cond_73
    cmp-long v0, v2, v5

    if-nez v0, :cond_7a

    const/16 v0, 0x147

    goto :goto_53

    :cond_7a
    const/16 v0, 0x146

    goto :goto_53

    :cond_7d
    const-wide/32 v0, 0xea60

    div-long v1, p0, v0

    cmp-long v0, v1, v5

    if-gtz v0, :cond_8d

    const/16 v0, 0x11a

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_8d
    if-eqz p3, :cond_a7

    if-eqz p2, :cond_a4

    const/16 v0, 0x198

    :goto_93
    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v8, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2a

    :cond_a4
    const/16 v0, 0x197

    goto :goto_93

    :cond_a7
    if-eqz p2, :cond_ac

    const/16 v0, 0x151

    goto :goto_93

    :cond_ac
    const/16 v0, 0x150

    goto :goto_93
.end method

.method public static a(Lam/b;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0x11

    const/4 v4, 0x2

    if-nez p0, :cond_7

    const/4 v0, 0x0

    :goto_6
    return-object v0

    :cond_7
    invoke-virtual {p0, v5}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_27

    invoke-virtual {p0, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v4}, Lam/b;->k(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v2, v4}, Lam/b;->d(I)I

    move-result v3

    if-nez v3, :cond_24

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_27
    invoke-static {p0, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static b(Lam/b;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x3

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    invoke-static {p0}, Lcom/google/googlenav/b;->d(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/b;->c(Lam/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    goto :goto_4
.end method

.method public static c(Lam/b;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v2}, Lam/b;->l(I)I

    move-result v0

    if-lt v0, v1, :cond_d

    invoke-static {p0, v2, v1}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static d(Lam/b;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lam/b;->l(I)I

    move-result v0

    if-ltz v0, :cond_d

    const/4 v0, 0x0

    invoke-static {p0, v1, v0}, Lam/g;->a(Lam/b;II)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static e(Lam/b;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    goto :goto_3
.end method

.method public static f(Lam/b;)LaJ/B;
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    invoke-static {p0}, Lcom/google/googlenav/ui/be;->a(Lam/b;)LaJ/B;

    move-result-object v0

    goto :goto_3
.end method
