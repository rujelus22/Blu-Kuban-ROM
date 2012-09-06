.class final Lcom/google/common/collect/lj;
.super Lcom/google/common/collect/hi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/li;


# direct methods
.method constructor <init>(Lcom/google/common/collect/li;)V
    .registers 2
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/google/common/collect/lj;->a:Lcom/google/common/collect/li;

    invoke-direct {p0}, Lcom/google/common/collect/hi;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/google/common/collect/lj;->a:Lcom/google/common/collect/li;

    return-object v0
.end method
