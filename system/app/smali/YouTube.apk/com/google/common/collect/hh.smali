.class final Lcom/google/common/collect/hh;
.super Lcom/google/common/collect/hs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/hf;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hf;)V
    .registers 2
    .parameter

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/google/common/collect/hh;->a:Lcom/google/common/collect/hf;

    invoke-direct {p0}, Lcom/google/common/collect/hs;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/google/common/collect/hh;->a:Lcom/google/common/collect/hf;

    return-object v0
.end method
