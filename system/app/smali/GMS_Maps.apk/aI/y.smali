.class public LaI/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lat/B;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/util/List;

.field private l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaI/y;->k:Ljava/util/List;

    .line 123
    return-void
.end method


# virtual methods
.method public a()LaI/w;
    .registers 15

    .prologue
    .line 186
    new-instance v0, LaI/w;

    iget-object v1, p0, LaI/y;->a:Ljava/lang/String;

    iget-object v2, p0, LaI/y;->b:Ljava/lang/String;

    iget-object v3, p0, LaI/y;->c:Ljava/lang/String;

    iget v4, p0, LaI/y;->d:I

    iget v5, p0, LaI/y;->e:I

    iget v6, p0, LaI/y;->f:I

    iget-object v7, p0, LaI/y;->g:Ljava/lang/String;

    iget-object v8, p0, LaI/y;->h:Lat/B;

    iget v9, p0, LaI/y;->i:I

    iget-object v10, p0, LaI/y;->j:Ljava/lang/String;

    iget-object v11, p0, LaI/y;->k:Ljava/util/List;

    const/4 v12, 0x0

    new-array v12, v12, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v12, p0, LaI/y;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v13}, LaI/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lat/B;ILjava/lang/String;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaI/x;)V

    return-object v0
.end method

.method public a(I)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 141
    iput p1, p0, LaI/y;->d:I

    .line 142
    return-object p0
.end method

.method public a(Lat/B;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, LaI/y;->h:Lat/B;

    .line 162
    return-object p0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/y;
    .registers 3
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, LaI/y;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-object p0
.end method

.method public a(Ljava/lang/String;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, LaI/y;->a:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public b(I)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 146
    iput p1, p0, LaI/y;->e:I

    .line 147
    return-object p0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, LaI/y;->l:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 182
    return-object p0
.end method

.method public b(Ljava/lang/String;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, LaI/y;->b:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public c(I)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 151
    iput p1, p0, LaI/y;->f:I

    .line 152
    return-object p0
.end method

.method public c(Ljava/lang/String;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, LaI/y;->c:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public d(I)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 166
    iput p1, p0, LaI/y;->i:I

    .line 167
    return-object p0
.end method

.method public d(Ljava/lang/String;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, LaI/y;->g:Ljava/lang/String;

    .line 157
    return-object p0
.end method

.method public e(Ljava/lang/String;)LaI/y;
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, LaI/y;->j:Ljava/lang/String;

    .line 172
    return-object p0
.end method
