.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;
.super Lcom/google/common/collect/Synchronized$SynchronizedCollection;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1200
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Lcom/google/common/collect/lv;)V

    .line 1201
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 3

    .prologue
    .line 1205
    invoke-super {p0}, Lcom/google/common/collect/Synchronized$SynchronizedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1206
    new-instance v1, Lcom/google/common/collect/ly;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/ly;-><init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V

    return-object v1
.end method
