.class public Lk/o;
.super LA/j;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0}, LA/j;-><init>()V

    .line 288
    iput p1, p0, Lk/o;->a:I

    .line 289
    iput p2, p0, Lk/o;->b:I

    .line 290
    iput p3, p0, Lk/o;->c:I

    .line 291
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1}, LA/j;-><init>(Lorg/w3c/dom/Node;)V

    .line 295
    const-string v0, "type"

    invoke-static {p1, v0}, Lk/o;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/o;->a:I

    .line 296
    const-string v0, "satellites"

    invoke-static {p1, v0}, Lk/o;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/o;->b:I

    .line 297
    const-string v0, "numUsed"

    invoke-static {p1, v0}, Lk/o;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/o;->c:I

    .line 298
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 300
    iget v0, p0, Lk/o;->a:I

    return v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<gpsstatus type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' satellites=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' numUsed=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Lk/o;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 302
    iget v0, p0, Lk/o;->c:I

    return v0
.end method
