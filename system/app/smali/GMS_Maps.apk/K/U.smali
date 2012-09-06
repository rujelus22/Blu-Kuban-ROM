.class public Lk/u;
.super LA/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lo/j;)V
    .registers 3
    .parameter

    .prologue
    .line 387
    invoke-direct {p0}, LA/j;-><init>()V

    .line 388
    invoke-virtual {p1}, Lo/j;->a()I

    move-result v0

    iput v0, p0, Lk/u;->a:I

    .line 389
    invoke-virtual {p1}, Lo/j;->h()Ljava/lang/CharSequence;

    move-result-object v0

    .line 390
    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Lk/u;->b:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, -0x1

    :goto_19
    iput v0, p0, Lk/u;->c:I

    .line 392
    return-void

    .line 390
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 391
    :cond_21
    invoke-virtual {p1}, Lo/j;->e()Lo/I;

    move-result-object v0

    invoke-virtual {v0}, Lo/I;->i()I

    move-result v0

    goto :goto_19
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 5
    .parameter

    .prologue
    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<guidance type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lo/j;->a:Lcom/google/common/collect/ImmutableList;

    iget v2, p0, Lk/u;->a:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' stepNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 403
    return-void
.end method
