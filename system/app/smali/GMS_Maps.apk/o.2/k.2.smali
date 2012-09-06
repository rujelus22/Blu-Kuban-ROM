.class public Lo/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private b:Lo/I;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lo/K;->a:I

    .line 73
    iput-object p2, p0, Lo/K;->c:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lo/K;->d:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lo/K;->e:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lo/K;->f:Ljava/lang/String;

    .line 77
    iput-boolean p6, p0, Lo/K;->g:Z

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/K;
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lo/K;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/K;

    move-result-object v0

    return-object v0
.end method

.method private a(Lo/I;)V
    .registers 2
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lo/K;->b:Lo/I;

    .line 101
    return-void
.end method

.method static synthetic a(Lo/K;Lo/I;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lo/K;->a(Lo/I;)V

    return-void
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/K;
    .registers 9
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 81
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 82
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 87
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 88
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 90
    :goto_20
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_2c

    .line 92
    :goto_26
    new-instance v0, Lo/K;

    invoke-direct/range {v0 .. v6}, Lo/K;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 90
    :cond_2c
    const/4 v6, 0x0

    goto :goto_26

    :cond_2e
    move-object v4, v5

    goto :goto_20
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 104
    iget v0, p0, Lo/K;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lo/K;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lo/K;->d:Ljava/lang/String;

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/K;->c:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lo/K;->d:Ljava/lang/String;

    goto :goto_6
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lo/K;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lo/K;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lo/K;->g:Z

    return v0
.end method

.method public g()Lo/I;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lo/K;->b:Lo/I;

    return-object v0
.end method
