.class public Lk/s;
.super Lk/q;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    invoke-direct {p0, p1}, Lk/q;-><init>(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lk/q;-><init>(Lorg/w3c/dom/Node;)V

    .line 160
    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<locationenabled provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/s;->a:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 166
    return-void
.end method
