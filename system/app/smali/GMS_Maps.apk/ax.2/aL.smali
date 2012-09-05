.class public Lax/aL;
.super Ljava/lang/Object;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Ljava/lang/String;

.field private final g:Lax/aN;

.field private final h:J


# direct methods
.method public constructor <init>(JLjava/lang/String;JIIILax/aN;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lax/aL;->a:J

    iput-object p3, p0, Lax/aL;->b:Ljava/lang/String;

    iput-wide p4, p0, Lax/aL;->h:J

    iput-object p9, p0, Lax/aL;->g:Lax/aN;

    iput p6, p0, Lax/aL;->c:I

    iput p7, p0, Lax/aL;->d:I

    iput p8, p0, Lax/aL;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lax/aL;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JLjava/lang/String;Lax/aN;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lax/aL;->a:J

    iput-object p3, p0, Lax/aL;->b:Ljava/lang/String;

    iput-wide p4, p0, Lax/aL;->h:J

    iput-object p7, p0, Lax/aL;->g:Lax/aN;

    iput-object p6, p0, Lax/aL;->f:Ljava/lang/String;

    const v0, 0x7f020214

    iput v0, p0, Lax/aL;->c:I

    const v0, 0x7f020215

    iput v0, p0, Lax/aL;->d:I

    const v0, 0x7f020271

    iput v0, p0, Lax/aL;->e:I

    return-void
.end method

.method public static a(Lam/b;)Lax/aL;
    .registers 11

    new-instance v0, Lax/aL;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->e(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {p0, v4}, Lam/g;->g(Lam/b;I)J

    move-result-wide v4

    const v6, 0x7f020214

    const v7, 0x7f020215

    const v8, 0x7f020271

    sget-object v9, Lax/aN;->a:Lax/aN;

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    return-object v0
.end method

.method public static b(Lam/b;)Lax/aL;
    .registers 9

    new-instance v0, Lax/aL;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->e(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    sget-object v7, Lax/aN;->c:Lax/aN;

    invoke-direct/range {v0 .. v7}, Lax/aL;-><init>(JLjava/lang/String;JLjava/lang/String;Lax/aN;)V

    return-object v0
.end method

.method public static c(Lam/b;)Ljava/util/List;
    .registers 13

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v11

    const/4 v0, 0x0

    move v10, v0

    :goto_6
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/b;->l(I)I

    move-result v0

    if-ge v10, v0, :cond_92

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v10}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lam/b;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_94

    :goto_1a
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_6

    :pswitch_1e
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lam/b;->d(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2e

    invoke-static {}, Lax/aL;->g()Lax/aL;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_2e
    const/4 v1, 0x2

    if-ne v1, v0, :cond_39

    invoke-static {}, Lax/aL;->h()Lax/aL;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized custom target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_52
    new-instance v0, Lax/aL;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lam/b;->e(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const v6, 0x7f020214

    const v7, 0x7f020215

    const v8, 0x7f020271

    sget-object v9, Lax/aN;->a:Lax/aN;

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :pswitch_72
    new-instance v0, Lax/aL;

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lam/b;->e(I)J

    move-result-wide v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const v6, 0x7f020214

    const v7, 0x7f020215

    const v8, 0x7f020271

    sget-object v9, Lax/aN;->c:Lax/aN;

    invoke-direct/range {v0 .. v9}, Lax/aL;-><init>(JLjava/lang/String;JIIILax/aN;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_92
    return-object v11

    nop

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_52
        :pswitch_72
    .end packed-switch
.end method

.method public static final g()Lax/aL;
    .registers 1

    invoke-static {}, Lax/aM;->a()Lax/aM;

    move-result-object v0

    invoke-virtual {v0}, Lax/aM;->b()Lax/aL;

    move-result-object v0

    return-object v0
.end method

.method public static final h()Lax/aL;
    .registers 1

    invoke-static {}, Lax/aM;->a()Lax/aM;

    move-result-object v0

    invoke-virtual {v0}, Lax/aM;->c()Lax/aL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lax/aL;->a:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lax/aL;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lax/aN;
    .registers 2

    iget-object v0, p0, Lax/aL;->g:Lax/aN;

    return-object v0
.end method

.method public d()J
    .registers 3

    iget-wide v0, p0, Lax/aL;->h:J

    return-wide v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lax/aL;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lax/aL;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lax/aL;

    invoke-virtual {p0}, Lax/aL;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lax/aL;->a()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_27

    invoke-virtual {p0}, Lax/aL;->c()Lax/aN;

    move-result-object v2

    invoke-virtual {p1}, Lax/aL;->c()Lax/aN;

    move-result-object v3

    invoke-virtual {v2, v3}, Lax/aN;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lax/aL;->e:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lax/aL;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lax/aL;->c()Lax/aN;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/s;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PostTarget:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lax/aL;->g:Lax/aN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lax/aL;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lax/aL;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
