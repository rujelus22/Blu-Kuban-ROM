.class public Ln/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/Integer;


# instance fields
.field private b:Ln/m;

.field private c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 121
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    sput-object v0, Ln/ay;->a:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public a()Ln/ay;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 137
    return-object p0
.end method

.method public a(I)Ln/ay;
    .registers 4
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    return-object p0
.end method

.method public a(Ln/ax;)Ln/ay;
    .registers 7
    .parameter

    .prologue
    .line 141
    invoke-static {p1}, Ln/ax;->a(Ln/ax;)Ln/m;

    move-result-object v0

    iput-object v0, p0, Ln/ay;->b:Ln/m;

    .line 142
    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 143
    invoke-static {p1}, Ln/ax;->b(Ln/ax;)[Ljava/lang/Integer;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_25

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 144
    iget-object v4, p0, Ln/ay;->c:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 146
    :cond_25
    return-object p0
.end method

.method public a(Ln/m;)Ln/ay;
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ln/ay;->b:Ln/m;

    .line 127
    return-object p0
.end method

.method public b()Ln/ax;
    .registers 5

    .prologue
    .line 150
    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 151
    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    :cond_12
    new-instance v1, Ln/ax;

    iget-object v2, p0, Ln/ay;->b:Ln/m;

    iget-object v0, p0, Ln/ay;->c:Ljava/util/Set;

    sget-object v3, Ln/ay;->a:[Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-direct {v1, v2, v0}, Ln/ax;-><init>(Ln/m;[Ljava/lang/Integer;)V

    return-object v1
.end method
