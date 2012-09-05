.class public Lcom/samsung/xml/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Attribute;->name:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/xml/Attribute;->value:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p1}, Lcom/samsung/xml/Attribute;->setName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/samsung/xml/Attribute;->setValue(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/xml/Attribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/xml/Attribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 45
    if-nez p1, :cond_3

    .line 48
    :goto_2
    return-void

    .line 47
    :cond_3
    iput-object p1, p0, Lcom/samsung/xml/Attribute;->name:Ljava/lang/String;

    goto :goto_2
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/xml/Attribute;->name:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 64
    :goto_4
    return-void

    .line 63
    :cond_5
    iput-object p1, p0, Lcom/samsung/xml/Attribute;->value:Ljava/lang/String;

    goto :goto_4
.end method
