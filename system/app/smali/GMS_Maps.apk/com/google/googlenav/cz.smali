.class public Lcom/google/googlenav/cz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    .line 47
    iput-boolean p5, p0, Lcom/google/googlenav/cz;->e:Z

    .line 48
    iput-object p4, p0, Lcom/google/googlenav/cz;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 85
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cz;
    .registers 7
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/google/googlenav/cz;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/cz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbm/bt;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 64
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 65
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 66
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/cz;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 69
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/googlenav/cz;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 70
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 90
    if-ne p0, p1, :cond_5

    .line 102
    :cond_4
    :goto_4
    return v0

    .line 94
    :cond_5
    instance-of v2, p1, Lcom/google/googlenav/cz;

    if-eqz v2, :cond_3b

    .line 95
    check-cast p1, Lcom/google/googlenav/cz;

    .line 96
    iget-object v2, p0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-object v2, p0, Lcom/google/googlenav/cz;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlenav/cz;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Laa/b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/google/googlenav/cz;->e:Z

    iget-boolean v3, p1, Lcom/google/googlenav/cz;->e:Z

    if-eq v2, v3, :cond_4

    :cond_39
    move v0, v1

    goto :goto_4

    :cond_3b
    move v0, v1

    .line 102
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/cz;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/googlenav/cz;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/googlenav/cz;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/googlenav/cz;->d:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/googlenav/cz;->a(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/googlenav/cz;->e:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_20
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dimension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/cz;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/cz;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - editable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/googlenav/cz;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
