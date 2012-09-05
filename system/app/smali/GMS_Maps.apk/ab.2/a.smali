.class public Lab/a;
.super Lat/a;


# static fields
.field private static d:Z

.field private static final e:Ljava/util/Set;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lab/a;->e:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lat/a;-><init>()V

    iput-object p1, p0, Lab/a;->b:Ljava/lang/String;

    iput p2, p0, Lab/a;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lab/a;->c:J

    return-void
.end method

.method private static a(J)Lam/b;
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbD/i;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/bq;->a()I

    move-result v2

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    invoke-virtual {v0, v1, v2, v3}, Lam/b;->b(IJ)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Z
    .registers 5

    invoke-static {p0, p1}, Lab/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lab/a;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    new-instance v1, Lab/a;

    invoke-direct {v1, p0, p1}, Lab/a;-><init>(Ljava/lang/String;I)V

    sget-boolean v2, Lab/a;->d:Z

    if-nez v2, :cond_1e

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lat/h;->c(Lat/g;)V

    :cond_1e
    sget-object v1, Lab/a;->e:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_d
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x45

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6

    new-instance v0, Lam/b;

    sget-object v1, LbD/a;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    iget v2, p0, Lab/a;->a:I

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x1

    iget-object v2, p0, Lab/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lab/a;->a(J)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/a;->b:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
