.class public Le/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/c;->a:I

    iput p2, p0, Le/c;->b:I

    iput p3, p0, Le/c;->c:I

    iput p4, p0, Le/c;->d:I

    return-void
.end method


# virtual methods
.method public a(Le/b;)LW/a;
    .registers 6

    const/4 v3, -0x1

    new-instance v0, LW/a;

    sget-object v1, Lk/a;->X:LW/d;

    invoke-direct {v0, v1}, LW/a;-><init>(LW/d;)V

    const/4 v1, 0x2

    iget v2, p0, Le/c;->a:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x1

    iget v2, p0, Le/c;->b:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    const/4 v1, 0x5

    iget v2, p0, Le/c;->d:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    iget v1, p0, Le/c;->c:I

    if-eq v1, v3, :cond_25

    const/16 v1, 0x8

    iget v2, p0, Le/c;->c:I

    invoke-virtual {v0, v1, v2}, LW/a;->g(II)V

    :cond_25
    invoke-virtual {p1}, Le/b;->d()I

    move-result v1

    if-eq v1, v3, :cond_2f

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    :cond_2f
    invoke-virtual {p1}, Le/b;->e()I

    move-result v1

    if-eq v1, v3, :cond_39

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, LW/a;->g(II)V

    :cond_39
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Le/c;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Le/c;->c:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Le/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method
