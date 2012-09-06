.class public Lcom/google/wireless/googlenav/proto/j2me/is;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x21b

    const/16 v5, 0x218

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 17
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/is;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 18
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/is;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 20
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/is;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    const/4 v0, 0x2

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    const/4 v0, 0x3

    sget-object v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    const/4 v0, 0x5

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/eu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/it;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 40
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/is;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/iu;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 45
    return-void
.end method
