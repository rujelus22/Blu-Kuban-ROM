.class public Lbq/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 12
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbq/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 14
    sget-object v2, Lbq/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbq/bi;

    const/4 v0, 0x1

    sget-object v4, Lbq/G;->E:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lbq/bi;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbq/bi;

    const/4 v0, 0x3

    sget-object v4, Lbj/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x213

    move-object v0, v1

    check-cast v0, Lbq/bi;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 28
    return-void
.end method
