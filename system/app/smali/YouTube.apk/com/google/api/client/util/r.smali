.class final Lcom/google/api/client/util/r;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/api/client/util/p;

.field private final b:Lcom/google/api/client/util/n;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/p;)V
    .registers 3
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/api/client/util/r;->a:Lcom/google/api/client/util/p;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 165
    new-instance v0, Lcom/google/api/client/util/k;

    invoke-direct {v0, p1}, Lcom/google/api/client/util/k;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/api/client/util/k;->a()Lcom/google/api/client/util/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/r;->b:Lcom/google/api/client/util/n;

    .line 166
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/api/client/util/r;->a:Lcom/google/api/client/util/p;

    iget-object v0, v0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0}, Lcom/google/api/client/util/a;->clear()V

    .line 181
    iget-object v0, p0, Lcom/google/api/client/util/r;->b:Lcom/google/api/client/util/n;

    invoke-virtual {v0}, Lcom/google/api/client/util/n;->clear()V

    .line 182
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 170
    new-instance v0, Lcom/google/api/client/util/q;

    iget-object v1, p0, Lcom/google/api/client/util/r;->a:Lcom/google/api/client/util/p;

    iget-object v2, p0, Lcom/google/api/client/util/r;->b:Lcom/google/api/client/util/n;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/q;-><init>(Lcom/google/api/client/util/p;Lcom/google/api/client/util/n;)V

    return-object v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/r;->a:Lcom/google/api/client/util/p;

    iget-object v0, v0, Lcom/google/api/client/util/p;->f:Lcom/google/api/client/util/a;

    invoke-virtual {v0}, Lcom/google/api/client/util/a;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/r;->b:Lcom/google/api/client/util/n;

    invoke-virtual {v1}, Lcom/google/api/client/util/n;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
