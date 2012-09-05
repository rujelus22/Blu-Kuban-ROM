.class public Lq/s;
.super Lq/p;


# instance fields
.field private final b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lq/p;-><init>(JLjava/lang/String;)V

    iput p4, p0, Lq/s;->b:I

    iput-object p5, p0, Lq/s;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    invoke-direct {p0, p1}, Lq/p;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "status"

    invoke-static {p1, v0}, Lq/s;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lq/s;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lq/s;->b:I

    return v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<locationstatuschanged provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq/s;->a:Ljava/lang/String;

    invoke-static {v1}, Lq/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lq/s;->b:I

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

.method public c()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lq/s;->c:Landroid/os/Bundle;

    return-object v0
.end method
