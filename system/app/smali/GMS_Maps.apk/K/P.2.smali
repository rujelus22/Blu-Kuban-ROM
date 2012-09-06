.class public Lk/p;
.super Lk/q;
.source "SourceFile"


# instance fields
.field private final b:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/location/Location;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lk/q;-><init>(Ljava/lang/String;)V

    .line 114
    iput-object p1, p0, Lk/p;->b:Landroid/location/Location;

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 5
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lk/q;-><init>(Lorg/w3c/dom/Node;)V

    .line 124
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lk/p;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lm/e;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lk/p;->b:Landroid/location/Location;

    .line 128
    iget-object v0, p0, Lk/p;->b:Landroid/location/Location;

    if-nez v0, :cond_38

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid location event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_38
    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lk/p;->b:Landroid/location/Location;

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 5
    .parameter

    .prologue
    .line 136
    new-instance v0, Lm/e;

    iget-object v1, p0, Lk/p;->b:Landroid/location/Location;

    invoke-direct {v0, v1}, Lm/e;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0}, Lm/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<location provider=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lk/p;->a:Ljava/lang/String;

    invoke-static {v2}, Lk/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</location>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    return-void
.end method
