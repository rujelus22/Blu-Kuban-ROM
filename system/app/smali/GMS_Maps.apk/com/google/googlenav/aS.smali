.class public Lcom/google/googlenav/as;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ai;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3930
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3933
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3934
    if-eqz v0, :cond_6d

    .line 3935
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/as;->b:Ljava/lang/String;

    .line 3936
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->c:Ljava/lang/String;

    .line 3942
    :goto_19
    invoke-virtual {p2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    .line 3943
    const/4 v0, 0x6

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->i:Ljava/lang/String;

    .line 3944
    invoke-virtual {p2, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->e:Ljava/lang/String;

    .line 3945
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->f:Ljava/lang/String;

    .line 3946
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->g:Ljava/lang/String;

    .line 3947
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/as;->h:Ljava/lang/String;

    .line 3948
    iput-object p1, p0, Lcom/google/googlenav/as;->a:Lcom/google/googlenav/ai;

    .line 3950
    const/16 v1, 0x9

    .line 3951
    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lez v0, :cond_72

    .line 3952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/as;->j:Ljava/util/List;

    .line 3953
    const/4 v0, 0x0

    :goto_56
    invoke-virtual {p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ge v0, v2, :cond_72

    .line 3954
    invoke-virtual {p2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 3955
    iget-object v3, p0, Lcom/google/googlenav/as;->j:Ljava/util/List;

    new-instance v4, Lcom/google/googlenav/at;

    invoke-direct {v4, v2}, Lcom/google/googlenav/at;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3953
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 3938
    :cond_6d
    iput-object v1, p0, Lcom/google/googlenav/as;->b:Ljava/lang/String;

    .line 3939
    iput-object v1, p0, Lcom/google/googlenav/as;->c:Ljava/lang/String;

    goto :goto_19

    .line 3958
    :cond_72
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3976
    iget-object v0, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 3977
    iget-object v1, p0, Lcom/google/googlenav/as;->i:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    .line 3979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3980
    if-nez v0, :cond_18

    .line 3981
    iget-object v3, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    :cond_18
    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 3984
    const-string v0, " - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3986
    :cond_21
    if-nez v1, :cond_28

    .line 3987
    iget-object v0, p0, Lcom/google/googlenav/as;->i:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3989
    :cond_28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4001
    iget-object v0, p0, Lcom/google/googlenav/as;->h:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4002
    iget-object v0, p0, Lcom/google/googlenav/as;->h:Ljava/lang/String;

    .line 4021
    :goto_a
    return-object v0

    .line 4007
    :cond_b
    const/4 v0, 0x1

    .line 4008
    invoke-virtual {p0}, Lcom/google/googlenav/as;->c()Ljava/lang/String;

    move-result-object v1

    .line 4010
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4011
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4012
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4013
    const/4 v0, 0x0

    .line 4015
    :cond_1f
    iget-object v1, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 4016
    if-nez v0, :cond_2e

    .line 4017
    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/as;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    :cond_33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4037
    iget-object v0, p0, Lcom/google/googlenav/as;->g:Ljava/lang/String;

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4038
    iget-object v0, p0, Lcom/google/googlenav/as;->g:Ljava/lang/String;

    .line 4056
    :goto_a
    return-object v0

    .line 4043
    :cond_b
    const/4 v0, 0x1

    .line 4044
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4045
    iget-object v2, p0, Lcom/google/googlenav/as;->f:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 4046
    iget-object v0, p0, Lcom/google/googlenav/as;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4047
    const/4 v0, 0x0

    .line 4049
    :cond_1f
    iget-object v2, p0, Lcom/google/googlenav/as;->e:Ljava/lang/String;

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 4050
    if-nez v0, :cond_2e

    .line 4051
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4053
    :cond_2e
    iget-object v0, p0, Lcom/google/googlenav/as;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4056
    :cond_33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4060
    iget-object v0, p0, Lcom/google/googlenav/as;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4068
    iget-object v0, p0, Lcom/google/googlenav/as;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 4072
    iget-object v0, p0, Lcom/google/googlenav/as;->a:Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/google/googlenav/as;->j:Ljava/util/List;

    return-object v0
.end method
