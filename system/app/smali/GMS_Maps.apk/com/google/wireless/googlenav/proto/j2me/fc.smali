.class public Lcom/google/wireless/googlenav/proto/j2me/fc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x224

    const/16 v6, 0x21b

    const/4 v1, 0x0

    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 55
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 56
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fc;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 58
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    invoke-virtual {v2, v7, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/4 v0, 0x4

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/16 v0, 0xc

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/ei;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/4 v0, 0x5

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/do;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/4 v0, 0x6

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/fc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/4 v0, 0x7

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/16 v0, 0x8

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/16 v0, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/16 v0, 0xa

    invoke-virtual {v2, v7, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fe;

    const/16 v0, 0xb

    invoke-virtual {v2, v7, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 96
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fc;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fd;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fd;

    invoke-virtual {v2, v7, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fd;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fd;

    const/4 v0, 0x4

    invoke-virtual {v2, v7, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 110
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fc;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/ff;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/ff;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dm;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 118
    return-void
.end method
