.class public Lk/z;
.super LA/j;
.source "SourceFile"


# instance fields
.field private final a:Ls/q;

.field private final b:Ls/q;


# direct methods
.method public constructor <init>(Ls/q;Ls/q;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0}, LA/j;-><init>()V

    .line 360
    iput-object p1, p0, Lk/z;->a:Ls/q;

    .line 361
    iput-object p2, p0, Lk/z;->b:Ls/q;

    .line 362
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lk/z;->b:Ls/q;

    invoke-virtual {v0}, Ls/q;->D()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<stateTransition from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/z;->a:Ls/q;

    invoke-virtual {v1}, Ls/q;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/z;->b:Ls/q;

    invoke-virtual {v1}, Ls/q;->D()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    return-void
.end method
