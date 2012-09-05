.class public Lu/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:Lu/j;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:Lu/I;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREPARE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NOTE"

    aput-object v2, v0, v1

    sput-object v0, Lu/j;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIZLjava/lang/String;II)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/j;->b:I

    iput p2, p0, Lu/j;->c:I

    iput p3, p0, Lu/j;->d:I

    iput p4, p0, Lu/j;->e:I

    iput-boolean p5, p0, Lu/j;->f:Z

    iput-object p6, p0, Lu/j;->h:Ljava/lang/String;

    iput p7, p0, Lu/j;->i:I

    iput p8, p0, Lu/j;->k:I

    return-void
.end method

.method public static a(Lam/b;D)Lu/j;
    .registers 16

    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-virtual {p0, v5}, Lam/b;->d(I)I

    move-result v1

    if-ltz v1, :cond_c

    if-lt v1, v6, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    int-to-double v2, v0

    mul-double v9, v2, p1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lam/g;->e(Lam/b;I)I

    move-result v3

    invoke-static {p0, v6}, Lam/g;->e(Lam/b;I)I

    move-result v0

    int-to-double v6, v0

    mul-double v11, v6, p1

    invoke-virtual {p0, v8}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {p0, v8}, Lam/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_46

    :goto_2e
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x7

    invoke-static {p0, v0, v4}, Lam/g;->c(Lam/b;II)I

    move-result v7

    const/16 v0, 0x8

    invoke-static {p0, v0, v4}, Lam/g;->c(Lam/b;II)I

    move-result v8

    new-instance v0, Lu/j;

    double-to-int v2, v9

    double-to-int v4, v11

    invoke-direct/range {v0 .. v8}, Lu/j;-><init>(IIIIZLjava/lang/String;II)V

    goto :goto_d

    :cond_46
    const/4 v5, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lu/j;->b:I

    return v0
.end method

.method a(Lu/I;)V
    .registers 2

    iput-object p1, p0, Lu/j;->j:Lu/I;

    return-void
.end method

.method a(Lu/j;)V
    .registers 3

    iput-object p1, p0, Lu/j;->g:Lu/j;

    if-nez p1, :cond_7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/j;->f:Z

    :cond_7
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lu/j;->c:I

    return v0
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lu/j;->d:I

    return v0
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lu/j;->e:I

    return v0
.end method

.method public e()Lu/I;
    .registers 2

    iget-object v0, p0, Lu/j;->j:Lu/I;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Lu/j;->f:Z

    return v0
.end method

.method public g()Lu/j;
    .registers 2

    iget-object v0, p0, Lu/j;->g:Lu/j;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lu/j;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lu/j;->h:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget v0, p0, Lu/j;->i:I

    if-ltz v0, :cond_2c

    iget v0, p0, Lu/j;->i:I

    iget-object v1, p0, Lu/j;->j:Lu/I;

    invoke-virtual {v1}, Lu/I;->u()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    iget-object v0, p0, Lu/j;->j:Lu/I;

    invoke-virtual {v0}, Lu/I;->u()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lu/j;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/L;

    invoke-virtual {v0}, Lu/L;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_2c
    iget-object v0, p0, Lu/j;->j:Lu/I;

    invoke-virtual {v0}, Lu/I;->o()Landroid/text/Spanned;

    move-result-object v0

    goto :goto_6
.end method

.method public i()Z
    .registers 2

    iget-object v0, p0, Lu/j;->h:Ljava/lang/String;

    if-nez v0, :cond_8

    iget v0, p0, Lu/j;->i:I

    if-ltz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public j()Lo/l;
    .registers 3

    iget v0, p0, Lu/j;->k:I

    if-ltz v0, :cond_c

    new-instance v0, Lo/s;

    iget v1, p0, Lu/j;->k:I

    invoke-direct {v0, v1}, Lo/s;-><init>(I)V

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lu/j;->a:[Ljava/lang/String;

    iget v2, p0, Lu/j;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/j;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu/j;->j:Lu/I;

    invoke-virtual {v1}, Lu/I;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
