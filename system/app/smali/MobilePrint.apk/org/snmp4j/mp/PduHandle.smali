.class public Lorg/snmp4j/mp/PduHandle;
.super Ljava/lang/Object;
.source "PduHandle.java"


# static fields
.field public static final NONE:I = -0x80000000

.field private static final serialVersionUID:J = -0x5857bd0558d648d6L


# instance fields
.field private transactionID:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, -0x8000

    iput v0, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "transactionID"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, -0x8000

    iput v0, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    .line 50
    invoke-virtual {p0, p1}, Lorg/snmp4j/mp/PduHandle;->setTransactionID(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public copyFrom(Lorg/snmp4j/mp/PduHandle;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 77
    iget v0, p1, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    invoke-virtual {p0, v0}, Lorg/snmp4j/mp/PduHandle;->setTransactionID(I)V

    .line 78
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "obj"

    .prologue
    const/4 v0, 0x0

    .line 88
    instance-of v1, p1, Lorg/snmp4j/mp/PduHandle;

    if-eqz v1, :cond_e

    .line 89
    iget v1, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    check-cast p1, Lorg/snmp4j/mp/PduHandle;

    .end local p1
    iget v2, p1, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 91
    :cond_e
    return v0
.end method

.method public getTransactionID()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    return v0
.end method

.method public setTransactionID(I)V
    .registers 2
    .parameter "transactionID"

    .prologue
    .line 68
    iput p1, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "PduHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/mp/PduHandle;->transactionID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
