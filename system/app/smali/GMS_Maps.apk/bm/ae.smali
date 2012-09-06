.class public Lbm/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/Extension;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 8
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/ae;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const v2, 0x1319249

    sget-object v3, Lbm/ae;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/ae;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 11
    sget-object v2, Lbm/ae;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbm/af;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 16
    return-void
.end method
