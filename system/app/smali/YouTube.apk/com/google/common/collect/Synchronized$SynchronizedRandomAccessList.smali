.class Lcom/google/common/collect/Synchronized$SynchronizedRandomAccessList;
.super Lcom/google/common/collect/Synchronized$SynchronizedList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/Synchronized$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 401
    return-void
.end method
