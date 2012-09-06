.class LF/l;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Long;

.field private final d:LF/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LF/e;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 132
    iput-object p1, p0, LF/l;->a:Landroid/content/Context;

    .line 133
    iput-object p2, p0, LF/l;->b:Ljava/lang/String;

    .line 134
    iput-object p3, p0, LF/l;->c:Ljava/lang/Long;

    .line 135
    iput-object p4, p0, LF/l;->d:LF/e;

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LF/e;LF/k;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, LF/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LF/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 140
    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 150
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 151
    const/4 v1, 0x7

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 152
    iget-object v1, p0, LF/l;->c:Ljava/lang/Long;

    if-eqz v1, :cond_1a

    .line 153
    const/4 v1, 0x2

    iget-object v2, p0, LF/l;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 155
    :cond_1a
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 156
    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 158
    invoke-static {v1}, Lcom/google/googlenav/clientparam/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 160
    invoke-virtual {v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 161
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 162
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10
    .parameter

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x1

    .line 166
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 168
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 169
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_45

    .line 170
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 172
    invoke-virtual {v3, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_42

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 176
    iget-object v4, p0, LF/l;->a:Landroid/content/Context;

    iget-object v5, p0, LF/l;->b:Ljava/lang/String;

    invoke-static {v4, v3, v5}, LF/r;->a(Landroid/content/Context;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 177
    invoke-virtual {v3, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 178
    new-instance v4, LF/q;

    invoke-direct {v4, v3}, LF/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-static {v4}, LF/j;->a(LF/q;)LF/q;

    .line 179
    invoke-static {}, LF/j;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 182
    :cond_45
    sput-boolean v6, LF/j;->a:Z

    .line 183
    iget-object v0, p0, LF/l;->d:LF/e;

    if-eqz v0, :cond_50

    .line 184
    iget-object v0, p0, LF/l;->d:LF/e;

    invoke-interface {v0}, LF/e;->a()V

    .line 186
    :cond_50
    return v6
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method
