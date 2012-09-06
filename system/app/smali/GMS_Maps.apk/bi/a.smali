.class public Lbi/a;
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
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/16 v5, 0x215

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbi/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 44
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbi/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 45
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbi/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 46
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbi/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 47
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lbi/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 49
    sget-object v2, Lbi/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbi/d;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbi/d;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 57
    sget-object v2, Lbi/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-object v0, v1

    check-cast v0, Lbi/e;

    invoke-virtual {v2, v5, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lbi/e;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbi/e;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbi/e;

    const/16 v0, 0x10

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 71
    sget-object v2, Lbi/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lbi/f;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbi/f;

    invoke-virtual {v2, v5, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbi/f;

    invoke-virtual {v2, v5, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 82
    sget-object v2, Lbi/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x117

    move-object v0, v1

    check-cast v0, Lbi/b;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x117

    move-object v0, v1

    check-cast v0, Lbi/b;

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lbi/b;

    invoke-virtual {v2, v3, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x223

    move-object v0, v1

    check-cast v0, Lbi/b;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lbi/b;

    const/4 v0, 0x5

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, Lbi/b;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 102
    sget-object v2, Lbi/a;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    const/16 v3, 0x115

    move-object v0, v1

    check-cast v0, Lbi/c;

    invoke-virtual {v2, v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbi/c;

    sget-object v0, Lbi/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbi/c;

    sget-object v0, Lbi/a;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbi/c;

    const/4 v0, 0x4

    sget-object v4, Lbi/a;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v2, 0x41b

    check-cast v1, Lbi/c;

    const/4 v1, 0x5

    sget-object v3, Lbi/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 119
    return-void
.end method
