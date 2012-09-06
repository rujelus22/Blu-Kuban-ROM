.class public Lcom/google/googlenav/ck;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p1, p0, Lcom/google/googlenav/ck;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 670
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/googlenav/ck;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/googlenav/ck;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/googlenav/ck;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/googlenav/ck;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
