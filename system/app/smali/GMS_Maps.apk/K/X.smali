.class public Lk/x;
.super Lk/q;
.source "SourceFile"


# instance fields
.field private final b:Lm/D;


# direct methods
.method public constructor <init>(Lm/D;)V
    .registers 3
    .parameter

    .prologue
    .line 247
    invoke-virtual {p1}, Lm/D;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lk/q;-><init>(Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lk/x;->b:Lm/D;

    .line 249
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 9
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lk/q;-><init>(Lorg/w3c/dom/Node;)V

    .line 258
    new-instance v0, Lm/D;

    const-string v1, "provider"

    invoke-static {p1, v1}, Lk/x;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-static {p1, v2}, Lk/x;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "orientation"

    invoke-static {p1, v4}, Lk/x;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const-string v5, "pitch"

    const-string v6, "45"

    invoke-static {p1, v5, v6}, Lk/x;->a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lm/D;-><init>(Ljava/lang/String;JFF)V

    iput-object v0, p0, Lk/x;->b:Lm/D;

    .line 262
    return-void
.end method


# virtual methods
.method public a()Lm/D;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lk/x;->b:Lm/D;

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 5
    .parameter

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<orientation provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/x;->a:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' time=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/x;->b:Lm/D;

    invoke-virtual {v1}, Lm/D;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' orientation=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/x;->b:Lm/D;

    invoke-virtual {v1}, Lm/D;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' pitch=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/x;->b:Lm/D;

    invoke-virtual {v1}, Lm/D;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 269
    return-void
.end method
