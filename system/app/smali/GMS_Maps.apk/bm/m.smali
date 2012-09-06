.class public Lbm/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x21e

    const/4 v1, 0x0

    .line 20
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 21
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0x1256ce5

    sget-object v3, Lbm/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/m;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 23
    sget-object v2, Lbm/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbm/n;

    const/4 v0, 0x1

    sget-object v4, Lbm/ag;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbm/n;

    const/4 v0, 0x2

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbm/n;

    const/4 v0, 0x3

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 34
    return-void
.end method
