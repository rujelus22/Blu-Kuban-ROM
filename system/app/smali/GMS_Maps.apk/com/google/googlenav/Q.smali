.class public Lcom/google/googlenav/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/googlenav/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/googlenav/q;
    .registers 11
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 79
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbq/G;->y:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 80
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/friend/aF;

    .line 81
    sget-object v3, Lcom/google/googlenav/p;->a:[I

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->d()Lcom/google/googlenav/friend/aI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/friend/aI;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_86

    goto :goto_f

    .line 83
    :pswitch_2b
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbq/G;->x:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 84
    invoke-virtual {v3, v6, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 85
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v4

    invoke-virtual {v3, v9, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 86
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_f

    .line 91
    :pswitch_47
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbq/G;->x:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 92
    invoke-virtual {v3, v6, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 94
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 95
    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_f

    .line 99
    :pswitch_63
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v4, Lbq/G;->x:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 100
    invoke-virtual {v3, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->a()J

    move-result-wide v4

    invoke-virtual {v3, v7, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    invoke-virtual {v0}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 103
    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_f

    .line 108
    :cond_7f
    new-instance v0, Lcom/google/googlenav/q;

    invoke-direct {v0, v1}, Lcom/google/googlenav/q;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0

    .line 81
    nop

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_47
        :pswitch_63
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/q;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
