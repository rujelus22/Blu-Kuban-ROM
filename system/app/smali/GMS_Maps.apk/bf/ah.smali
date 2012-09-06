.class public Lbf/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .prologue
    const-wide/32 v10, 0x15180

    const-wide/16 v8, 0x0

    const/16 v7, 0x218

    const/16 v6, 0x215

    const/4 v1, 0x0

    .line 28
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/ah;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 30
    sget-object v2, Lbf/ah;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x1

    invoke-static {v8, v9}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x2

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x214

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x3

    const-wide/32 v4, 0x93a80

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x4

    invoke-static {v10, v11}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x5

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/4 v0, 0x6

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v7, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0xb

    invoke-static {v8, v9}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0xc

    invoke-static {v8, v9}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0xd

    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0xe

    const-wide/16 v3, 0x12c

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0xf

    const-wide/32 v3, 0x2a300

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x10

    const-wide/32 v3, 0x2a300

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x15

    const-wide/16 v3, 0x258

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x16

    const-wide/32 v3, 0x12c00

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x17

    const-wide/16 v3, 0x4ec

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x1f

    const-wide/16 v3, 0x258

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x20

    invoke-static {v10, v11}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x22

    const-wide/16 v3, 0x3200

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x23

    const-wide/16 v3, 0x3840

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/ai;

    const/16 v0, 0x24

    const-wide/16 v3, 0x4ec

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lbf/ai;

    const/16 v1, 0x25

    invoke-static {v10, v11}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 95
    return-void
.end method
