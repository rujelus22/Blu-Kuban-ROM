.class public Ln/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ln/B;


# direct methods
.method private constructor <init>(Ln/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Ln/x;->a:Ljava/util/List;

    .line 61
    iput-object p3, p0, Ln/x;->b:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Ln/x;->c:Ljava/lang/String;

    .line 63
    iput p5, p0, Ln/x;->d:I

    .line 64
    new-instance v0, Ln/B;

    invoke-direct {v0, p1, p6}, Ln/B;-><init>(Ln/p;I)V

    iput-object v0, p0, Ln/x;->e:Ln/B;

    .line 65
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/x;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v1

    .line 76
    if-nez v1, :cond_12

    .line 78
    const/4 v0, 0x0

    .line 115
    :goto_11
    return-object v0

    .line 81
    :cond_12
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 82
    invoke-static {v3}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v0, v5

    .line 83
    :goto_1b
    if-ge v0, v3, :cond_2d

    .line 84
    invoke-virtual {p0, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v4

    .line 86
    if-eqz v4, :cond_2a

    .line 87
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 94
    :cond_2d
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    if-nez v3, :cond_3d

    .line 97
    if-eqz v4, :cond_5c

    move-object v0, v4

    :goto_3c
    move-object v3, v0

    .line 99
    :cond_3d
    if-nez v4, :cond_40

    move-object v4, v3

    .line 106
    :cond_40
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 107
    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    .line 110
    :cond_4a
    const/high16 v6, -0x8000

    .line 111
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 112
    invoke-virtual {p0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 115
    :cond_56
    new-instance v0, Ln/x;

    invoke-direct/range {v0 .. v6}, Ln/x;-><init>(Ln/p;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_11

    .line 97
    :cond_5c
    const-string v0, ""

    goto :goto_3c
.end method


# virtual methods
.method public a()Ln/B;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Ln/x;->e:Ln/B;

    return-object v0
.end method

.method public b()Ln/p;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Ln/x;->e:Ln/B;

    invoke-virtual {v0}, Ln/B;->a()Ln/p;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Ln/x;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Ln/x;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Ln/x;->d:I

    return v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Ln/x;->e:Ln/B;

    invoke-virtual {v0}, Ln/B;->b()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/x;->e:Ln/B;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
