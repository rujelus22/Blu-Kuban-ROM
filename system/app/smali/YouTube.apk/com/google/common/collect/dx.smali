.class final Lcom/google/common/collect/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 3
    .parameter

    .prologue
    .line 781
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 784
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
