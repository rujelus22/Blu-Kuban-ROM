.class public Lcom/google/googlenav/ag;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/google/googlenav/ag;->a:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/google/googlenav/ag;->b:[I

    return-void

    :array_12
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x27t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_36
    .array-data 0x4
        0x23t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILam/b;Z)V
    .registers 10

    const/16 v6, 0x29

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v2, Lam/b;

    sget-object v1, LbD/dR;->a:Lam/e;

    invoke-direct {v2, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v2, v3, v3}, Lam/b;->a(IZ)V

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v3}, Lam/b;->b(IZ)V

    const/4 v1, 0x3

    invoke-virtual {v2, v1, v3}, Lam/b;->b(IZ)V

    invoke-virtual {v2, v4, v0}, Lam/b;->b(IZ)V

    sparse-switch p0, :sswitch_data_e8

    :goto_1e
    return-void

    :sswitch_1f
    const/16 v1, 0x1d

    invoke-virtual {p1, v1, v3}, Lam/b;->b(IZ)V

    const/16 v1, 0x28

    invoke-virtual {p1, v1, v3}, Lam/b;->b(IZ)V

    :goto_29
    sget-object v1, Lcom/google/googlenav/ag;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_38

    sget-object v1, Lcom/google/googlenav/ag;->a:[I

    aget v1, v1, v0

    invoke-virtual {p1, v6, v1}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    :cond_38
    const/16 v0, 0x38

    invoke-virtual {p1, v0, v2}, Lam/b;->b(ILam/b;)V

    goto :goto_1e

    :sswitch_3e
    const/16 v1, 0x28

    invoke-virtual {p1, v1, v3}, Lam/b;->b(IZ)V

    move v1, v0

    :goto_44
    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_53

    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v6, v3}, Lam/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    :cond_53
    :goto_53
    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_62

    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v6, v1}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_62
    const/16 v0, 0x2a

    invoke-virtual {p1, v0, v2}, Lam/b;->b(ILam/b;)V

    goto :goto_1e

    :sswitch_68
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v3}, Lam/b;->b(IZ)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v3}, Lam/b;->b(IZ)V

    if-eqz p2, :cond_82

    move v1, v0

    :goto_73
    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_82

    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v4, v3}, Lam/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_82
    :goto_82
    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_91

    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v4, v1}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    :cond_91
    invoke-virtual {p1, v5, v2}, Lam/b;->b(ILam/b;)V

    goto :goto_1e

    :sswitch_95
    if-eqz p2, :cond_a7

    move v1, v0

    :goto_98
    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_a7

    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    aget v3, v3, v1

    invoke-virtual {p1, v5, v3}, Lam/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_a7
    :goto_a7
    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_b6

    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    aget v1, v1, v0

    invoke-virtual {p1, v5, v1}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a7

    :cond_b6
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lam/b;->b(ILam/b;)V

    goto/16 :goto_1e

    :sswitch_bc
    if-eqz p2, :cond_d0

    move v1, v0

    :goto_bf
    sget-object v3, Lcom/google/googlenav/ag;->a:[I

    array-length v3, v3

    if-ge v1, v3, :cond_d0

    const/16 v3, 0x9

    sget-object v4, Lcom/google/googlenav/ag;->a:[I

    aget v4, v4, v1

    invoke-virtual {p1, v3, v4}, Lam/b;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_bf

    :cond_d0
    :goto_d0
    sget-object v1, Lcom/google/googlenav/ag;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_e1

    const/16 v1, 0x9

    sget-object v3, Lcom/google/googlenav/ag;->b:[I

    aget v3, v3, v0

    invoke-virtual {p1, v1, v3}, Lam/b;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_d0

    :cond_e1
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lam/b;->b(ILam/b;)V

    goto/16 :goto_1e

    :sswitch_data_e8
    .sparse-switch
        0x25 -> :sswitch_3e
        0x2e -> :sswitch_1f
        0x50 -> :sswitch_68
        0x5d -> :sswitch_bc
        0x77 -> :sswitch_95
    .end sparse-switch
.end method
