.class public Lbm/a;
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

    .line 9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 10
    new-instance v0, Lcom/google/googlenav/common/io/protocol/Extension;

    const/16 v2, 0x44e

    sget-object v3, Lbm/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/Extension;-><init>(ILcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    sput-object v0, Lbm/a;->b:Lcom/google/googlenav/common/io/protocol/Extension;

    .line 12
    sget-object v2, Lbm/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbm/b;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbm/b;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 20
    return-void
.end method
