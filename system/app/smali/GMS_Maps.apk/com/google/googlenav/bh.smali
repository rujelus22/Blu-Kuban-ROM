.class public Lcom/google/googlenav/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ab;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 87
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 88
    return-object v0
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 74
    iget-object v1, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_7

    .line 78
    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v1, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_33

    .line 36
    :try_start_4
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "ShortbreadToken"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 37
    if-eqz v0, :cond_29

    array-length v1, v0

    if-lez v1, :cond_29

    .line 38
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ab;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_29} :catch_36

    .line 48
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_33

    .line 49
    invoke-static {}, Lcom/google/googlenav/bh;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 53
    :cond_33
    iget-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0

    .line 41
    :catch_36
    move-exception v0

    goto :goto_29
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/googlenav/bh;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 58
    iput-object p1, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 61
    :try_start_8
    new-instance v0, LW/b;

    invoke-direct {v0}, LW/b;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 63
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, "ShortbreadToken"

    invoke-virtual {v0}, LW/b;->a()[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 65
    invoke-static {}, LaT/d;->a()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_26} :catch_27

    .line 71
    :cond_26
    :goto_26
    return-void

    .line 66
    :catch_27
    move-exception v0

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bh;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_26
.end method
