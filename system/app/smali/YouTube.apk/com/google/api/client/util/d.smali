.class final Lcom/google/api/client/util/d;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/api/client/util/a;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/a;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/google/api/client/util/d;->a:Lcom/google/api/client/util/a;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 359
    new-instance v0, Lcom/google/api/client/util/c;

    iget-object v1, p0, Lcom/google/api/client/util/d;->a:Lcom/google/api/client/util/a;

    invoke-direct {v0, v1}, Lcom/google/api/client/util/c;-><init>(Lcom/google/api/client/util/a;)V

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/api/client/util/d;->a:Lcom/google/api/client/util/a;

    iget v0, v0, Lcom/google/api/client/util/a;->a:I

    return v0
.end method
