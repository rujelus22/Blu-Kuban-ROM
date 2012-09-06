.class public Lbc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field public static final e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x21b

    const/4 v1, 0x0

    .line 39
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbc/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 40
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbc/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 41
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 42
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbc/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 43
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbc/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 45
    sget-object v2, Lbc/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x413

    move-object v0, v1

    check-cast v0, Lbc/d;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lbc/d;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 53
    sget-object v2, Lbc/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lbc/f;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbc/f;

    invoke-virtual {v2, v3, v8, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 61
    sget-object v2, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbc/e;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21e

    move-object v0, v1

    check-cast v0, Lbc/e;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lbc/e;

    invoke-virtual {v2, v3, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 72
    sget-object v2, Lbc/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbc/b;

    sget-object v0, Lbc/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbc/b;

    sget-object v0, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbc/b;

    sget-object v0, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbc/b;

    const/4 v0, 0x5

    sget-object v3, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbc/b;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 89
    sget-object v2, Lbc/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbc/c;

    sget-object v0, Lbc/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbc/c;

    sget-object v0, Lbc/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v6, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    check-cast v1, Lbc/c;

    sget-object v1, Lbc/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 100
    return-void
.end method
