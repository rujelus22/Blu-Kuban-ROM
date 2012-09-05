.class public Lorg/snmp4j/security/PrivAES192;
.super Lorg/snmp4j/security/PrivAES;
.source "PrivAES192.java"


# static fields
.field public static final ID:Lorg/snmp4j/smi/OID; = null

.field private static final serialVersionUID:J = -0x3086c6008cbf3039L


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, " 1.3.6.1.4.1.4976.2.2.1.1.1"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/snmp4j/security/PrivAES192;->ID:Lorg/snmp4j/smi/OID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/snmp4j/security/PrivAES;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getID()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lorg/snmp4j/security/PrivAES192;->ID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    return-object v0
.end method
