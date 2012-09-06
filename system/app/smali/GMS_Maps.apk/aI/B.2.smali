.class LaI/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Q;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:LaI/z;


# direct methods
.method constructor <init>(LaI/z;Ljava/util/Set;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, LaI/B;->b:LaI/z;

    iput-object p2, p0, LaI/B;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LaI/w;)Z
    .registers 4
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, LaI/B;->a:Ljava/util/Set;

    invoke-virtual {p1}, LaI/w;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 151
    check-cast p1, LaI/w;

    invoke-virtual {p0, p1}, LaI/B;->a(LaI/w;)Z

    move-result v0

    return v0
.end method
