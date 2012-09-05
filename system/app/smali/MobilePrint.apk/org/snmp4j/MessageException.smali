.class public Lorg/snmp4j/MessageException;
.super Ljava/io/IOException;
.source "MessageException.java"


# static fields
.field private static final serialVersionUID:J = 0x62efd9f7e7da65d1L


# instance fields
.field private statusInformation:Lorg/snmp4j/mp/StatusInformation;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "message"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/mp/StatusInformation;)V
    .registers 4
    .parameter "status"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/snmp4j/mp/StatusInformation;->getErrorIndication()Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p1}, Lorg/snmp4j/MessageException;->setStatusInformation(Lorg/snmp4j/mp/StatusInformation;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getStatusInformation()Lorg/snmp4j/mp/StatusInformation;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/snmp4j/MessageException;->statusInformation:Lorg/snmp4j/mp/StatusInformation;

    return-object v0
.end method

.method public setStatusInformation(Lorg/snmp4j/mp/StatusInformation;)V
    .registers 2
    .parameter "statusInformation"

    .prologue
    .line 64
    iput-object p1, p0, Lorg/snmp4j/MessageException;->statusInformation:Lorg/snmp4j/mp/StatusInformation;

    .line 65
    return-void
.end method
