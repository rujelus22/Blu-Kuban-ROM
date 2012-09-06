.class final Lcom/google/common/collect/av;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/au;


# direct methods
.method constructor <init>(Lcom/google/common/collect/au;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/google/common/collect/av;->a:Lcom/google/common/collect/au;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 576
    new-instance v0, Lcom/google/common/collect/aw;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/aw;-><init>(Lcom/google/common/collect/av;I)V

    return-object v0
.end method
