.class public Lcom/google/common/collect/bA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/google/common/collect/cL;

.field b:Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-instance v0, Lcom/google/common/collect/bB;

    invoke-direct {v0}, Lcom/google/common/collect/bB;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/bA;->a:Lcom/google/common/collect/cL;

    .line 171
    return-void
.end method
