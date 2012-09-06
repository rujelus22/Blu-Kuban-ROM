.class public Lo/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lo/P;

.field private final b:I

.field private final c:I

.field private d:F

.field private e:F

.field private f:Z

.field private g:Lo/P;

.field private h:I

.field private i:I

.field private j:[Lo/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/high16 v1, -0x4080

    const/4 v7, 0x2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v1, p0, Lo/i;->d:F

    .line 167
    iput v1, p0, Lo/i;->e:F

    .line 173
    const/16 v1, 0x2710

    iput v1, p0, Lo/i;->h:I

    .line 174
    const/4 v1, 0x3

    iput v1, p0, Lo/i;->i:I

    .line 184
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lo/i;->b:I

    .line 185
    invoke-virtual {p1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 186
    new-array v1, v2, [Lo/P;

    iput-object v1, p0, Lo/i;->a:[Lo/P;

    move v1, v0

    .line 187
    :goto_24
    if-ge v1, v2, :cond_37

    .line 188
    invoke-virtual {p1, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 189
    iget-object v4, p0, Lo/i;->a:[Lo/P;

    new-instance v5, Lo/P;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6}, Lo/P;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)V

    aput-object v5, v4, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 191
    :cond_37
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lo/i;->i:I

    .line 192
    const/16 v1, 0x18

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lo/i;->c:I

    .line 193
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 194
    new-array v2, v1, [Lo/b;

    iput-object v2, p0, Lo/i;->j:[Lo/b;

    .line 195
    :goto_4e
    if-ge v0, v1, :cond_5f

    .line 196
    invoke-virtual {p1, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 197
    iget-object v3, p0, Lo/i;->j:[Lo/b;

    invoke-static {v2}, Lo/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/b;

    move-result-object v2

    aput-object v2, v3, v0

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 199
    :cond_5f
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_75

    .line 201
    invoke-virtual {v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lo/i;->d:F

    .line 202
    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lo/i;->e:F

    .line 212
    :cond_75
    return-void
.end method

.method public constructor <init>([Lo/P;II)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v0, -0x4080

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v0, p0, Lo/i;->d:F

    .line 167
    iput v0, p0, Lo/i;->e:F

    .line 173
    const/16 v0, 0x2710

    iput v0, p0, Lo/i;->h:I

    .line 174
    const/4 v0, 0x3

    iput v0, p0, Lo/i;->i:I

    .line 178
    iput-object p1, p0, Lo/i;->a:[Lo/P;

    .line 179
    iput p2, p0, Lo/i;->b:I

    .line 180
    iput p3, p0, Lo/i;->c:I

    .line 181
    return-void
.end method


# virtual methods
.method public a()Lo/g;
    .registers 13

    .prologue
    .line 246
    new-instance v0, Lo/g;

    iget-object v1, p0, Lo/i;->a:[Lo/P;

    iget v2, p0, Lo/i;->b:I

    iget v3, p0, Lo/i;->d:F

    iget v4, p0, Lo/i;->e:F

    iget-boolean v5, p0, Lo/i;->f:Z

    iget-object v6, p0, Lo/i;->g:Lo/P;

    iget v7, p0, Lo/i;->h:I

    iget v8, p0, Lo/i;->i:I

    iget v9, p0, Lo/i;->c:I

    iget-object v10, p0, Lo/i;->j:[Lo/b;

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lo/g;-><init>([Lo/P;IFFZLo/P;III[Lo/b;Lo/h;)V

    .line 249
    iget-object v1, p0, Lo/i;->a:[Lo/P;

    invoke-static {v1}, Lo/g;->a([Lo/P;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 250
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/g;->a(Lo/g;I)I

    .line 252
    :cond_26
    return-object v0
.end method

.method public a(FF)Lo/i;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput p1, p0, Lo/i;->d:F

    .line 216
    iput p2, p0, Lo/i;->e:F

    .line 217
    return-object p0
.end method

.method public a(I)Lo/i;
    .registers 2
    .parameter

    .prologue
    .line 231
    iput p1, p0, Lo/i;->h:I

    .line 232
    return-object p0
.end method

.method public a(Lo/P;)Lo/i;
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lo/i;->g:Lo/P;

    .line 227
    return-object p0
.end method

.method public a(Z)Lo/i;
    .registers 2
    .parameter

    .prologue
    .line 221
    iput-boolean p1, p0, Lo/i;->f:Z

    .line 222
    return-object p0
.end method

.method public a([Lo/b;)Lo/i;
    .registers 2
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lo/i;->j:[Lo/b;

    .line 242
    return-object p0
.end method

.method public b(I)Lo/i;
    .registers 2
    .parameter

    .prologue
    .line 236
    iput p1, p0, Lo/i;->i:I

    .line 237
    return-object p0
.end method
