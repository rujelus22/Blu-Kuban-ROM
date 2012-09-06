.class public Lcom/google/googlenav/f;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/g;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/g;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/g;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/f;->f:Z

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/g;

    .line 77
    iput-object p2, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/google/googlenav/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 79
    iput-object p4, p0, Lcom/google/googlenav/f;->c:Ljava/util/List;

    .line 80
    return-void
.end method

.method public static a(Lcom/google/googlenav/g;Lcom/google/googlenav/ai;)Lcom/google/googlenav/f;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/google/googlenav/ah;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 102
    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 103
    new-instance v2, Lcom/google/googlenav/f;

    const/16 v3, 0x4b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V

    return-object v2
.end method

.method public static a(Lcom/google/googlenav/g;Ljava/lang/String;)Lcom/google/googlenav/f;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/google/googlenav/f;

    invoke-static {}, Lcom/google/googlenav/ah;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/googlenav/f;-><init>(Lcom/google/googlenav/g;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 151
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://maps.google.com/?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_19
    return-object v0

    :cond_1a
    const-string v0, ""

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/googlenav/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "georestrict="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    :cond_3a
    :goto_3a
    return-object v0

    .line 136
    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://maps.google.com/?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 169
    const/16 v0, 0x50

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x5

    .line 180
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/is;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 186
    iget-object v0, p0, Lcom/google/googlenav/f;->c:Ljava/util/List;

    if-eqz v0, :cond_42

    .line 187
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_3a

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 195
    :goto_1f
    iget-object v0, p0, Lcom/google/googlenav/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 196
    const/4 v3, 0x4

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_25

    .line 191
    :cond_3a
    invoke-static {}, Lcom/google/googlenav/ah;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_1f

    .line 199
    :cond_42
    invoke-virtual {p0}, Lcom/google/googlenav/f;->a()I

    move-result v0

    iget-boolean v2, p0, Lcom/google/googlenav/f;->f:Z

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ah;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 201
    iget-object v0, p0, Lcom/google/googlenav/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_54

    .line 202
    iget-object v0, p0, Lcom/google/googlenav/f;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 207
    :cond_54
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 208
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-boolean p1, p0, Lcom/google/googlenav/f;->f:Z

    .line 159
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 212
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/is;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 214
    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 220
    if-nez v0, :cond_11

    .line 221
    iput-object v3, p0, Lcom/google/googlenav/f;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 237
    :goto_10
    return v2

    .line 225
    :cond_11
    invoke-static {v0, v2, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 227
    packed-switch v1, :pswitch_data_24

    .line 233
    iput-object v3, p0, Lcom/google/googlenav/f;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_10

    .line 229
    :pswitch_1b
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/f;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_10

    .line 227
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/googlenav/f;->a:Lcom/google/googlenav/g;

    iget-object v1, p0, Lcom/google/googlenav/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/f;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/g;->a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 244
    return-void
.end method
