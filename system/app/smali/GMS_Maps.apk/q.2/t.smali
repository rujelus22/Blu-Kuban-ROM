.class public Lq/t;
.super LC/j;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method public constructor <init>(Lu/j;)V
    .registers 3

    invoke-direct {p0}, LC/j;-><init>()V

    invoke-virtual {p1}, Lu/j;->a()I

    move-result v0

    iput v0, p0, Lq/t;->a:I

    invoke-virtual {p1}, Lu/j;->h()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    :goto_10
    iput-object v0, p0, Lq/t;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    if-nez v0, :cond_21

    const/4 v0, -0x1

    :goto_19
    iput v0, p0, Lq/t;->c:I

    return-void

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_21
    invoke-virtual {p1}, Lu/j;->e()Lu/I;

    move-result-object v0

    invoke-virtual {v0}, Lu/I;->i()I

    move-result v0

    goto :goto_19
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<guidance type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lu/j;->a:[Ljava/lang/String;

    iget v2, p0, Lq/t;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' text=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' stepNum=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lq/t;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
