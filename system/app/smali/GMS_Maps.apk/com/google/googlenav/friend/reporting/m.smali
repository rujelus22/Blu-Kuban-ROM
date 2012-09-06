.class public Lcom/google/googlenav/friend/reporting/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/bd;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 189
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/friend/reporting/m;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/friend/reporting/k;
    .registers 3

    .prologue
    .line 260
    new-instance v0, Lcom/google/googlenav/friend/reporting/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/friend/reporting/k;-><init>(Lcom/google/googlenav/friend/reporting/m;Lcom/google/googlenav/friend/reporting/l;)V

    return-object v0
.end method

.method public a(D)Lcom/google/googlenav/friend/reporting/m;
    .registers 5
    .parameter

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setDouble(ID)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 221
    return-object p0
.end method

.method public a(F)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 211
    return-object p0
.end method

.method public a(I)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 201
    return-object p0
.end method

.method public a(II)Lcom/google/googlenav/friend/reporting/m;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 192
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 193
    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 194
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 195
    iget-object v1, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 196
    return-object p0
.end method

.method public a(J)Lcom/google/googlenav/friend/reporting/m;
    .registers 5
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 206
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 251
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 241
    return-object p0
.end method

.method public b(F)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 216
    return-object p0
.end method

.method public b(I)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 231
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 246
    return-object p0
.end method

.method public c(F)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 226
    return-object p0
.end method

.method public c(I)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 236
    return-object p0
.end method

.method public d(I)Lcom/google/googlenav/friend/reporting/m;
    .registers 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/googlenav/friend/reporting/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 256
    return-object p0
.end method
