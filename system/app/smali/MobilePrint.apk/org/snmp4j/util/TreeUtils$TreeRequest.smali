.class Lorg/snmp4j/util/TreeUtils$TreeRequest;
.super Ljava/lang/Object;
.source "TreeUtils.java"

# interfaces
.implements Lorg/snmp4j/event/ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TreeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TreeRequest"
.end annotation


# instance fields
.field private listener:Lorg/snmp4j/util/TreeListener;

.field private request:Lorg/snmp4j/PDU;

.field private rootOID:Lorg/snmp4j/smi/OID;

.field private target:Lorg/snmp4j/Target;

.field private final this$0:Lorg/snmp4j/util/TreeUtils;

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/TreeUtils;Lorg/snmp4j/util/TreeListener;Lorg/snmp4j/smi/OID;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/PDU;)V
    .registers 7
    .parameter
    .parameter "listener"
    .parameter "rootOID"
    .parameter "target"
    .parameter "userObject"
    .parameter "request"

    .prologue
    .line 179
    iput-object p1, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->this$0:Lorg/snmp4j/util/TreeUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    .line 181
    iput-object p5, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    .line 182
    iput-object p6, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->request:Lorg/snmp4j/PDU;

    .line 183
    iput-object p3, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->rootOID:Lorg/snmp4j/smi/OID;

    .line 184
    iput-object p4, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->target:Lorg/snmp4j/Target;

    .line 185
    return-void
.end method


# virtual methods
.method public onResponse(Lorg/snmp4j/event/ResponseEvent;)V
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    .line 197
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->this$0:Lorg/snmp4j/util/TreeUtils;

    iget-object v8, v8, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getRequest()Lorg/snmp4j/PDU;

    move-result-object v9

    invoke-interface {v8, v9, p0}, Lorg/snmp4j/Session;->cancel(Lorg/snmp4j/PDU;Lorg/snmp4j/event/ResponseListener;)V

    .line 198
    invoke-virtual {p1}, Lorg/snmp4j/event/ResponseEvent;->getResponse()Lorg/snmp4j/PDU;

    move-result-object v5

    .line 199
    .local v5, respPDU:Lorg/snmp4j/PDU;
    if-nez v5, :cond_20

    .line 200
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    const/4 v11, -0x1

    invoke-direct {v9, p0, v10, v11}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    .line 259
    :cond_1f
    :goto_1f
    return-void

    .line 203
    :cond_20
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v8

    if-eqz v8, :cond_37

    .line 204
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getErrorStatus()I

    move-result v11

    invoke-direct {v9, p0, v10, v11}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    goto :goto_1f

    .line 207
    :cond_37
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->getType()I

    move-result v8

    const/16 v9, -0x58

    if-ne v8, v9, :cond_4c

    .line 208
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    invoke-direct {v9, p0, v10, v5}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/snmp4j/PDU;)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    goto :goto_1f

    .line 211
    :cond_4c
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 212
    .local v2, l:Ljava/util/List;
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->request:Lorg/snmp4j/PDU;

    invoke-virtual {v8, v12}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v8

    invoke-virtual {v8}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v3

    .line 213
    .local v3, lastOID:Lorg/snmp4j/smi/OID;
    const/4 v0, 0x0

    .line 214
    .local v0, finished:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_61
    if-nez v0, :cond_c9

    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v8

    if-ge v1, v8, :cond_c9

    .line 215
    invoke-virtual {v5, v1}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v6

    .line 216
    .local v6, vb:Lorg/snmp4j/smi/VariableBinding;
    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    if-eqz v8, :cond_95

    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual {v8}, Lorg/snmp4j/smi/OID;->size()I

    move-result v8

    iget-object v9, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->rootOID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v9}, Lorg/snmp4j/smi/OID;->size()I

    move-result v9

    if-lt v8, v9, :cond_95

    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->rootOID:Lorg/snmp4j/smi/OID;

    iget-object v9, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->rootOID:Lorg/snmp4j/smi/OID;

    invoke-virtual {v9}, Lorg/snmp4j/smi/OID;->size()I

    move-result v9

    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/snmp4j/smi/OID;->leftMostCompare(ILorg/snmp4j/smi/OID;)I

    move-result v8

    if-eqz v8, :cond_99

    .line 219
    :cond_95
    const/4 v0, 0x1

    .line 214
    :goto_96
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 221
    :cond_99
    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v8

    invoke-interface {v8}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v8

    invoke-static {v8}, Lorg/snmp4j/smi/Null;->isExceptionSyntax(I)Z

    move-result v8

    if-eqz v8, :cond_a9

    .line 222
    const/4 v0, 0x1

    goto :goto_96

    .line 224
    :cond_a9
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->this$0:Lorg/snmp4j/util/TreeUtils;

    invoke-static {v8}, Lorg/snmp4j/util/TreeUtils;->access$000(Lorg/snmp4j/util/TreeUtils;)Z

    move-result v8

    if-nez v8, :cond_ef

    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/snmp4j/smi/OID;->compareTo(Ljava/lang/Object;)I

    move-result v8

    if-gtz v8, :cond_ef

    .line 226
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    const/4 v11, -0x2

    invoke-direct {v9, p0, v10, v11}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    .line 228
    const/4 v0, 0x1

    .line 236
    .end local v6           #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_c9
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v8

    if-nez v8, :cond_d0

    .line 237
    const/4 v0, 0x1

    .line 239
    :cond_d0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/snmp4j/smi/VariableBinding;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/snmp4j/smi/VariableBinding;

    move-object v7, v8

    check-cast v7, [Lorg/snmp4j/smi/VariableBinding;

    .line 241
    .local v7, vbs:[Lorg/snmp4j/smi/VariableBinding;
    if-eqz v0, :cond_f7

    .line 242
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    invoke-direct {v9, p0, v10, v7}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    goto/16 :goto_1f

    .line 232
    .end local v7           #vbs:[Lorg/snmp4j/smi/VariableBinding;
    .restart local v6       #vb:Lorg/snmp4j/smi/VariableBinding;
    :cond_ef
    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getOid()Lorg/snmp4j/smi/OID;

    move-result-object v3

    .line 233
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_96

    .line 245
    .end local v6           #vb:Lorg/snmp4j/smi/VariableBinding;
    .restart local v7       #vbs:[Lorg/snmp4j/smi/VariableBinding;
    :cond_f7
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v9, Lorg/snmp4j/util/TreeEvent;

    iget-object v10, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    invoke-direct {v9, p0, v10, v7}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;[Lorg/snmp4j/smi/VariableBinding;)V

    invoke-interface {v8, v9}, Lorg/snmp4j/util/TreeListener;->next(Lorg/snmp4j/util/TreeEvent;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 246
    invoke-virtual {v5}, Lorg/snmp4j/PDU;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lorg/snmp4j/PDU;->get(I)Lorg/snmp4j/smi/VariableBinding;

    move-result-object v8

    invoke-virtual {v8}, Lorg/snmp4j/smi/VariableBinding;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/snmp4j/smi/VariableBinding;

    .line 248
    .local v4, next:Lorg/snmp4j/smi/VariableBinding;
    new-instance v8, Lorg/snmp4j/smi/Null;

    invoke-direct {v8}, Lorg/snmp4j/smi/Null;-><init>()V

    invoke-virtual {v4, v8}, Lorg/snmp4j/smi/VariableBinding;->setVariable(Lorg/snmp4j/smi/Variable;)V

    .line 249
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->request:Lorg/snmp4j/PDU;

    invoke-virtual {v8, v12, v4}, Lorg/snmp4j/PDU;->set(ILorg/snmp4j/smi/VariableBinding;)Lorg/snmp4j/smi/VariableBinding;

    .line 250
    iget-object v8, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->request:Lorg/snmp4j/PDU;

    new-instance v9, Lorg/snmp4j/smi/Integer32;

    invoke-direct {v9, v12}, Lorg/snmp4j/smi/Integer32;-><init>(I)V

    invoke-virtual {v8, v9}, Lorg/snmp4j/PDU;->setRequestID(Lorg/snmp4j/smi/Integer32;)V

    .line 251
    invoke-virtual {p0}, Lorg/snmp4j/util/TreeUtils$TreeRequest;->send()V

    goto/16 :goto_1f
.end method

.method public send()V
    .registers 6

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->this$0:Lorg/snmp4j/util/TreeUtils;

    iget-object v1, v1, Lorg/snmp4j/util/AbstractSnmpUtility;->session:Lorg/snmp4j/Session;

    iget-object v2, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->request:Lorg/snmp4j/PDU;

    iget-object v3, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->target:Lorg/snmp4j/Target;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4, p0}, Lorg/snmp4j/Session;->send(Lorg/snmp4j/PDU;Lorg/snmp4j/Target;Ljava/lang/Object;Lorg/snmp4j/event/ResponseListener;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 194
    :goto_c
    return-void

    .line 191
    :catch_d
    move-exception v0

    .line 192
    .local v0, iox:Ljava/io/IOException;
    iget-object v1, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->listener:Lorg/snmp4j/util/TreeListener;

    new-instance v2, Lorg/snmp4j/util/TreeEvent;

    iget-object v3, p0, Lorg/snmp4j/util/TreeUtils$TreeRequest;->userObject:Ljava/lang/Object;

    invoke-direct {v2, p0, v3, v0}, Lorg/snmp4j/util/TreeEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    invoke-interface {v1, v2}, Lorg/snmp4j/util/TreeListener;->finished(Lorg/snmp4j/util/TreeEvent;)V

    goto :goto_c
.end method
