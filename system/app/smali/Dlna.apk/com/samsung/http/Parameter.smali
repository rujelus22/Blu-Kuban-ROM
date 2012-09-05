.class public Lcom/samsung/http/Parameter;
.super Ljava/lang/Object;
.source "Parameter.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/Parameter;->name:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/http/Parameter;->value:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, p1}, Lcom/samsung/http/Parameter;->setName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/samsung/http/Parameter;->setValue(Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/http/Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/http/Parameter;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/samsung/http/Parameter;->name:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/http/Parameter;->value:Ljava/lang/String;

    .line 65
    return-void
.end method
