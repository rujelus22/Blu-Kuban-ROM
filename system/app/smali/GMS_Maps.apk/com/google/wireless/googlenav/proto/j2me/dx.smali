.class public Lcom/google/wireless/googlenav/proto/j2me/dx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 20
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/dx;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/dx;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 23
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dx;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/dy;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 28
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/dx;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/dz;

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v2, 0x21b

    check-cast v1, Lcom/google/wireless/googlenav/proto/j2me/dz;

    const/4 v1, 0x2

    sget-object v3, Lbl/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 36
    return-void
.end method
