.class final Ldbxyzptlk/v/c;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput v0, p0, Ldbxyzptlk/v/c;->a:I

    .line 142
    iput v0, p0, Ldbxyzptlk/v/c;->b:I

    return-void
.end method


# virtual methods
.method final a()I
    .registers 3

    .prologue
    .line 269
    iget v0, p0, Ldbxyzptlk/v/c;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Ldbxyzptlk/v/c;->a:I

    goto :goto_7
.end method

.method public final a(I)Ldbxyzptlk/v/c;
    .registers 5
    .parameter

    .prologue
    .line 154
    iget v0, p0, Ldbxyzptlk/v/c;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 155
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initial capacity was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldbxyzptlk/v/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_20
    if-gez p1, :cond_28

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 161
    :cond_28
    iput p1, p0, Ldbxyzptlk/v/c;->a:I

    .line 162
    return-object p0
.end method

.method public final a(Ldbxyzptlk/v/r;)Ljava/util/concurrent/ConcurrentMap;
    .registers 4
    .parameter

    .prologue
    .line 209
    if-nez p1, :cond_a

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "strategy"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_a
    new-instance v0, Ldbxyzptlk/v/e;

    invoke-direct {v0, p1, p0}, Ldbxyzptlk/v/e;-><init>(Ldbxyzptlk/v/r;Ldbxyzptlk/v/c;)V

    return-object v0
.end method

.method final b()I
    .registers 3

    .prologue
    .line 274
    iget v0, p0, Ldbxyzptlk/v/c;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x10

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Ldbxyzptlk/v/c;->b:I

    goto :goto_7
.end method

.method public final b(I)Ldbxyzptlk/v/c;
    .registers 5
    .parameter

    .prologue
    .line 183
    iget v0, p0, Ldbxyzptlk/v/c;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_20

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "concurrency level was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ldbxyzptlk/v/c;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_20
    if-gtz p1, :cond_28

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 190
    :cond_28
    iput p1, p0, Ldbxyzptlk/v/c;->b:I

    .line 191
    return-object p0
.end method
