.class public Lk/B;
.super Lk/C;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 580
    invoke-direct {p0, p1}, Lk/C;-><init>(Ljava/lang/String;)V

    .line 581
    iput-object p2, p0, Lk/B;->a:Ljava/lang/String;

    .line 582
    iput-object p3, p0, Lk/B;->b:Ljava/lang/String;

    .line 583
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    if-eqz p3, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lk/B;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void

    .line 587
    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3
    .parameter

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lk/C;-><init>(Lorg/w3c/dom/Node;)V

    .line 592
    const-string v0, "param1"

    invoke-static {p1, v0}, Lk/B;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/B;->a:Ljava/lang/String;

    .line 593
    const-string v0, "param2"

    invoke-static {p1, v0}, Lk/B;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lk/B;->b:Ljava/lang/String;

    .line 594
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lk/B;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/B;->a:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' param2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lk/B;->b:Ljava/lang/String;

    invoke-static {v1}, Lk/k;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 600
    return-void
.end method
