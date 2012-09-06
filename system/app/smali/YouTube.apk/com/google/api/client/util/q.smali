.class final Lcom/google/api/client/util/q;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/api/client/util/o;

.field private final b:Lcom/google/api/client/util/m;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/o;)V
    .registers 3
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/api/client/util/q;->a:Lcom/google/api/client/util/o;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 159
    new-instance v0, Lcom/google/api/client/util/j;

    invoke-direct {v0, p1}, Lcom/google/api/client/util/j;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/api/client/util/j;->a()Lcom/google/api/client/util/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/q;->b:Lcom/google/api/client/util/m;

    .line 160
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/client/util/q;->a:Lcom/google/api/client/util/o;

    iget-object v0, v0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 175
    iget-object v0, p0, Lcom/google/api/client/util/q;->b:Lcom/google/api/client/util/m;

    invoke-virtual {v0}, Lcom/google/api/client/util/m;->clear()V

    .line 176
    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Lcom/google/api/client/util/p;

    iget-object v1, p0, Lcom/google/api/client/util/q;->a:Lcom/google/api/client/util/o;

    iget-object v2, p0, Lcom/google/api/client/util/q;->b:Lcom/google/api/client/util/m;

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/p;-><init>(Lcom/google/api/client/util/o;Lcom/google/api/client/util/m;)V

    return-object v0
.end method

.method public final size()I
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/api/client/util/q;->a:Lcom/google/api/client/util/o;

    iget-object v0, v0, Lcom/google/api/client/util/o;->unknownFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/api/client/util/q;->b:Lcom/google/api/client/util/m;

    invoke-virtual {v1}, Lcom/google/api/client/util/m;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
