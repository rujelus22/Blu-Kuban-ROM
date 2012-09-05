.class public abstract Lcom/coremobility/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/f;


# instance fields
.field protected n:[Lcom/coremobility/integration/x;

.field protected o:I

.field protected p:Lcom/coremobility/f/h;

.field public q:[Lcom/coremobility/f/k;

.field protected r:I


# direct methods
.method protected constructor <init>(I)V
    .registers 11

    const/16 v8, 0xc

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Lcom/coremobility/f/k;

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/f/k;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/coremobility/f/k;

    invoke-direct {v1, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v4

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0x8

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/coremobility/f/k;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v1, v0, v8

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/f/k;

    const/16 v3, 0xa

    invoke-direct {v2, p0, v3, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/f/k;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3, v5}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v7, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v5, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v7}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v7, v6}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v4, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/coremobility/f/k;

    invoke-direct {v2, p0, v8, v4}, Lcom/coremobility/f/k;-><init>(Lcom/coremobility/f/g;II)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/f/g;->q:[Lcom/coremobility/f/k;

    iput p1, p0, Lcom/coremobility/f/g;->o:I

    iput v6, p0, Lcom/coremobility/f/g;->r:I

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/coremobility/integration/x;

    iput-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    return-void
.end method

.method private a(ILcom/coremobility/f/j;)V
    .registers 9

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    iget-object v1, p0, Lcom/coremobility/f/g;->q:[Lcom/coremobility/f/k;

    mul-int/lit8 v2, v0, 0x8

    add-int/2addr v2, p1

    aget-object v1, v1, v2

    iget v2, v1, Lcom/coremobility/f/k;->b:I

    iput v2, p0, Lcom/coremobility/f/g;->r:I

    const/16 v2, 0xc

    const-string v3, "%s + %s -> %s, %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/coremobility/f/g;->d(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_5a

    const-string v0, "undef"

    :goto_21
    aput-object v0, v4, v5

    const/4 v0, 0x2

    iget v5, p0, Lcom/coremobility/f/g;->r:I

    invoke-static {v5}, Lcom/coremobility/f/g;->d(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x3

    iget v5, v1, Lcom/coremobility/f/k;->a:I

    invoke-static {v5}, Lcom/coremobility/f/g;->c(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, v1, Lcom/coremobility/f/k;->a:I

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->c(ILcom/coremobility/f/j;)V

    invoke-virtual {p0}, Lcom/coremobility/f/g;->f()V

    return-void

    :pswitch_41
    const-string v0, "Activated"

    goto :goto_21

    :pswitch_44
    const-string v0, "BlockNow"

    goto :goto_21

    :pswitch_47
    const-string v0, "DelayedBlock"

    goto :goto_21

    :pswitch_4a
    const-string v0, "NoBlocks"

    goto :goto_21

    :pswitch_4d
    const-string v0, "Shutdown"

    goto :goto_21

    :pswitch_50
    const-string v0, "SocketsClosed"

    goto :goto_21

    :pswitch_53
    const-string v0, "Suspend"

    goto :goto_21

    :pswitch_56
    const-string v0, "TimerFired"

    goto :goto_21

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_41
        :pswitch_44
        :pswitch_47
        :pswitch_4a
        :pswitch_4d
        :pswitch_50
        :pswitch_53
        :pswitch_56
    .end packed-switch
.end method

.method private b(I)I
    .registers 5

    const/16 v1, 0xa

    move v0, p1

    :goto_3
    if-ge v0, v1, :cond_17

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/coremobility/integration/x;->b:I

    if-nez v2, :cond_14

    :goto_13
    return v0

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_17
    move v0, v1

    goto :goto_13
.end method

.method private b(ILcom/coremobility/f/j;)V
    .registers 8

    const/16 v0, 0xc

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/coremobility/f/g;->c(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/coremobility/f/g;->c(ILcom/coremobility/f/j;)V

    return-void
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_2e

    const-string v0, "undef"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "CloseNetwork"

    goto :goto_5

    :pswitch_9
    const-string v0, "CloseUc"

    goto :goto_5

    :pswitch_c
    const-string v0, "LastBlocker"

    goto :goto_5

    :pswitch_f
    const-string v0, "NoAction"

    goto :goto_5

    :pswitch_12
    const-string v0, "RestartTimer"

    goto :goto_5

    :pswitch_15
    const-string v0, "StartTimer"

    goto :goto_5

    :pswitch_18
    const-string v0, "StopTimer"

    goto :goto_5

    :pswitch_1b
    const-string v0, "StopTimerClose"

    goto :goto_5

    :pswitch_1e
    const-string v0, "StopTimerCloseUc"

    goto :goto_5

    :pswitch_21
    const-string v0, "StopTimerLast"

    goto :goto_5

    :pswitch_24
    const-string v0, "StopTimerUc"

    goto :goto_5

    :pswitch_27
    const-string v0, "UnavailComplete"

    goto :goto_5

    :pswitch_2a
    const-string v0, "Unexpected"

    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private c(ILcom/coremobility/f/j;)V
    .registers 9

    const/16 v5, 0xa

    const/16 v3, 0xb

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_90

    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    :cond_d
    :goto_d
    :pswitch_d
    return-void

    :pswitch_e
    invoke-direct {p0, v2, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_15
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_1d
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    iget v1, p2, Lcom/coremobility/f/j;->a:I

    invoke-virtual {v0, v1}, Lcom/coremobility/f/h;->a(I)V

    goto :goto_d

    :pswitch_25
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    const v1, 0x340001

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    goto :goto_d

    :pswitch_2e
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v2, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_35
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_3d
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_45
    invoke-direct {p0, v0, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    invoke-direct {p0, v3, p2}, Lcom/coremobility/f/g;->b(ILcom/coremobility/f/j;)V

    goto :goto_d

    :pswitch_4c
    invoke-direct {p0, v2}, Lcom/coremobility/f/g;->b(I)I

    move-result v3

    if-ge v3, v5, :cond_89

    move v0, v1

    :goto_53
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_5d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->d()V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_6a
    if-ge v3, v5, :cond_d

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8d

    move v0, v1

    :goto_7c
    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->d()V

    :cond_85
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6a

    :cond_89
    move v0, v2

    goto :goto_53

    :cond_8b
    move v0, v2

    goto :goto_5d

    :cond_8d
    move v0, v2

    goto :goto_7c

    nop

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_d
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_2e
        :pswitch_35
        :pswitch_3d
        :pswitch_45
        :pswitch_4c
    .end packed-switch
.end method

.method private static d(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_12

    const-string v0, "undef"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "Available"

    goto :goto_5

    :pswitch_9
    const-string v0, "Deactivate"

    goto :goto_5

    :pswitch_c
    const-string v0, "Suspended"

    goto :goto_5

    :pswitch_f
    const-string v0, "Unavailable"

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method private f(Lcom/coremobility/integration/x;)I
    .registers 5

    const/16 v1, 0xa

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_15

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_15
    move v0, v1

    goto :goto_11
.end method

.method private g(Lcom/coremobility/integration/x;)Z
    .registers 8

    const/16 v5, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_23

    move v0, v1

    :goto_b
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-direct {p0, v2}, Lcom/coremobility/f/g;->b(I)I

    move-result v4

    if-ge v4, v5, :cond_25

    move v0, v1

    :goto_15
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    if-ge v3, v4, :cond_27

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v4

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    :goto_22
    return v1

    :cond_23
    move v0, v2

    goto :goto_b

    :cond_25
    move v0, v2

    goto :goto_15

    :cond_27
    move v1, v2

    goto :goto_22
.end method


# virtual methods
.method public abstract a(Lcom/coremobility/f/l;)I
.end method

.method public abstract a(IZ)V
.end method

.method public final a(Lcom/coremobility/integration/x;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_d
    return-void
.end method

.method public final a(Lcom/coremobility/integration/x;I)V
    .registers 4

    if-ltz p2, :cond_f

    const/16 v0, 0xa

    if-gt p2, v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aput-object p1, v0, p2

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected final a(Z)V
    .registers 7

    const/16 v4, 0xa

    const/4 v3, 0x3

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, v4, :cond_16

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    iput v3, v2, Lcom/coremobility/integration/x;->b:I

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    iput v0, p0, Lcom/coremobility/f/g;->r:I

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_28

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/coremobility/integration/x;->b:I

    iput v3, p0, Lcom/coremobility/f/g;->r:I

    :cond_28
    new-instance v1, Lcom/coremobility/f/h;

    invoke-direct {v1, p0, p0}, Lcom/coremobility/f/h;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/f/g;)V

    iput-object v1, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    :goto_2f
    if-ge v0, v4, :cond_41

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/coremobility/integration/x;->a(Lcom/coremobility/f/g;)V

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_41
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public a(Lcom/coremobility/integration/v;I)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()V
.end method

.method public b(Lcom/coremobility/f/l;)V
    .registers 2

    return-void
.end method

.method public final b(Lcom/coremobility/integration/x;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->g(Lcom/coremobility/integration/x;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v0, :cond_19

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :goto_16
    return-void

    :cond_17
    move v0, v1

    goto :goto_c

    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    goto :goto_16
.end method

.method public abstract c()V
.end method

.method public final c(Lcom/coremobility/integration/x;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/coremobility/f/g;->r:I

    if-eqz v3, :cond_c

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->g(Lcom/coremobility/integration/x;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_c
    move v0, v2

    :goto_d
    if-eqz v0, :cond_1f

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :goto_16
    const/4 v0, 0x3

    if-ne v0, v3, :cond_1c

    invoke-virtual {p1}, Lcom/coremobility/integration/x;->d()V

    :cond_1c
    return-void

    :cond_1d
    move v0, v1

    goto :goto_d

    :cond_1f
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    goto :goto_16
.end method

.method public abstract d()V
.end method

.method public final d(Lcom/coremobility/integration/x;)V
    .registers 8

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/coremobility/integration/x;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    if-nez v0, :cond_33

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_34

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_19
    if-ge v3, v5, :cond_3c

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_36

    move v0, v1

    :goto_2a
    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    move v0, v2

    goto :goto_13

    :cond_36
    move v0, v2

    goto :goto_2a

    :cond_38
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19

    :cond_3c
    new-instance v0, Lcom/coremobility/f/j;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/f/j;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/integration/x;)V

    invoke-direct {p0, v4, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    goto :goto_33
.end method

.method public abstract e()V
.end method

.method public final e(Lcom/coremobility/integration/x;)V
    .registers 8

    const/16 v5, 0xa

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/coremobility/integration/x;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    if-nez v0, :cond_37

    invoke-direct {p0, p1}, Lcom/coremobility/f/g;->f(Lcom/coremobility/integration/x;)I

    move-result v3

    if-ge v3, v5, :cond_38

    move v0, v1

    :goto_13
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    :goto_19
    if-ge v3, v5, :cond_40

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    iget v0, v0, Lcom/coremobility/integration/x;->b:I

    if-eq v0, v4, :cond_3a

    move v0, v1

    :goto_2a
    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2, p0}, Lcom/coremobility/integration/x;->a(ILcom/coremobility/f/g;)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    :cond_37
    :goto_37
    return-void

    :cond_38
    move v0, v2

    goto :goto_13

    :cond_3a
    move v0, v2

    goto :goto_2a

    :cond_3c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_19

    :cond_40
    new-instance v0, Lcom/coremobility/f/j;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/f/j;-><init>(Lcom/coremobility/f/g;Lcom/coremobility/integration/x;)V

    invoke-direct {p0, v4, v0}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    goto :goto_37
.end method

.method public abstract f()V
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/coremobility/f/g;->o:I

    return v0
.end method

.method public final h()I
    .registers 5

    const/16 v3, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    if-ge v1, v3, :cond_18

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_18

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->b()I

    move-result v0

    :cond_17
    :goto_17
    return v0

    :cond_18
    if-eq v3, v1, :cond_17

    const/16 v0, 0x79

    goto :goto_17
.end method

.method public final i()I
    .registers 5

    const/16 v3, 0xa

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/coremobility/f/g;->b(I)I

    move-result v1

    if-ge v1, v3, :cond_1e

    iget-object v2, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/coremobility/integration/x;->b()I

    move-result v0

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    if-eq v3, v1, :cond_1d

    const/16 v0, 0x79

    goto :goto_1d
.end method

.method protected final j()V
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/coremobility/f/g;->n:[Lcom/coremobility/integration/x;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/coremobility/integration/x;->c()V

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/f/g;->p:Lcom/coremobility/f/h;

    invoke-static {v0}, Lcom/coremobility/g/b;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/g/b;->b(Ljava/lang/Object;)V

    const/high16 v1, 0x34

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    return-void
.end method

.method public final k()I
    .registers 2

    iget v0, p0, Lcom/coremobility/f/g;->r:I

    packed-switch v0, :pswitch_data_e

    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    :pswitch_9
    const/4 v0, 0x5

    goto :goto_6

    :pswitch_b
    const/4 v0, 0x3

    goto :goto_6

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method protected final l()V
    .registers 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/f/g;->a(ILcom/coremobility/f/j;)V

    return-void
.end method
