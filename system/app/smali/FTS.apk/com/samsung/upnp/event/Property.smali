.class public Lcom/samsung/upnp/event/Property;
.super Ljava/lang/Object;
.source "Property.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Property;->name:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/upnp/event/Property;->value:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/upnp/event/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/upnp/event/Property;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 51
    if-nez p1, :cond_4

    .line 52
    const-string p1, ""

    .line 53
    :cond_4
    iput-object p1, p0, Lcom/samsung/upnp/event/Property;->name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2
    .parameter "val"

    .prologue
    .line 67
    if-nez p1, :cond_4

    .line 68
    const-string p1, ""

    .line 69
    :cond_4
    iput-object p1, p0, Lcom/samsung/upnp/event/Property;->value:Ljava/lang/String;

    .line 70
    return-void
.end method
