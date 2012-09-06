.class public Lag/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lag/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lag/g;->a:Ljava/util/Set;

    .line 67
    iput-object v0, p0, Lag/g;->b:Lag/f;

    .line 68
    return-void
.end method

.method public varargs constructor <init>(Lag/f;[I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lag/g;->b:Lag/f;

    .line 81
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lag/g;->a:Ljava/util/Set;

    .line 83
    array-length v1, p2

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1d

    aget v2, p2, v0

    .line 84
    iget-object v3, p0, Lag/g;->a:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 86
    :cond_1d
    return-void
.end method

.method private d(Lag/c;)Z
    .registers 4
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lag/g;->a:Ljava/util/Set;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lag/g;->a:Ljava/util/Set;

    iget v1, p1, Lag/c;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method


# virtual methods
.method public a()Lag/f;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lag/g;->b:Lag/f;

    return-object v0
.end method

.method public a(Lag/c;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public final b(Lag/c;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-direct {p0, p1}, Lag/g;->d(Lag/c;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 122
    :cond_7
    :goto_7
    return v0

    .line 119
    :cond_8
    invoke-virtual {p0, p1}, Lag/g;->c(Lag/c;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 122
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected c(Lag/c;)Z
    .registers 3
    .parameter

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
