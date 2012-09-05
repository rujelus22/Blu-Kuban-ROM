.class public Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;
.super Ljava/lang/Object;
.source "SimpleAttributeTableGenerator.java"

# interfaces
.implements Lmyorg/bouncycastle/cms/CMSAttributeTableGenerator;


# instance fields
.field private final attributes:Lmyorg/bouncycastle/asn1/cms/AttributeTable;


# direct methods
.method public constructor <init>(Lmyorg/bouncycastle/asn1/cms/AttributeTable;)V
    .registers 2
    .parameter "attributes"

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;->attributes:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    .line 16
    return-void
.end method


# virtual methods
.method public getAttributes(Ljava/util/Map;)Lmyorg/bouncycastle/asn1/cms/AttributeTable;
    .registers 3
    .parameter "parameters"

    .prologue
    .line 19
    iget-object v0, p0, Lmyorg/bouncycastle/cms/SimpleAttributeTableGenerator;->attributes:Lmyorg/bouncycastle/asn1/cms/AttributeTable;

    return-object v0
.end method
