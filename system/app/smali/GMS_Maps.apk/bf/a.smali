.class public Lbf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x21e

    const/16 v7, 0x218

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 53
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 55
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 56
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbf/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 58
    sget-object v2, Lbf/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/b;

    invoke-virtual {v2, v8, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/b;

    invoke-virtual {v2, v7, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/b;

    const/4 v0, 0x3

    invoke-virtual {v2, v7, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 69
    sget-object v2, Lbf/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbf/c;

    sget-object v0, Lbf/P;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbf/c;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbf/c;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/c;

    const/4 v0, 0x4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbf/c;

    const/4 v0, 0x7

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbf/c;

    const/4 v0, 0x5

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbf/c;

    const/4 v0, 0x6

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v8, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 92
    sget-object v2, Lbf/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbf/d;

    invoke-virtual {v2, v7, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbf/d;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 100
    sget-object v0, Lbf/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v2, 0x41b

    check-cast v1, Lbf/e;

    sget-object v1, Lbf/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 105
    return-void
.end method
