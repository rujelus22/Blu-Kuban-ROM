.class public Lcom/google/googlenav/layer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/m;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    .line 66
    invoke-static {p1, v1, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/e;->b:I

    .line 68
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    .line 70
    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/e;->f:I

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/googlenav/layer/e;->b:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/e;->f:I

    .line 97
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/google/googlenav/layer/e;->b:I

    .line 81
    iput-object p3, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/e;->d:Ljava/lang/String;

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/layer/e;->f:I

    .line 84
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/layer/m;)V
    .registers 2
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/googlenav/layer/e;->e:Lcom/google/googlenav/layer/m;

    .line 117
    return-void
.end method

.method public b()Lcom/google/googlenav/layer/m;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/googlenav/layer/e;->e:Lcom/google/googlenav/layer/m;

    return-object v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 136
    iget v0, p0, Lcom/google/googlenav/layer/e;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "categoryId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/layer/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
