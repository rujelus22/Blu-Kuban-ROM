.class public Lk/t;
.super Lk/q;
.source "SourceFile"


# instance fields
.field private final b:I

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JLjava/lang/String;ILandroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct {p0, p1, p2, p3}, Lk/q;-><init>(JLjava/lang/String;)V

    .line 214
    iput p4, p0, Lk/t;->b:I

    .line 215
    iput-object p5, p0, Lk/t;->c:Landroid/os/Bundle;

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lk/q;-><init>(Ljava/lang/String;)V

    .line 203
    iput p2, p0, Lk/t;->b:I

    .line 204
    iput-object p3, p0, Lk/t;->c:Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lk/q;-><init>(Lorg/w3c/dom/Node;)V

    .line 220
    const-string v0, "status"

    invoke-static {p1, v0}, Lk/t;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lk/t;->b:I

    .line 221
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 232
    iget v0, p0, Lk/t;->b:I

    return v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<locationstatuschanged provider=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lk/t;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public c()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lk/t;->c:Landroid/os/Bundle;

    return-object v0
.end method
