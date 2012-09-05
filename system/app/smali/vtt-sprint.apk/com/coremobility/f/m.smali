.class public final Lcom/coremobility/f/m;
.super Ljava/lang/Object;


# static fields
.field protected static a:Lcom/coremobility/f/m;

.field protected static b:Lcom/coremobility/g/b;

.field protected static c:Lcom/coremobility/f/g;

.field protected static d:[Lcom/coremobility/f/g;

.field protected static e:[Lcom/coremobility/f/n;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x2

    sput-object v0, Lcom/coremobility/f/m;->a:Lcom/coremobility/f/m;

    sput-object v0, Lcom/coremobility/f/m;->c:Lcom/coremobility/f/g;

    sput-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/coremobility/f/n;

    new-instance v1, Lcom/coremobility/f/n;

    new-instance v2, Lcom/coremobility/f/f;

    invoke-direct {v2, v4}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v3, v5, [I

    fill-array-data v3, :array_8e

    invoke-direct {v1, v2, v3}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/coremobility/f/n;

    new-instance v2, Lcom/coremobility/f/f;

    invoke-direct {v2, v6}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v3, v5, [I

    fill-array-data v3, :array_96

    invoke-direct {v1, v2, v3}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/f/n;

    new-instance v2, Lcom/coremobility/f/f;

    invoke-direct {v2, v5}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v3, v5, [I

    fill-array-data v3, :array_9e

    invoke-direct {v1, v2, v3}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/f/n;

    new-instance v2, Lcom/coremobility/f/f;

    invoke-direct {v2, v7}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v3, v5, [I

    fill-array-data v3, :array_a6

    invoke-direct {v1, v2, v3}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/f/n;

    new-instance v3, Lcom/coremobility/f/f;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v4, v5, [I

    fill-array-data v4, :array_ae

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/f/n;

    new-instance v3, Lcom/coremobility/f/f;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v4, v5, [I

    fill-array-data v4, :array_b6

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/f/n;

    new-instance v3, Lcom/coremobility/f/f;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/coremobility/f/f;-><init>(I)V

    new-array v4, v5, [I

    fill-array-data v4, :array_be

    invoke-direct {v2, v3, v4}, Lcom/coremobility/f/n;-><init>(Lcom/coremobility/f/f;[I)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/f/m;->e:[Lcom/coremobility/f/n;

    return-void

    :array_8e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_96
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_9e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_ae
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_b6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_be
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/coremobility/f/f;
    .registers 2

    if-ltz p0, :cond_19

    sget-object v0, Lcom/coremobility/f/m;->e:[Lcom/coremobility/f/n;

    array-length v0, v0

    if-ge p0, v0, :cond_19

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ltz p0, :cond_1b

    sget-object v0, Lcom/coremobility/f/m;->e:[Lcom/coremobility/f/n;

    array-length v0, v0

    if-ge p0, v0, :cond_1b

    sget-object v0, Lcom/coremobility/f/m;->e:[Lcom/coremobility/f/n;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/coremobility/f/n;->a:Lcom/coremobility/f/f;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_8

    :cond_1b
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public static a(Lcom/coremobility/f/l;)Lcom/coremobility/f/f;
    .registers 2

    invoke-virtual {p0}, Lcom/coremobility/f/l;->a()I

    move-result v0

    invoke-static {v0}, Lcom/coremobility/f/m;->a(I)Lcom/coremobility/f/f;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/coremobility/f/m;
    .registers 3

    sget-object v0, Lcom/coremobility/f/m;->a:Lcom/coremobility/f/m;

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    const-string v1, "Creating CM_NetMgr instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/f/m;

    invoke-direct {v0}, Lcom/coremobility/f/m;-><init>()V

    sput-object v0, Lcom/coremobility/f/m;->a:Lcom/coremobility/f/m;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    sput-object v0, Lcom/coremobility/f/m;->b:Lcom/coremobility/g/b;

    :cond_1a
    sget-object v0, Lcom/coremobility/f/m;->a:Lcom/coremobility/f/m;

    return-object v0
.end method

.method public static a(II)V
    .registers 5

    sget-object v0, Lcom/coremobility/f/m;->b:Lcom/coremobility/g/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public static b()Lcom/coremobility/f/g;
    .registers 1

    sget-object v0, Lcom/coremobility/f/m;->c:Lcom/coremobility/f/g;

    return-object v0
.end method

.method public static b(II)Z
    .registers 9

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/coremobility/f/m;->a(I)Lcom/coremobility/f/f;

    move-result-object v1

    if-eqz v1, :cond_e

    packed-switch p1, :pswitch_data_50

    :goto_a
    :pswitch_a
    sget-object v2, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    if-nez v2, :cond_22

    :cond_e
    :goto_e
    return v0

    :pswitch_f
    move p1, v0

    goto :goto_a

    :pswitch_11
    const/4 p1, 0x4

    goto :goto_a

    :pswitch_13
    const/4 p1, 0x2

    goto :goto_a

    :pswitch_15
    const/4 p1, 0x6

    goto :goto_a

    :pswitch_17
    const/4 p1, 0x7

    goto :goto_a

    :pswitch_19
    const/16 p1, 0x8

    goto :goto_a

    :pswitch_1c
    const/16 p1, 0x9

    goto :goto_a

    :pswitch_1f
    const/16 p1, 0xa

    goto :goto_a

    :cond_22
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    invoke-static {}, Lcom/coremobility/integration/e/e;->c()I

    move-result v3

    move v1, v0

    :goto_2a
    array-length v4, v2

    if-ge v1, v4, :cond_4d

    aget-object v4, v2, v1

    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Lcom/coremobility/f/g;->g()I

    move-result v5

    if-ne v5, v3, :cond_4a

    const/4 v0, 0x1

    invoke-virtual {v4, p1}, Lcom/coremobility/f/g;->a(I)Z

    move-result v1

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_3f
    if-nez v1, :cond_e

    sget-object v1, Lcom/coremobility/f/m;->c:Lcom/coremobility/f/g;

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1}, Lcom/coremobility/f/g;->a(I)Z

    move-result v0

    goto :goto_e

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4d
    move v1, v0

    goto :goto_3f

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_f
        :pswitch_a
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_19
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public static c()[Lcom/coremobility/f/g;
    .registers 1

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    return-object v0
.end method

.method public static d()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/coremobility/f/g;

    sput-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/f/d;->a()Lcom/coremobility/f/d;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/coremobility/f/g;->d()V

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aget-object v0, v0, v2

    sput-object v0, Lcom/coremobility/f/m;->c:Lcom/coremobility/f/g;

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    invoke-static {}, Lcom/coremobility/f/o;->a()Lcom/coremobility/f/o;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/coremobility/f/g;->d()V

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    return-void
.end method

.method public static e()V
    .registers 3

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_6
    sget-object v1, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    sget-object v1, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    sget-object v1, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/f/g;->e()V

    :cond_18
    sget-object v1, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1f
    sput-object v2, Lcom/coremobility/f/m;->d:[Lcom/coremobility/f/g;

    sput-object v2, Lcom/coremobility/f/m;->c:Lcom/coremobility/f/g;

    sput-object v2, Lcom/coremobility/f/m;->a:Lcom/coremobility/f/m;

    return-void
.end method

.method public static f()I
    .registers 1

    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    invoke-static {}, Lcom/coremobility/integration/e/e;->c()I

    move-result v0

    return v0
.end method

.method public static g()Z
    .registers 1

    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    invoke-static {}, Lcom/coremobility/integration/e/e;->d()Z

    move-result v0

    return v0
.end method
