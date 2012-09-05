.class Lorg/snmp4j/util/TableUtils$Row;
.super Ljava/util/Vector;
.source "TableUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Row"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1fe191a908bafe13L


# instance fields
.field private index:Lorg/snmp4j/smi/OID;

.field private final this$0:Lorg/snmp4j/util/TableUtils;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/TableUtils;Lorg/snmp4j/smi/OID;)V
    .registers 3
    .parameter
    .parameter "index"

    .prologue
    .line 787
    iput-object p1, p0, Lorg/snmp4j/util/TableUtils$Row;->this$0:Lorg/snmp4j/util/TableUtils;

    .line 788
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    .line 789
    iput-object p2, p0, Lorg/snmp4j/util/TableUtils$Row;->index:Lorg/snmp4j/smi/OID;

    .line 790
    return-void
.end method

.method static access$300(Lorg/snmp4j/util/TableUtils$Row;)Lorg/snmp4j/smi/OID;
    .registers 2
    .parameter "x0"

    .prologue
    .line 781
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$Row;->index:Lorg/snmp4j/smi/OID;

    return-object v0
.end method


# virtual methods
.method public getNumComplete()I
    .registers 2

    .prologue
    .line 797
    invoke-super {p0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getRowIndex()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 793
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$Row;->index:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public setNumComplete(I)Z
    .registers 5
    .parameter "numberOfColumnsComplete"

    .prologue
    .line 801
    invoke-virtual {p0}, Lorg/snmp4j/util/TableUtils$Row;->getNumComplete()I

    move-result v2

    sub-int v1, p1, v2

    .line 802
    .local v1, sz:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_10

    .line 803
    const/4 v2, 0x0

    invoke-super {p0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 802
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 805
    :cond_10
    if-ltz v1, :cond_14

    const/4 v2, 0x1

    :goto_13
    return v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method
