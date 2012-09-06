.class public Lbm/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 16
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbm/bi;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 18
    sget-object v2, Lbm/bi;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lbm/bj;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21d

    move-object v0, v1

    check-cast v0, Lbm/bj;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 26
    return-void
.end method
