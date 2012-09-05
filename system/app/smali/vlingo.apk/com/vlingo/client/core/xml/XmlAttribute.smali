.class public Lcom/vlingo/client/core/xml/XmlAttribute;
.super Ljava/lang/Object;
.source "XmlAttribute.java"


# instance fields
.field private final attributeType:I

.field private final attributeValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "attributeType"
    .parameter "attributeValue"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/vlingo/client/core/xml/XmlAttribute;->attributeType:I

    .line 18
    iput-object p2, p0, Lcom/vlingo/client/core/xml/XmlAttribute;->attributeValue:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/vlingo/client/core/xml/XmlAttribute;->attributeType:I

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/vlingo/client/core/xml/XmlAttribute;->attributeValue:Ljava/lang/String;

    return-object v0
.end method
