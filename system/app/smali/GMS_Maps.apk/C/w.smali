.class public final LC/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/u;


# static fields
.field static final a:Lcom/google/common/collect/ImmutableSet;


# instance fields
.field private final b:LC/v;

.field private final c:Lcom/google/common/collect/ImmutableSet;

.field private d:LD/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-string v0, "gps"

    const-string v1, "network"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, LC/w;->a:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LC/l;)LC/b;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    const-string v0, "location_recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, LD/c;

    iget-object v1, p0, LC/w;->d:LD/m;

    invoke-direct {v0, v1}, LD/c;-><init>(LD/m;)V

    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, LC/w;->b:LC/v;

    invoke-virtual {v0, p1, p2}, LC/v;->a(Ljava/lang/String;LC/l;)LC/b;

    move-result-object v0

    goto :goto_f
.end method

.method public a(Landroid/os/Handler$Callback;)LF/i;
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, LC/w;->b:LC/v;

    invoke-virtual {v0, p1}, LC/v;->a(Landroid/os/Handler$Callback;)LF/i;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, LC/w;->c:Lcom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .parameter

    .prologue
    .line 69
    const-string v0, "location_recorder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, LC/w;->a:Lcom/google/common/collect/ImmutableSet;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, LC/w;->b:LC/v;

    invoke-virtual {v0, p1}, LC/v;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    goto :goto_a
.end method
