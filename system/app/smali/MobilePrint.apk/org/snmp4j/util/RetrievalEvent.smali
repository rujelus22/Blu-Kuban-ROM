.class public abstract Lorg/snmp4j/util/RetrievalEvent;
.super Ljava/util/EventObject;
.source "RetrievalEvent.java"


# static fields
.field public static final STATUS_EXCEPTION:I = -0x4

.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_REPORT:I = -0x3

.field public static final STATUS_TIMEOUT:I = -0x1

.field public static final STATUS_WRONG_ORDER:I = -0x2


# instance fields
.field protected exception:Ljava/lang/Exception;

.field protected reportPDU:Lorg/snmp4j/PDU;

.field protected status:I

.field protected userObject:Ljava/lang/Object;

.field protected vbs:[Lorg/snmp4j/smi/VariableBinding;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "source"
    .parameter "userObject"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 69
    iput-object p2, p0, Lorg/snmp4j/util/RetrievalEvent;->userObject:Ljava/lang/Object;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "status"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    iput p3, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter "source"
    .parameter "userObject"
    .parameter "exception"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    iput-object p3, p0, Lorg/snmp4j/util/RetrievalEvent;->exception:Ljava/lang/Exception;

    .line 98
    const/4 v0, -0x4

    iput v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V
    .registers 5
    .parameter "source"
    .parameter "userObject"
    .parameter "report"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    iput-object p3, p0, Lorg/snmp4j/util/RetrievalEvent;->reportPDU:Lorg/snmp4j/PDU;

    .line 113
    const/4 v0, -0x3

    iput v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V
    .registers 4
    .parameter "source"
    .parameter "userObject"
    .parameter "variableBindings"

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lorg/snmp4j/util/RetrievalEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    iput-object p3, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    .line 130
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 191
    iget v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    packed-switch v0, :pswitch_data_34

    .line 205
    iget v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    invoke-static {v0}, Lorg/snmp4j/PDU;->toErrorStatusText(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 193
    :pswitch_c
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->exception:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 196
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Report: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/snmp4j/util/RetrievalEvent;->reportPDU:Lorg/snmp4j/PDU;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 199
    :pswitch_2e
    const-string v0, "Request timed out."

    goto :goto_b

    .line 202
    :pswitch_31
    const-string v0, "Agent did not return variable bindings in lexicographic order."

    goto :goto_b

    .line 191
    :pswitch_data_34
    .packed-switch -0x4
        :pswitch_c
        :pswitch_13
        :pswitch_31
        :pswitch_2e
    .end packed-switch
.end method

.method public getException()Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getReportPDU()Lorg/snmp4j/PDU;
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->reportPDU:Lorg/snmp4j/PDU;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isError()Z
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lorg/snmp4j/util/RetrievalEvent;->status:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[vbs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v0, p0, Lorg/snmp4j/util/RetrievalEvent;->vbs:[Lorg/snmp4j/smi/VariableBinding;

    if-nez v0, :cond_50

    const-string v0, "null"

    :goto_1d
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

    :cond_50
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

    goto :goto_1d
.end method
