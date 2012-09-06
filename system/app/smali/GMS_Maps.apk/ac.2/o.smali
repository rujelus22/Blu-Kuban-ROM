.class public LaC/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Map;


# instance fields
.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final c:Ljava/util/List;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Lcom/google/googlenav/ui/wizard/gi;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LaC/o;->a:Ljava/util/Map;

    .line 39
    sget-object v0, LaC/o;->a:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020318

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, LaC/o;->a:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02031a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, LaC/o;->a:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f020319

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, LaC/o;->a:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02031d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, LaC/o;->a:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f02031c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/wizard/gi;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p2, p0, LaC/o;->g:Lcom/google/googlenav/ui/wizard/gi;

    .line 49
    iput-object p1, p0, LaC/o;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, LaC/o;->f:I

    .line 51
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaC/o;->d:Ljava/lang/String;

    .line 52
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaC/o;->e:Ljava/lang/String;

    .line 53
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, LaC/o;->c:Ljava/util/List;

    .line 55
    const/4 v0, 0x0

    :goto_29
    if-ge v0, v1, :cond_3c

    .line 56
    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 57
    new-instance v3, Lcom/google/googlenav/ai;

    invoke-direct {v3, v2}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 58
    iget-object v2, p0, LaC/o;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 60
    :cond_3c
    return-void
.end method

.method static synthetic a(LaC/o;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaC/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LaC/o;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaC/o;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(LaC/o;)Lcom/google/googlenav/ui/wizard/gi;
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, LaC/o;->g:Lcom/google/googlenav/ui/wizard/gi;

    return-object v0
.end method

.method static synthetic d(LaC/o;)I
    .registers 2
    .parameter

    .prologue
    .line 27
    iget v0, p0, LaC/o;->f:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, LaC/o;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Z
    .registers 3
    .parameter

    .prologue
    .line 63
    iget v0, p0, LaC/o;->f:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, LaC/o;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, LaC/o;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, LaC/o;->f:I

    return v0
.end method

.method public e()LaC/w;
    .registers 6

    .prologue
    .line 87
    iget-object v0, p0, LaC/o;->e:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, LaC/o;->c:Ljava/util/List;

    if-eqz v0, :cond_10

    iget-object v0, p0, LaC/o;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 90
    :cond_10
    const/4 v0, 0x0

    .line 102
    :goto_11
    return-object v0

    .line 94
    :cond_12
    iget-object v0, p0, LaC/o;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 95
    sget-object v1, LaC/o;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 96
    if-nez v0, :cond_2e

    .line 98
    const v0, 0x7f020318

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 100
    :cond_2e
    new-instance v1, LaC/p;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, LaC/o;->d:Ljava/lang/String;

    iget-object v3, p0, LaC/o;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, LaC/p;-><init>(LaC/o;ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 102
    goto :goto_11
.end method
