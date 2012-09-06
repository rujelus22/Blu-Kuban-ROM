.class abstract Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;
.super Ljava/lang/Object;
.source "FIFEUtil.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractIterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;
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

.field state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 588
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 591
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/phone/FIFEUtil$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 588
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;-><init>()V

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
    .line 600
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 601
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 606
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    if-ne v0, v1, :cond_c

    .line 607
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 610
    :cond_c
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$1;->$SwitchMap$com$google$android$apps$plus$phone$FIFEUtil$Splitter$AbstractIterator$State:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_22

    .line 617
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->tryToComputeNext()Z

    move-result v0

    :goto_1d
    return v0

    .line 612
    :pswitch_1e
    const/4 v0, 0x0

    goto :goto_1d

    .line 614
    :pswitch_20
    const/4 v0, 0x1

    goto :goto_1d

    .line 610
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
    .line 632
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 633
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 635
    :cond_c
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->NOT_READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 636
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 641
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method tryToComputeNext()Z
    .registers 3

    .prologue
    .line 621
    .local p0, this:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;,"Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator<TT;>;"
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->FAILED:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 622
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->next:Ljava/lang/Object;

    .line 623
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    sget-object v1, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->DONE:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    if-eq v0, v1, :cond_16

    .line 624
    sget-object v0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;->READY:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator;->state:Lcom/google/android/apps/plus/phone/FIFEUtil$Splitter$AbstractIterator$State;

    .line 625
    const/4 v0, 0x1

    .line 627
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
