.class public Lorg/snmp4j/util/TableEvent;
.super Lorg/snmp4j/util/RetrievalEvent;
.source "TableEvent.java"


# static fields
.field private static final serialVersionUID:J = 0x2e5beca3fd2054b5L


# instance fields
.field private index:Lorg/snmp4j/smi/OID;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "source"
    .parameter "userObject"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iput-object p2, p0, Lorg/snmp4j/util/RetrievalEvent;->userObject:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "status"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iput p3, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter "source"
    .parameter "userObject"
    .parameter "exception"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    iput-object p3, p0, Lorg/snmp4j/util/RetrievalEvent;->exception:Ljava/lang/Exception;

    .line 74
    const/4 v0, -0x4

    iput v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V
    .registers 5
    .parameter "source"
    .parameter "userObject"
    .parameter "report"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/TableEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    iput-object p3, p0, Lorg/snmp4j/util/RetrievalEvent;->reportPDU:Lorg/snmp4j/PDU;

    .line 89
    const/4 v0, -0x3

    iput v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/smi/OID;[Lorg/snmp4j/smi/VariableBinding;)V
    .registers 5
    .parameter "source"
    .parameter "userObject"
    .parameter "index"
    .parameter "cols"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p4}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V

    .line 112
    iput-object p3, p0, Lorg/snmp4j/util/TableEvent;->index:Lorg/snmp4j/smi/OID;

    .line 113
    return-void
.end method


# virtual methods
.method public getColumns()[Lorg/snmp4j/smi/VariableBinding;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    return-object v0
.end method

.method public getIndex()Lorg/snmp4j/smi/OID;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lorg/snmp4j/util/TableEvent;->index:Lorg/snmp4j/smi/OID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/TableEvent;->index:Lorg/snmp4j/smi/OID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",vbs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    if-nez v0, :cond_5c

    const-string v0, "null"

    :goto_29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/RetrievalEvent;->exception:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ",report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/RetrievalEvent;->reportPDU:Lorg/snmp4j/PDU;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29
.end method
