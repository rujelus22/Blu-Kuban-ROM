.class final Lcom/google/common/collect/hn;
.super Lcom/google/common/collect/hs;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/hk;


# direct methods
.method constructor <init>(Lcom/google/common/collect/hk;)V
    .registers 2
    .parameter

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/google/common/collect/hn;->a:Lcom/google/common/collect/hk;

    invoke-direct {p0}, Lcom/google/common/collect/hs;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/util/Map;
    .registers 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/google/common/collect/hn;->a:Lcom/google/common/collect/hk;

    return-object v0
.end method
