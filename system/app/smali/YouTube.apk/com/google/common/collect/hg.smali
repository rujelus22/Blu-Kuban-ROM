.class final Lcom/google/common/collect/hg;
.super Lcom/google/common/collect/hi;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/hf;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hf;)V
    .registers 2
    .parameter

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/google/common/collect/hg;->a:Lcom/google/common/collect/hf;

    invoke-direct {p0}, Lcom/google/common/collect/hi;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/google/common/collect/hg;->a:Lcom/google/common/collect/hf;

    return-object v0
.end method
