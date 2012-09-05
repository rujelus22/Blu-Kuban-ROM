.class public final Lcom/coremobility/g/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field private static e:Lcom/coremobility/g/j;

.field private static f:Lcom/coremobility/g/b;


# instance fields
.field a:[Lcom/coremobility/g/h;

.field b:I

.field c:Z

.field d:I


# direct methods
.method private constructor <init>()V
    .registers 5

    const/16 v3, 0x9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [Lcom/coremobility/g/h;

    iput-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_14

    iget-object v1, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public static a()Lcom/coremobility/g/j;
    .registers 3

    sget-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    if-nez v0, :cond_14

    const/4 v0, 0x1

    const-string v1, "Creating CM_StartupManager instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/g/j;

    invoke-direct {v0}, Lcom/coremobility/g/j;-><init>()V

    sput-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    :cond_14
    sget-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    return-object v0
.end method

.method public static d()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/j;->e:Lcom/coremobility/g/j;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;II)V
    .registers 8

    sget v0, Lcom/coremobility/g/k;->b:I

    if-ne p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/coremobility/g/j;->e()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    sget v0, Lcom/coremobility/g/k;->c:I

    if-ne p1, v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/coremobility/g/h;->h()V

    goto :goto_7

    :cond_1a
    sget v0, Lcom/coremobility/g/k;->d:I

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/coremobility/g/h;->i()V

    goto :goto_7
.end method

.method public final a(Lcom/coremobility/g/h;I)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    aput-object p1, v0, p2

    return-void
.end method

.method public final b()V
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v0

    sput-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    iput v3, p0, Lcom/coremobility/g/j;->b:I

    iput-boolean v3, p0, Lcom/coremobility/g/j;->c:Z

    iput v3, p0, Lcom/coremobility/g/j;->d:I

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->a:I

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    iget-boolean v0, p0, Lcom/coremobility/g/j;->c:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/g/j;->c:Z

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_23
    return-void
.end method

.method public final c()V
    .registers 2

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    if-eqz v0, :cond_c

    sget v0, Lcom/coremobility/g/k;->a:I

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    :cond_c
    return-void
.end method

.method public final e()V
    .registers 6

    const/4 v4, 0x0

    const/16 v3, 0x9

    const/4 v2, 0x0

    :goto_4
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_17

    iget-object v0, p0, Lcom/coremobility/g/j;->a:[Lcom/coremobility/g/h;

    iget v1, p0, Lcom/coremobility/g/j;->b:I

    aget-object v0, v0, v1

    if-nez v0, :cond_17

    iget v0, p0, Lcom/coremobility/g/j;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coremobility/g/j;->b:I

    goto :goto_4

    :cond_17
    iget v0, p0, Lcom/coremobility/g/j;->d:I

    packed-switch v0, :pswitch_data_4a

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    :goto_1f
    return-void

    :pswitch_20
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_2c

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->c:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_2c
    iput v2, p0, Lcom/coremobility/g/j;->b:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/g/j;->d:I

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->b:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1f

    :pswitch_39
    iget v0, p0, Lcom/coremobility/g/j;->b:I

    if-ge v0, v3, :cond_45

    sget-object v0, Lcom/coremobility/g/j;->f:Lcom/coremobility/g/b;

    sget v1, Lcom/coremobility/g/k;->d:I

    invoke-virtual {v0, v1, v4, v2, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_45
    invoke-virtual {p0}, Lcom/coremobility/g/j;->c()V

    goto :goto_1f

    nop

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_39
    .end packed-switch
.end method
