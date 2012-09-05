.class public Lorg/snmp4j/CommunityTarget;
.super Lorg/snmp4j/AbstractTarget;
.source "CommunityTarget.java"


# static fields
.field static final serialVersionUID:J = 0x20bd35fe27085a3L


# instance fields
.field private community:Lorg/snmp4j/smi/OctetString;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/snmp4j/AbstractTarget;-><init>()V

    .line 37
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/CommunityTarget;->community:Lorg/snmp4j/smi/OctetString;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/Address;Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "address"
    .parameter "community"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/snmp4j/AbstractTarget;-><init>(Lorg/snmp4j/smi/Address;)V

    .line 37
    new-instance v0, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v0}, Lorg/snmp4j/smi/OctetString;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/CommunityTarget;->community:Lorg/snmp4j/smi/OctetString;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/snmp4j/CommunityTarget;->setVersion(I)V

    .line 56
    invoke-virtual {p0, p2}, Lorg/snmp4j/CommunityTarget;->setCommunity(Lorg/snmp4j/smi/OctetString;)V

    .line 57
    return-void
.end method


# virtual methods
.method public getCommunity()Lorg/snmp4j/smi/OctetString;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/snmp4j/CommunityTarget;->community:Lorg/snmp4j/smi/OctetString;

    return-object v0
.end method

.method public setCommunity(Lorg/snmp4j/smi/OctetString;)V
    .registers 4
    .parameter "community"

    .prologue
    .line 75
    if-nez p1, :cond_a

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Community must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_a
    iput-object p1, p0, Lorg/snmp4j/CommunityTarget;->community:Lorg/snmp4j/smi/OctetString;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CommunityTarget["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/snmp4j/CommunityTarget;->toStringAbstractTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", community="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/CommunityTarget;->community:Lorg/snmp4j/smi/OctetString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
