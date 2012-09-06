.class final Lcom/google/common/collect/bc;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/bb;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bb;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/google/common/collect/bc;->a:Lcom/google/common/collect/bb;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 722
    new-instance v0, Lcom/google/common/collect/bd;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/bd;-><init>(Lcom/google/common/collect/bc;I)V

    return-object v0
.end method
