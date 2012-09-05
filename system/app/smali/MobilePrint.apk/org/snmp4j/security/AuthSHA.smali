.class public Lorg/snmp4j/security/AuthSHA;
.super Lorg/snmp4j/security/AuthGeneric;
.source "AuthSHA.java"


# static fields
.field public static final ID:Lorg/snmp4j/smi/OID; = null

.field private static final serialVersionUID:J = 0x20b1d34f7098795fL


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    new-instance v0, Lorg/snmp4j/smi/OID;

    const-string v1, "1.3.6.1.6.3.10.1.1.3"

    invoke-direct {v0, v1}, Lorg/snmp4j/smi/OID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/snmp4j/security/AuthSHA;->ID:Lorg/snmp4j/smi/OID;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 39
    const-string v0, "SHA-1"

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/snmp4j/security/AuthGeneric;-><init>(Ljava/lang/String;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public getID()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 43
    sget-object v0, Lorg/snmp4j/security/AuthSHA;->ID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0}, Lorg/snmp4j/smi/OID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/OID;

    return-object v0
.end method
