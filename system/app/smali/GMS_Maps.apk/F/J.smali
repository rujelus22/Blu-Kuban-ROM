.class public LF/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static volatile a:Z

.field private static volatile b:LF/q;

.field private static volatile c:LF/q;

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 42
    sput-boolean v1, LF/j;->a:Z

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, LF/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    invoke-static {}, LF/j;->c()V

    .line 58
    return-void
.end method

.method public static a()LF/q;
    .registers 1

    .prologue
    .line 70
    sget-object v0, LF/j;->b:LF/q;

    return-object v0
.end method

.method static synthetic a(LF/q;)LF/q;
    .registers 1
    .parameter

    .prologue
    .line 36
    sput-object p0, LF/j;->c:LF/q;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lac/h;LF/e;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    const-string v0, "TransitNavigationParameters"

    invoke-static {p0, p1, p2, v0}, LF/j;->a(Landroid/content/Context;Lac/h;LF/e;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method static a(Landroid/content/Context;Lac/h;LF/e;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x2

    .line 90
    sget-boolean v0, LF/j;->a:Z

    if-eqz v0, :cond_11

    .line 91
    invoke-static {}, LF/j;->b()V

    .line 92
    if-eqz p2, :cond_10

    .line 93
    invoke-interface {p2}, LF/e;->a()V

    .line 117
    :cond_10
    :goto_10
    return-void

    .line 99
    :cond_11
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {p0, p3, v0}, LF/r;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_50

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 108
    :goto_23
    new-instance v2, LF/q;

    invoke-direct {v2, v0}, LF/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v2, LF/j;->b:LF/q;

    .line 109
    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 111
    :goto_38
    if-eqz p1, :cond_10

    .line 112
    new-instance v0, LF/f;

    const-class v1, LF/l;

    invoke-direct {v0, p1, p2, v1}, LF/f;-><init>(Lac/h;LF/e;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lac/h;->a(Lac/q;)V

    .line 114
    new-instance v0, LF/l;

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LF/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LF/e;LF/k;)V

    invoke-virtual {p1, v0}, Lac/h;->c(Lac/g;)V

    goto :goto_10

    .line 105
    :cond_50
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 106
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->s:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    goto :goto_23

    :cond_5f
    move-object v3, v5

    .line 109
    goto :goto_38
.end method

.method static b()V
    .registers 3

    .prologue
    .line 82
    sget-object v0, LF/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 83
    sget-object v0, LF/j;->c:LF/q;

    sput-object v0, LF/j;->b:LF/q;

    .line 85
    :cond_e
    return-void
.end method

.method public static c()V
    .registers 3

    .prologue
    .line 192
    new-instance v0, LF/q;

    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->s:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-direct {v0, v1}, LF/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    sput-object v0, LF/j;->b:LF/q;

    .line 194
    return-void
.end method

.method static synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 36
    sget-object v0, LF/j;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method
