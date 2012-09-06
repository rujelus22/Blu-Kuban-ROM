.class public Lcom/google/wireless/googlenav/proto/j2me/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x215

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 20
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 22
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 24
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bA;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/D;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bA;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v8, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x413

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bA;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 35
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bB;

    const/16 v0, 0x11

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41a

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bB;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 43
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x122

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bC;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/bC;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 51
    return-void
.end method
