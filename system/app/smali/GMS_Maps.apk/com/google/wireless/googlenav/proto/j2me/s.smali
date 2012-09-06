.class public Lcom/google/wireless/googlenav/proto/j2me/s;
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
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x124

    const/4 v1, 0x0

    .line 31
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 32
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 33
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 34
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 36
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/s;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11b

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/t;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/D;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21a

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/t;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 44
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/s;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/u;

    invoke-virtual {v2, v4, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/u;

    const/4 v0, 0x4

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 52
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/s;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x11e

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/v;

    invoke-virtual {v2, v3, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21a

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/v;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/s;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 60
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/s;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x123

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/w;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/google/wireless/googlenav/proto/j2me/w;

    const/4 v0, 0x4

    invoke-virtual {v2, v4, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 68
    return-void
.end method
