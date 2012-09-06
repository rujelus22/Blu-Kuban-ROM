.class public Lbm/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 8
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/bk;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const/16 v1, 0x44d

    sget-object v2, Lbm/bk;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/bk;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 11
    sget-object v1, Lbm/bk;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v2, 0x21b

    const/4 v0, 0x0

    check-cast v0, Lbm/bl;

    const/4 v0, 0x1

    sget-object v3, Lbm/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 16
    return-void
.end method
