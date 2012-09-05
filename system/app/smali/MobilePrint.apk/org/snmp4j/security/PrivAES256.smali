.class public Lorg/snmp4j/security/PrivAES256;
.super Lorg/snmp4j/security/PrivAES;
.source "PrivAES256.java"


# static fields
.field public static final ID:Lorg/snmp4j/smi/OID; = null

.field private static final serialVersionUID:J = -0x40ee6ffb71e6cb1aL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, " 1.3.6.1.4.1.4976.2.2.1.1.2"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/snmp4j/security/PrivAES256;->ID:Lorg/snmp4j/smi/OID;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/snmp4j/security/PrivAES;-><init>(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getID()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 52
    sget-object v0, Lorg/snmp4j/security/PrivAES256;->ID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    return-object v0
.end method
