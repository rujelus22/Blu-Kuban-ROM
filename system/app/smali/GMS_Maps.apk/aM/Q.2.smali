.class LaM/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lae/c;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:LaM/O;


# direct methods
.method constructor <init>(LaM/O;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2160
    iput-object p1, p0, LaM/Q;->c:LaM/O;

    iput-object p2, p0, LaM/Q;->a:Ljava/util/List;

    iput-object p3, p0, LaM/Q;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 2165
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 5
    .parameter

    .prologue
    .line 2170
    iget-object v0, p0, LaM/Q;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2171
    iget-object v0, p0, LaM/Q;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, LaM/Q;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 2174
    iget-object v0, p0, LaM/Q;->c:LaM/O;

    iget-object v1, p0, LaM/Q;->b:Ljava/util/List;

    iget-object v2, p0, LaM/Q;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, LaM/O;->a(LaM/O;Ljava/util/List;Ljava/util/List;)V

    .line 2181
    :goto_1c
    return-void

    .line 2178
    :cond_1d
    iget-object v0, p0, LaM/Q;->c:LaM/O;

    iget-object v1, p0, LaM/Q;->a:Ljava/util/List;

    invoke-static {v0, v1}, LaM/O;->a(LaM/O;Ljava/util/List;)Ljava/util/List;

    .line 2179
    iget-object v0, p0, LaM/Q;->c:LaM/O;

    invoke-static {v0}, LaM/O;->a(LaM/O;)V

    goto :goto_1c
.end method
