.class final Lcom/google/android/gsf/checkin/EventLogAggregator$2;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    .registers 4
    .parameter "param"

    .prologue
    .line 431
    if-gez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sum: param expected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_a
    new-instance v0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;-><init>(Lcom/google/android/gsf/checkin/EventLogAggregator$2;I)V

    return-object v0
.end method