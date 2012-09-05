.class public final Lcom/coremobility/f/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/integration/v;


# static fields
.field static final i:I

.field static final j:I

.field static final k:I


# instance fields
.field a:Lcom/coremobility/integration/v;

.field b:I

.field c:I

.field d:I

.field e:Lcom/coremobility/f/g;

.field f:Lcom/coremobility/f/m;

.field g:Lcom/coremobility/f/f;

.field h:Lcom/coremobility/g/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/coremobility/g/b;->a(I)I

    move-result v0

    sput v0, Lcom/coremobility/f/l;->i:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/coremobility/f/l;->j:I

    sget v0, Lcom/coremobility/f/l;->i:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/coremobility/f/l;->k:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/coremobility/f/l;->d:I

    iput-object v1, p0, Lcom/coremobility/f/l;->e:Lcom/coremobility/f/g;

    iput v0, p0, Lcom/coremobility/f/l;->b:I

    iput v0, p0, Lcom/coremobility/f/l;->c:I

    iput-object v1, p0, Lcom/coremobility/f/l;->f:Lcom/coremobility/f/m;

    iput-object v1, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    return-void
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/coremobility/f/m;->g()Z

    move-result v0

    return v0
.end method

.method private c(I)V
    .registers 8

    const/16 v5, 0xc

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/f/l;->b:I

    if-eq v0, v4, :cond_32

    iget v0, p0, Lcom/coremobility/f/l;->b:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_30

    iget v0, p0, Lcom/coremobility/f/l;->b:I

    const/4 v3, 0x4

    if-gt v0, v3, :cond_30

    move v0, v1

    :goto_14
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iput v4, p0, Lcom/coremobility/f/l;->b:I

    iput v2, p0, Lcom/coremobility/f/l;->d:I

    const-string v0, "OnActivate %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/f/l;->j:I

    invoke-virtual {v0, v1, p0, p1, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :goto_2f
    return-void

    :cond_30
    move v0, v2

    goto :goto_14

    :cond_32
    const-string v0, "OnActivate ignored %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2f
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/coremobility/f/l;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 7

    const/4 v4, 0x0

    iget v0, p0, Lcom/coremobility/f/l;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_18

    if-nez p1, :cond_c

    invoke-direct {p0, v4}, Lcom/coremobility/f/l;->c(I)V

    :goto_b
    return-void

    :cond_c
    iget v0, p0, Lcom/coremobility/f/l;->d:I

    if-ne v0, p1, :cond_14

    invoke-direct {p0, p1}, Lcom/coremobility/f/l;->c(I)V

    goto :goto_b

    :cond_14
    invoke-virtual {p0, p1}, Lcom/coremobility/f/l;->b(I)V

    goto :goto_b

    :cond_18
    const/16 v0, 0xc

    const-string v1, "OnMakeNetGranted state: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coremobility/f/l;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 10

    if-ne p2, p0, :cond_36

    const/16 v0, 0xc

    const-string v1, "Event %d %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    monitor-enter p0

    :try_start_1b
    sget v0, Lcom/coremobility/f/l;->j:I

    if-ne p1, v0, :cond_28

    iget-object v0, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    invoke-interface {v0, p3}, Lcom/coremobility/integration/v;->a(I)V

    :cond_28
    sget v0, Lcom/coremobility/f/l;->k:I

    if-ne p1, v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    invoke-interface {v0, p3}, Lcom/coremobility/integration/v;->b(I)V

    :cond_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_37

    :cond_36
    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/coremobility/integration/v;I)V
    .registers 11

    const/16 v7, 0xc

    const/4 v6, 0x2

    const/16 v3, 0x79

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    iput p2, p0, Lcom/coremobility/f/l;->c:I

    iget v0, p0, Lcom/coremobility/f/l;->b:I

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/coremobility/f/l;->f:Lcom/coremobility/f/m;

    if-nez v0, :cond_19

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/l;->f:Lcom/coremobility/f/m;

    :cond_19
    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    if-nez v0, :cond_23

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    :cond_23
    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    sget v4, Lcom/coremobility/f/l;->i:I

    invoke-virtual {v0, v4, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    iput v1, p0, Lcom/coremobility/f/l;->b:I

    :cond_2c
    iget v0, p0, Lcom/coremobility/f/l;->b:I

    if-ne v0, v1, :cond_4b

    invoke-static {p0}, Lcom/coremobility/f/m;->a(Lcom/coremobility/f/l;)Lcom/coremobility/f/f;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/l;->g:Lcom/coremobility/f/f;

    iget-object v0, p0, Lcom/coremobility/f/l;->g:Lcom/coremobility/f/f;

    if-eqz v0, :cond_62

    const-string v0, "%d reg"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/coremobility/f/l;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v6, p0, Lcom/coremobility/f/l;->b:I

    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/coremobility/f/l;->b:I

    if-ne v0, v6, :cond_61

    iget-object v0, p0, Lcom/coremobility/f/l;->g:Lcom/coremobility/f/f;

    if-eqz v0, :cond_75

    move v0, v1

    :goto_54
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-static {}, Lcom/coremobility/f/m;->c()[Lcom/coremobility/f/g;

    move-result-object v4

    if-nez v4, :cond_77

    move v0, v3

    :cond_5e
    :goto_5e
    invoke-virtual {p0, v0}, Lcom/coremobility/f/l;->b(I)V

    :cond_61
    return-void

    :cond_62
    const-string v0, "%d failed reg"

    new-array v4, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/coremobility/f/l;->c:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/coremobility/f/l;->c(I)V

    goto :goto_4b

    :cond_75
    move v0, v2

    goto :goto_54

    :cond_77
    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    invoke-static {}, Lcom/coremobility/integration/e/e;->c()I

    move-result v5

    move v0, v2

    :goto_7f
    array-length v6, v4

    if-ge v0, v6, :cond_a4

    aget-object v6, v4, v0

    if-eqz v6, :cond_a1

    invoke-virtual {v6}, Lcom/coremobility/f/g;->g()I

    move-result v7

    if-ne v7, v5, :cond_a1

    invoke-virtual {v6, p0}, Lcom/coremobility/f/g;->a(Lcom/coremobility/f/l;)I

    move-result v0

    iput-object v6, p0, Lcom/coremobility/f/l;->e:Lcom/coremobility/f/g;

    :goto_92
    if-nez v1, :cond_5e

    invoke-static {}, Lcom/coremobility/f/m;->b()Lcom/coremobility/f/g;

    move-result-object v1

    if-eqz v1, :cond_5e

    invoke-virtual {v1, p0}, Lcom/coremobility/f/g;->a(Lcom/coremobility/f/l;)I

    move-result v0

    iput-object v1, p0, Lcom/coremobility/f/l;->e:Lcom/coremobility/f/g;

    goto :goto_5e

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_7f

    :cond_a4
    move v1, v2

    move v0, v3

    goto :goto_92
.end method

.method public final b(I)V
    .registers 8

    const/4 v5, 0x4

    const/16 v4, 0xc

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/coremobility/f/l;->b:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_23

    const-string v2, "OnNetChange %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    sget v2, Lcom/coremobility/f/l;->k:I

    invoke-virtual {v0, v2, p0, p1, v1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_22
    :goto_22
    return-void

    :cond_23
    sparse-switch p1, :sswitch_data_72

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :sswitch_29
    invoke-direct {p0, p1}, Lcom/coremobility/f/l;->c(I)V

    goto :goto_22

    :sswitch_2d
    invoke-direct {p0, p1}, Lcom/coremobility/f/l;->c(I)V

    goto :goto_22

    :sswitch_31
    const-string v2, "Queued %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/f/l;->b:I

    goto :goto_22

    :sswitch_42
    iget v2, p0, Lcom/coremobility/f/l;->d:I

    if-eq v2, p1, :cond_68

    iput p1, p0, Lcom/coremobility/f/l;->d:I

    iput v5, p0, Lcom/coremobility/f/l;->b:I

    iget-object v2, p0, Lcom/coremobility/f/l;->e:Lcom/coremobility/f/g;

    if-nez v2, :cond_55

    move v2, v1

    :goto_4f
    if-nez v2, :cond_5a

    invoke-direct {p0, p1}, Lcom/coremobility/f/l;->c(I)V

    goto :goto_22

    :cond_55
    invoke-virtual {v2, p0, p1}, Lcom/coremobility/f/g;->a(Lcom/coremobility/integration/v;I)Z

    move-result v2

    goto :goto_4f

    :cond_5a
    const-string v2, "Activating %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22

    :cond_68
    iget v2, p0, Lcom/coremobility/f/l;->b:I

    if-ne v2, v5, :cond_70

    :goto_6c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_22

    :cond_70
    move v0, v1

    goto :goto_6c

    :sswitch_data_72
    .sparse-switch
        0x0 -> :sswitch_2d
        0x1 -> :sswitch_29
        0x2 -> :sswitch_29
        0x3 -> :sswitch_31
        0x4 -> :sswitch_31
        0x5 -> :sswitch_42
        0x6 -> :sswitch_29
        0x7 -> :sswitch_42
        0x8 -> :sswitch_42
        0xa -> :sswitch_42
        0x64 -> :sswitch_31
    .end sparse-switch
.end method

.method public final c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/coremobility/f/l;->b:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_11

    iget-object v0, p0, Lcom/coremobility/f/l;->g:Lcom/coremobility/f/f;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/f/l;->e:Lcom/coremobility/f/g;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p0}, Lcom/coremobility/f/g;->b(Lcom/coremobility/f/l;)V

    :cond_11
    iget v0, p0, Lcom/coremobility/f/l;->b:I

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    if-eqz v0, :cond_21

    sget v0, Lcom/coremobility/f/l;->i:I

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/f/l;->h:Lcom/coremobility/g/b;

    :cond_21
    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/f/l;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/f/l;->a:Lcom/coremobility/integration/v;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/f/l;->f:Lcom/coremobility/f/m;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/f/l;->g:Lcom/coremobility/f/f;

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
