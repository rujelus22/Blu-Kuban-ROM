.class public Lcom/google/wireless/googlenav/proto/j2me/fu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x41b

    const/16 v6, 0x224

    const/4 v1, 0x0

    .line 44
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 45
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 46
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 47
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/fu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 49
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    invoke-virtual {v2, v6, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/4 v0, 0x3

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/fu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/16 v0, 0x8

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/fu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/4 v0, 0x4

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/4 v0, 0x5

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/4 v0, 0x6

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/iC;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/4 v0, 0x7

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/fu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v4, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x213

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/16 v0, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/16 v0, 0xa

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fx;

    const/16 v0, 0xb

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 84
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x216

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fw;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 89
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fv;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fv;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fv;

    const/4 v0, 0x3

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fv;

    const/4 v0, 0x4

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 103
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fy;

    invoke-virtual {v2, v6, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/fy;

    const/4 v0, 0x3

    invoke-virtual {v2, v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 111
    return-void
.end method
