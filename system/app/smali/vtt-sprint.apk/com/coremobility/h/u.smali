.class public final Lcom/coremobility/h/u;
.super Lcom/coremobility/h/aa;

# interfaces
.implements Lcom/coremobility/g/a;


# static fields
.field protected static a:Lcom/coremobility/h/u;


# instance fields
.field protected b:Lcom/coremobility/h/z;

.field protected c:Lcom/coremobility/h/v;

.field protected d:[Lcom/coremobility/h/a;

.field protected e:Lcom/coremobility/integration/file/a;

.field protected f:Lcom/coremobility/h/x;

.field protected g:I

.field private j:Lcom/coremobility/g/b;

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/h/aa;-><init>()V

    iput-object v1, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    iput-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/coremobility/h/a;

    iput-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iput-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/coremobility/h/u;->k:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/coremobility/h/u;
    .registers 4

    const/4 v3, 0x0

    sget-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    if-nez v0, :cond_49

    const/16 v0, 0x32

    const-string v1, "Creating CM_RestService instance"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/h/u;

    invoke-direct {v0}, Lcom/coremobility/h/u;-><init>()V

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/h/u;->e:Lcom/coremobility/integration/file/a;

    iput v3, v0, Lcom/coremobility/h/u;->g:I

    iget-object v1, v0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const/high16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    new-instance v1, Lcom/coremobility/h/z;

    invoke-direct {v1}, Lcom/coremobility/h/z;-><init>()V

    iput-object v1, v0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v1, v0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v1}, Lcom/coremobility/h/z;->b()V

    new-instance v1, Lcom/coremobility/h/x;

    invoke-direct {v1, v0}, Lcom/coremobility/h/x;-><init>(Lcom/coremobility/h/u;)V

    iput-object v1, v0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    new-instance v1, Lcom/coremobility/h/v;

    invoke-direct {v1, v0}, Lcom/coremobility/h/v;-><init>(Lcom/coremobility/h/u;)V

    iput-object v1, v0, Lcom/coremobility/h/u;->c:Lcom/coremobility/h/v;

    iget-object v1, v0, Lcom/coremobility/h/u;->c:Lcom/coremobility/h/v;

    invoke-virtual {v1, v0}, Lcom/coremobility/h/v;->a(Lcom/coremobility/h/u;)V

    :cond_49
    sget-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-object v0
.end method

.method private a(Z)V
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/t;

    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lcom/coremobility/h/t;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    const/4 v2, 0x0

    iput v2, v0, Lcom/coremobility/h/w;->j:I

    if-nez p1, :cond_3a

    iget-object v2, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    if-eqz v2, :cond_34

    iget-object v0, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :cond_34
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/coremobility/h/x;->removeElementAt(I)V

    :cond_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_3f

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    return-void

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static a(Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v2, :pswitch_data_3e

    :cond_9
    :goto_9
    return v0

    :pswitch_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    if-gtz v2, :cond_9

    const/16 v3, 0x32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CM+RS q rm URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v0

    add-int/lit16 v2, v2, 0x1820

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/a/a;->a(I)V

    move v0, v1

    goto :goto_9

    :pswitch_data_3e
    .packed-switch 0x38
        :pswitch_a
    .end packed-switch
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/h/u;->a:Lcom/coremobility/h/u;

    return-void
.end method

.method private d()V
    .registers 6

    const/16 v4, 0x32

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestQ size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v1}, Lcom/coremobility/h/x;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/h/u;->g:I

    if-gtz v0, :cond_2d

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-nez v0, :cond_2e

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    iget v1, v0, Lcom/coremobility/h/w;->a:I

    packed-switch v1, :pswitch_data_a0

    :pswitch_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+RS incorrect operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/coremobility/h/u;->a(Z)V

    goto :goto_2d

    :pswitch_59
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;ILcom/coremobility/f/b;)Z

    goto :goto_2d

    :pswitch_65
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v0}, Lcom/coremobility/h/z;->b(Ljava/lang/String;ILcom/coremobility/f/b;)Z

    goto :goto_2d

    :pswitch_71
    iget-object v1, v0, Lcom/coremobility/h/w;->e:Lcom/coremobility/h/ab;

    if-nez v1, :cond_83

    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->c:[B

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->b(Ljava/lang/String;[BILcom/coremobility/f/b;)Z

    goto :goto_2d

    :cond_83
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->e:Lcom/coremobility/h/ab;

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;Lcom/coremobility/h/ab;ILcom/coremobility/f/b;)Z

    goto :goto_2d

    :pswitch_91
    iget-object v1, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    iget-object v2, v0, Lcom/coremobility/h/w;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->c:[B

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    iget-object v0, v0, Lcom/coremobility/h/w;->k:Lcom/coremobility/f/b;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coremobility/h/z;->a(Ljava/lang/String;[BILcom/coremobility/f/b;)Z

    goto :goto_2d

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_59
        :pswitch_71
        :pswitch_3b
        :pswitch_91
        :pswitch_65
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/String;Lcom/coremobility/f/b;)I
    .registers 10

    const/16 v3, 0x32

    const/4 v1, 0x0

    if-eqz p2, :cond_b

    invoke-static {v1}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_b
    const-string v0, "CM+RS getreq bad param"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x4b0

    :cond_14
    :goto_14
    return v1

    :cond_15
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v1

    if-nez v0, :cond_25

    const-string v0, "CM+RS getreq cl not reg"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x4b2

    goto :goto_14

    :cond_25
    new-instance v0, Lcom/coremobility/h/m;

    invoke-direct {v0, p2}, Lcom/coremobility/h/m;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+RS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/h/u;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v2}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v4, 0x0

    move-object v2, p2

    move v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_14

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    goto :goto_14
.end method

.method public final a(ILjava/lang/String;[BLcom/coremobility/f/b;)I
    .registers 12

    const/16 v4, 0x32

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p2, :cond_c

    invoke-static {v6}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    const-string v0, "CM+RS post req bad param"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v6

    if-nez v0, :cond_26

    const-string v0, "CM+RS post req cl not reg"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_15

    :cond_26
    new-instance v0, Lcom/coremobility/h/n;

    array-length v2, p3

    invoke-direct {v0, p2, v2}, Lcom/coremobility/h/n;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "CM+RS %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/coremobility/h/u;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v3}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    move-object v2, p2

    move v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_5b

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    :cond_5b
    move v0, v6

    goto :goto_15
.end method

.method public final a(Lcom/coremobility/h/a;)I
    .registers 5

    const/16 v2, 0x32

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/coremobility/h/u;->a(I)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_b
    const-string v1, "Rest reg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_25

    const-string v1, "Rest reg dup"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b1

    goto :goto_14

    :cond_25
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aput-object p1, v1, v0

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;Lcom/coremobility/h/ab;Lcom/coremobility/f/b;)I
    .registers 12

    const/16 v2, 0x32

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_c

    invoke-static {v7}, Lcom/coremobility/h/u;->a(I)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_c
    const-string v0, "CM+RS post req bad param"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v0, v0, v7

    if-nez v0, :cond_26

    const-string v0, "CM+RS post req cl not reg"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b2

    goto :goto_15

    :cond_26
    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    const/4 v3, 0x5

    const/4 v4, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/coremobility/h/x;->a(ILjava/lang/String;I[BLcom/coremobility/h/ab;Lcom/coremobility/f/b;)Lcom/coremobility/h/w;

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-ne v0, v1, :cond_3b

    invoke-direct {p0}, Lcom/coremobility/h/u;->d()V

    :cond_3b
    move v0, v7

    goto :goto_15
.end method

.method public final a([BIII)I
    .registers 15

    const/16 v9, 0x4b5

    const/16 v8, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-lez v0, :cond_106

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    invoke-static {v3}, Lcom/coremobility/h/u;->a(I)Z

    move-result v3

    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v3, Lcom/coremobility/h/k;

    invoke-direct {v3, p3, p4}, Lcom/coremobility/h/k;-><init>(II)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v3, v0, Lcom/coremobility/h/w;->j:I

    if-nez v3, :cond_109

    if-lez p3, :cond_109

    move v3, v1

    :goto_32
    iget v4, v0, Lcom/coremobility/h/w;->j:I

    add-int/2addr v4, p3

    iput v4, v0, Lcom/coremobility/h/w;->j:I

    iget v4, v0, Lcom/coremobility/h/w;->j:I

    add-int/2addr v4, p3

    if-ne v4, p4, :cond_10c

    move v4, v1

    :goto_3d
    if-eqz v3, :cond_131

    new-instance v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REST"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/coremobility/h/w;->f:I

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    new-instance v5, Lcom/coremobility/integration/q;

    invoke-direct {v5}, Lcom/coremobility/integration/q;-><init>()V

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/q;)I

    move-result v3

    if-nez v3, :cond_10f

    move v3, v1

    :goto_6e
    invoke-static {v3}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-boolean v3, v5, Lcom/coremobility/integration/q;->a:Z

    if-eqz v3, :cond_7a

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    :cond_7a
    new-instance v3, Lcom/coremobility/integration/h;

    invoke-direct {v3}, Lcom/coremobility/integration/h;-><init>()V

    iput-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v3, v5}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v3

    if-eqz v3, :cond_131

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REST recv file open error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    move v4, v1

    :goto_b1
    if-eqz p1, :cond_12e

    if-lez p3, :cond_12e

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5, p3}, Lcom/coremobility/integration/r;-><init>(I)V

    iget-object v6, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v6, p1, p2, v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BILcom/coremobility/integration/r;)I

    move-result v5

    if-eqz v5, :cond_12e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REST recv file write error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " client: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/coremobility/h/w;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_e7
    new-instance v4, Lcom/coremobility/h/l;

    invoke-direct {v4, p3}, Lcom/coremobility/h/l;-><init>(I)V

    invoke-static {v4}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    if-eqz v3, :cond_105

    iget-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    if-eqz v3, :cond_fa

    iget-object v3, v0, Lcom/coremobility/h/w;->i:Lcom/coremobility/integration/h;

    invoke-static {v3}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :cond_fa
    if-eqz v1, :cond_112

    iget-object v0, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v0, v9}, Lcom/coremobility/h/z;->a(I)V

    invoke-virtual {p0, v9, v2}, Lcom/coremobility/h/u;->a(IZ)V

    move p3, v2

    :cond_105
    :goto_105
    return p3

    :cond_106
    move v0, v2

    goto/16 :goto_f

    :cond_109
    move v3, v2

    goto/16 :goto_32

    :cond_10c
    move v4, v2

    goto/16 :goto_3d

    :cond_10f
    move v3, v2

    goto/16 :goto_6e

    :cond_112
    new-instance v1, Lcom/coremobility/h/y;

    invoke-direct {v1, p0}, Lcom/coremobility/h/y;-><init>(Lcom/coremobility/h/u;)V

    iget v3, v0, Lcom/coremobility/h/w;->f:I

    iput v3, v1, Lcom/coremobility/h/y;->c:I

    iget-object v3, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iput-object v3, v1, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    iput-object v3, v1, Lcom/coremobility/h/y;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const v4, 0x3a0006

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v3, v4, v1, v0, v2}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_105

    :cond_12e
    move v1, v3

    move v3, v4

    goto :goto_e7

    :cond_131
    move v3, v2

    goto/16 :goto_b1
.end method

.method public final a(ILjava/lang/Object;II)V
    .registers 8

    packed-switch p1, :pswitch_data_2a

    :goto_3
    return-void

    :pswitch_4
    check-cast p2, Lcom/coremobility/h/y;

    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iget v1, p2, Lcom/coremobility/h/y;->c:I

    aget-object v0, v0, v1

    const v1, 0x3a0006

    iget-object v2, p2, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2, p4}, Lcom/coremobility/h/a;->a(IILjava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/h/u;->a(Z)V

    goto :goto_3

    :pswitch_19
    check-cast p2, Lcom/coremobility/h/y;

    iget-object v0, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    iget v1, p2, Lcom/coremobility/h/y;->c:I

    aget-object v0, v0, v1

    const v1, 0x3a0007

    iget-object v2, p2, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p3, v2, p4}, Lcom/coremobility/h/a;->a(IILjava/lang/String;I)V

    goto :goto_3

    :pswitch_data_2a
    .packed-switch 0x3a0006
        :pswitch_4
        :pswitch_19
    .end packed-switch
.end method

.method public final a(IZ)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_4a

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->size()I

    move-result v0

    if-lez v0, :cond_50

    :goto_10
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    new-instance v0, Lcom/coremobility/h/o;

    iget-object v1, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v1}, Lcom/coremobility/h/x;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/coremobility/h/o;-><init>(IZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v0, p0, Lcom/coremobility/h/u;->f:Lcom/coremobility/h/x;

    invoke-virtual {v0}, Lcom/coremobility/h/x;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/h/w;

    if-nez p2, :cond_46

    new-instance v1, Lcom/coremobility/h/y;

    invoke-direct {v1, p0}, Lcom/coremobility/h/y;-><init>(Lcom/coremobility/h/u;)V

    iget v2, v0, Lcom/coremobility/h/w;->f:I

    iput v2, v1, Lcom/coremobility/h/y;->c:I

    iget-object v2, v0, Lcom/coremobility/h/w;->h:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/h/y;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/coremobility/h/w;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/coremobility/h/y;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    const v3, 0x3a0007

    iget v0, v0, Lcom/coremobility/h/w;->g:I

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    :cond_46
    invoke-direct {p0, p2}, Lcom/coremobility/h/u;->a(Z)V

    return-void

    :cond_4a
    if-lez p1, :cond_4e

    move v0, v1

    goto :goto_5

    :cond_4e
    move v0, v2

    goto :goto_5

    :cond_50
    move v1, v2

    goto :goto_10
.end method

.method public final b(Lcom/coremobility/h/a;)I
    .registers 6

    const/16 v3, 0x32

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-static {v0}, Lcom/coremobility/h/u;->a(I)Z

    move-result v1

    if-nez v1, :cond_15

    :cond_b
    const-string v1, "Rest unreg bad param"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x4b0

    :goto_14
    return v0

    :cond_15
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_22

    const-string v1, "Rest reg dup"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-object v1, p0, Lcom/coremobility/h/u;->d:[Lcom/coremobility/h/a;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    goto :goto_14
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/h/u;->j:Lcom/coremobility/g/b;

    if-eqz v0, :cond_9

    const/high16 v0, 0x3a

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    :cond_9
    iget-object v0, p0, Lcom/coremobility/h/u;->b:Lcom/coremobility/h/z;

    invoke-virtual {v0}, Lcom/coremobility/h/z;->c()V

    return-void
.end method
