.class public Lcom/google/wireless/googlenav/proto/j2me/ClientCapabilities;
.super Ljava/lang/Object;


# static fields
.field public static final CLIENT_CAPABILITIES_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x218

    const/16 v2, 0x215

    const/4 v3, 0x0

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientCapabilities;->CLIENT_CAPABILITIES_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientCapabilities;->CLIENT_CAPABILITIES_PROTO:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x41e

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x11

    sget-object v2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x12

    sget-object v2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
