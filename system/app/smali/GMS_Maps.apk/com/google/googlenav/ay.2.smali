.class public Lcom/google/googlenav/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LS/f;

.field private final b:Lcom/google/googlenav/ui/bx;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(LS/f;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/google/googlenav/ay;->a:LS/f;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ay;->b:Lcom/google/googlenav/ui/bx;

    .line 78
    iput-object p2, p0, Lcom/google/googlenav/ay;->c:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/google/googlenav/ay;->a:LS/f;

    .line 88
    iput-object p1, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 89
    iput-object v0, p0, Lcom/google/googlenav/ay;->c:Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/google/googlenav/ui/bx;

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/googlenav/ay;->b:Lcom/google/googlenav/ui/bx;

    .line 92
    iput-boolean v3, p0, Lcom/google/googlenav/ay;->d:Z

    .line 93
    return-void
.end method


# virtual methods
.method public a()LS/f;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/googlenav/ay;->a:LS/f;

    return-object v0
.end method

.method public a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 151
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iC;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ay;->c:Ljava/lang/String;

    if-nez v0, :cond_2a

    .line 155
    invoke-virtual {p0}, Lcom/google/googlenav/ay;->a()LS/f;

    move-result-object v0

    check-cast v0, LT/f;

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 157
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 159
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 172
    :goto_29
    return-object v1

    .line 164
    :cond_2a
    iget-object v0, p0, Lcom/google/googlenav/ay;->c:Ljava/lang/String;

    invoke-static {v0}, LaT/a;->a(Ljava/lang/String;)I

    move-result v0

    .line 165
    iget-object v2, p0, Lcom/google/googlenav/ay;->c:Ljava/lang/String;

    invoke-static {v2, v0, p1}, LaT/a;->a(Ljava/lang/String;II)[B

    move-result-object v0

    .line 167
    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_29
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/google/googlenav/ay;->d:Z

    .line 129
    return-void
.end method

.method public b()Lcom/google/googlenav/ui/bx;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ay;->b:Lcom/google/googlenav/ui/bx;

    return-object v0
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlenav/ay;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/google/googlenav/ay;->d:Z

    return v0
.end method

.method public e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 139
    const v0, 0x124f80

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ay;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
