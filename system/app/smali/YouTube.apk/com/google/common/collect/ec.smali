.class final Lcom/google/common/collect/ec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput-object p1, p0, Lcom/google/common/collect/ec;->a:Ljava/lang/String;

    .line 803
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 2
    .parameter

    .prologue
    .line 809
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 805
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 812
    new-instance v0, Lcom/google/common/collect/NullOutputException;

    iget-object v1, p0, Lcom/google/common/collect/ec;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
