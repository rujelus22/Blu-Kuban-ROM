.class final Lcom/google/common/collect/MapMaker$RemovalNotification;
.super Lcom/google/common/collect/ImmutableEntry;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final cause:Lcom/google/common/collect/MapMaker$RemovalCause;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 4
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    .prologue
    .line 748
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    iput-object p3, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    .line 750
    return-void
.end method


# virtual methods
.method public final getCause()Lcom/google/common/collect/MapMaker$RemovalCause;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    return-object v0
.end method

.method public final wasEvicted()Z
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$RemovalNotification;->cause:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker$RemovalCause;->wasEvicted()Z

    move-result v0

    return v0
.end method
