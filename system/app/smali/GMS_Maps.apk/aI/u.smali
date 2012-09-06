.class public LaI/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, ""

    iput-object v0, p0, LaI/u;->a:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, LaI/u;->b:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, LaI/u;->c:I

    return-void
.end method


# virtual methods
.method public a()LaI/s;
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 96
    iget v0, p0, LaI/u;->b:I

    if-eqz v0, :cond_31

    .line 97
    new-array v0, v2, [Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/dm;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v3

    .line 102
    :goto_12
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v5

    .line 105
    :goto_24
    new-instance v0, LaI/s;

    iget-object v1, p0, LaI/u;->a:Ljava/lang/String;

    iget v2, p0, LaI/u;->b:I

    iget v4, p0, LaI/u;->c:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, LaI/s;-><init>(Ljava/lang/String;ILjava/util/Set;IJLaI/t;)V

    return-object v0

    .line 99
    :cond_31
    invoke-static {}, LaI/s;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    goto :goto_12

    .line 102
    :cond_36
    const-wide/16 v5, 0x0

    goto :goto_24
.end method

.method public a(I)LaI/u;
    .registers 2
    .parameter

    .prologue
    .line 82
    iput p1, p0, LaI/u;->b:I

    .line 83
    return-object p0
.end method

.method public a(Ljava/lang/String;)LaI/u;
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, LaI/u;->a:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public b(I)LaI/u;
    .registers 2
    .parameter

    .prologue
    .line 87
    iput p1, p0, LaI/u;->c:I

    .line 88
    return-object p0
.end method
