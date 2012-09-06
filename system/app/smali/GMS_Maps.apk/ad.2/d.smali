.class public Lad/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lad/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lad/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3042
    iput-object p1, p0, Lad/d;->a:Lad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3043
    iput-object p2, p0, Lad/d;->b:Ljava/lang/String;

    .line 3044
    iput-object p3, p0, Lad/d;->c:Ljava/lang/String;

    .line 3045
    iput-object p4, p0, Lad/d;->d:Ljava/lang/String;

    .line 3046
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3049
    iget-object v0, p0, Lad/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3053
    iget-object v0, p0, Lad/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3057
    iget-object v0, p0, Lad/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 3061
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 3063
    const/4 v1, 0x1

    iget-object v2, p0, Lad/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 3064
    const/4 v1, 0x2

    iget-object v2, p0, Lad/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 3065
    iget-object v1, p0, Lad/d;->d:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 3066
    const/4 v1, 0x3

    iget-object v2, p0, Lad/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 3068
    :cond_21
    return-object v0
.end method
