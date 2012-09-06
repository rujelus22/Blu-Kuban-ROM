.class public Lcom/google/wireless/googlenav/proto/j2me/en;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x215

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/en;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/en;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 24
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/en;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/eo;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/do;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 29
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/en;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ep;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x413

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ep;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ep;

    const/4 v0, 0x3

    sget-object v4, Lcom/google/wireless/googlenav/proto/j2me/do;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ep;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ep;

    const/4 v0, 0x5

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 46
    return-void
.end method
