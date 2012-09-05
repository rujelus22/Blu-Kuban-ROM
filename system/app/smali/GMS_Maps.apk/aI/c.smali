.class public LaI/c;
.super Ljava/lang/Object;


# static fields
.field private static a:LaI/d;

.field private static k:LaI/c;

.field private static l:Z


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private i:J

.field private j:LaF/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, LaI/c;->l:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 18

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, LaI/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;J)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LaF/b;->e()LaF/b;

    move-result-object v0

    iput-object v0, p0, LaI/c;->j:LaF/b;

    iput-object p1, p0, LaI/c;->b:Ljava/lang/String;

    iput-object p2, p0, LaI/c;->c:Ljava/lang/String;

    iput p3, p0, LaI/c;->d:I

    iput p4, p0, LaI/c;->e:I

    iput p5, p0, LaI/c;->f:I

    iput-object p6, p0, LaI/c;->g:Ljava/lang/String;

    iput-object p7, p0, LaI/c;->h:Ljava/lang/String;

    iput-wide p8, p0, LaI/c;->i:J

    return-void
.end method

.method public static a([LaI/c;)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1e

    if-eqz v0, :cond_12

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1e
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LaI/d;)V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, LaI/c;->l:Z

    if-nez p0, :cond_8

    invoke-static {}, LaI/c;->b()V

    :cond_8
    sput-object p0, LaI/c;->a:LaI/d;

    invoke-static {}, Laf/d;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, LaI/c;->c()LaI/c;

    :cond_13
    return-void
.end method

.method public static a(LaI/e;)V
    .registers 3

    sget-boolean v0, LaI/c;->l:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, LaI/c;->a:LaI/d;

    invoke-interface {v0, p0}, LaI/d;->a(LaI/e;)V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, LaI/c;->l:Z

    return v0
.end method

.method static b()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, LaI/c;->l:Z

    return-void
.end method

.method public static c()LaI/c;
    .registers 1

    sget-object v0, LaI/c;->a:LaI/d;

    if-nez v0, :cond_9

    invoke-static {}, LaI/c;->e()LaI/c;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    sget-object v0, LaI/c;->a:LaI/d;

    invoke-interface {v0}, LaI/d;->a()LaI/c;

    move-result-object v0

    goto :goto_8
.end method

.method public static d()[LaI/c;
    .registers 3

    sget-object v0, LaI/c;->a:LaI/d;

    if-nez v0, :cond_f

    const/4 v0, 0x1

    new-array v0, v0, [LaI/c;

    const/4 v1, 0x0

    invoke-static {}, LaI/c;->e()LaI/c;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, LaI/c;->a:LaI/d;

    invoke-interface {v0}, LaI/d;->b()[LaI/c;

    move-result-object v0

    goto :goto_e
.end method

.method public static e()LaI/c;
    .registers 8

    const/4 v3, -0x1

    const/4 v1, 0x0

    sget-object v0, LaI/c;->k:LaI/c;

    if-nez v0, :cond_12

    new-instance v0, LaI/c;

    move-object v2, v1

    move v4, v3

    move v5, v3

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, LaI/c;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, LaI/c;->k:LaI/c;

    :cond_12
    sget-object v0, LaI/c;->k:LaI/c;

    return-object v0
.end method

.method public static k()Z
    .registers 2

    sget-boolean v0, LaI/c;->l:Z

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wifi info must have been configured to call this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    sget-object v0, LaI/c;->a:LaI/d;

    invoke-interface {v0}, LaI/d;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, LaI/c;

    iget-object v2, p0, LaI/c;->b:Ljava/lang/String;

    iget-object v3, p1, LaI/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, LaI/c;->c:Ljava/lang/String;

    iget-object v3, p1, LaI/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, LaI/c;->j:LaF/b;

    iget-object v3, p1, LaI/c;->j:LaF/b;

    invoke-virtual {v2, v3}, LaF/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_33
    move v0, v1

    goto :goto_4
.end method

.method public f()Z
    .registers 3

    iget-object v0, p0, LaI/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaI/c;->b:Ljava/lang/String;

    const-string v1, "00-00-00-00-00-00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LaI/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, LaI/c;->i:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, LaI/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, LaI/c;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget-object v1, p0, LaI/c;->j:LaF/b;

    invoke-virtual {v1}, LaF/b;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lam/b;
    .registers 6

    const/4 v1, 0x0

    new-instance v2, Lam/b;

    sget-object v0, Lbr/O;->f:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget-object v3, p0, LaI/c;->h:Ljava/lang/String;

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v0, 0x2

    iget-object v3, p0, LaI/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    move v0, v1

    :cond_18
    iget v3, p0, LaI/c;->e:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    const/4 v0, 0x3

    iget v3, p0, LaI/c;->e:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    :goto_23
    if-eqz v1, :cond_27

    const/4 v0, 0x0

    :goto_26
    return-object v0

    :cond_27
    move-object v0, v2

    goto :goto_26

    :cond_29
    move v1, v0

    goto :goto_23
.end method

.method public j()Lam/b;
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, Lbr/au;->c:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget-wide v1, p0, LaI/c;->i:J

    invoke-virtual {v0, v3, v1, v2}, Lam/b;->b(IJ)V

    new-instance v1, Lam/b;

    sget-object v2, Lbr/au;->a:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    iget-object v2, p0, LaI/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v2, p0, LaI/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Lam/b;->b(ILjava/lang/String;)V

    const/4 v2, 0x4

    iget v3, p0, LaI/c;->f:I

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    invoke-virtual {v0, v4, v1}, Lam/b;->b(ILam/b;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiInfo[bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaI/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaI/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaI/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, LaI/c;->i:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
