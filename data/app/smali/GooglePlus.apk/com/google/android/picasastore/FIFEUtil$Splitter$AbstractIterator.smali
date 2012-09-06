.class abstract Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "FIFEUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 480
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 483
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/picasastore/FIFEUtil$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 480
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 492
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 498
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    if-ne v0, v1, :cond_c

    .line 499
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 502
    :cond_c
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$1;->$SwitchMap$com$google$android$picasastore$FIFEUtil$Splitter$AbstractIterator$State:[I

    iget-object v1, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    invoke-virtual {v1}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 509
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v0

    :goto_1d
    return v0

    .line 504
    :pswitch_1e
    const/4 v0, 0x0

    goto :goto_1d

    .line 506
    :pswitch_20
    const/4 v0, 0x1

    goto :goto_1d

    .line 502
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 525
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 527
    :cond_c
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 528
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 533
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .registers 3

    .prologue
    .line 513
    .local p0, this:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 514
    invoke-virtual {p0}, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 515
    iget-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 516
    sget-object v0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;->READY:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/picasastore/FIFEUtil$Splitter$AbstractIterator$State;

    .line 517
    const/4 v0, 0x1

    .line 519
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
