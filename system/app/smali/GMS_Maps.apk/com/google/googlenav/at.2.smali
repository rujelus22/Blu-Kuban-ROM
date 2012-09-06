.class public Lcom/google/googlenav/at;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/ar;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    .line 4088
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4090
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/at;->b:Ljava/lang/String;

    .line 4091
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/at;->c:Ljava/lang/String;

    .line 4092
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 4093
    if-nez v0, :cond_1c

    .line 4094
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/ar;

    .line 4098
    :goto_1b
    return-void

    .line 4096
    :cond_1c
    new-instance v1, Lcom/google/googlenav/ar;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ar;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/ar;

    goto :goto_1b
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ar;
    .registers 2

    .prologue
    .line 4106
    iget-object v0, p0, Lcom/google/googlenav/at;->a:Lcom/google/googlenav/ar;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4110
    iget-object v0, p0, Lcom/google/googlenav/at;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 4114
    iget-object v0, p0, Lcom/google/googlenav/at;->c:Ljava/lang/String;

    return-object v0
.end method
