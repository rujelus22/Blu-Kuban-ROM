.class final Lcom/google/common/collect/eb;
.super Lcom/google/common/collect/en;
.source "SourceFile"


# instance fields
.field final a:Lcom/google/common/collect/ee;


# direct methods
.method constructor <init>(Lcom/google/common/collect/bj;Ljava/lang/Object;ILcom/google/common/collect/ee;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1036
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/en;-><init>(Lcom/google/common/collect/bj;Ljava/lang/Object;I)V

    .line 1037
    iput-object p4, p0, Lcom/google/common/collect/eb;->a:Lcom/google/common/collect/ee;

    .line 1038
    return-void
.end method


# virtual methods
.method public final b()Lcom/google/common/collect/ee;
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/common/collect/eb;->a:Lcom/google/common/collect/ee;

    return-object v0
.end method
