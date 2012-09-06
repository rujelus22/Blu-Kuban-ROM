.class public Lbm/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 13
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 14
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/U;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 16
    sget-object v2, Lbm/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbm/V;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 21
    sget-object v0, Lbm/U;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v2, 0x41b

    check-cast v1, Lbm/W;

    sget-object v1, Lbm/aD;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 26
    return-void
.end method
