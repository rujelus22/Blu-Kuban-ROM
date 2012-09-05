.class public Lcom/google/android/googlequicksearchbox/util/DebouncedValue;
.super Ljava/lang/Object;
.source "DebouncedValue.java"


# instance fields
.field private final mClock:Lcom/google/android/googlequicksearchbox/Clock;

.field private mDecreaseDebounceDelay:I

.field private mDecreaseStickyDelay:I

.field private mIncreaseDebounceDelay:I

.field private mIncreaseStickyDelay:I

.field private mNewValue:I

.field private mNewValueDebounceAtTime:J

.field private mNewValueStickyAtTime:J

.field private mStickyValue:I

.field private mValue:I

.field private mValueStickyAtTime:J


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/Clock;I)V
    .registers 3
    .parameter "clock"
    .parameter "initialValue"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    .line 70
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    .line 71
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    .line 73
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearStickyTimeout()V

    .line 74
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearNewValueTimeout()V

    .line 75
    return-void
.end method

.method private clearNewValueTimeout()V
    .registers 3

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 163
    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueDebounceAtTime:J

    .line 164
    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueStickyAtTime:J

    .line 165
    return-void
.end method

.method private clearStickyTimeout()V
    .registers 3

    .prologue
    .line 159
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValueStickyAtTime:J

    .line 160
    return-void
.end method

.method private updateValue(J)V
    .registers 5
    .parameter "now"

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValueStickyAtTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1f

    .line 132
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    .line 133
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearStickyTimeout()V

    .line 140
    :cond_d
    :goto_d
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueDebounceAtTime:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1e

    .line 141
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    .line 142
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueStickyAtTime:J

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValueStickyAtTime:J

    .line 143
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearNewValueTimeout()V

    .line 145
    :cond_1e
    return-void

    .line 134
    :cond_1f
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    if-ne v0, v1, :cond_d

    .line 135
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    .line 136
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearStickyTimeout()V

    .line 137
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearNewValueTimeout()V

    goto :goto_d
.end method


# virtual methods
.method public clearTimeouts()V
    .registers 2

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    .line 153
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    .line 154
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearStickyTimeout()V

    .line 155
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearNewValueTimeout()V

    .line 156
    return-void
.end method

.method public get()I
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/Clock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->updateValue(J)V

    .line 178
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    return v0
.end method

.method public set(I)V
    .registers 9
    .parameter "newValue"

    .prologue
    .line 112
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    if-eq p1, v2, :cond_31

    .line 113
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mClock:Lcom/google/android/googlequicksearchbox/Clock;

    invoke-interface {v2}, Lcom/google/android/googlequicksearchbox/Clock;->elapsedRealtime()J

    move-result-wide v0

    .line 114
    .local v0, now:J
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    if-eq p1, v2, :cond_27

    .line 115
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    .line 116
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    if-le p1, v2, :cond_2b

    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mIncreaseDebounceDelay:I

    :goto_16
    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueDebounceAtTime:J

    .line 118
    iget-wide v3, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueDebounceAtTime:J

    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    if-le p1, v2, :cond_2e

    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mIncreaseStickyDelay:I

    :goto_22
    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueStickyAtTime:J

    .line 122
    :cond_27
    invoke-direct {p0, v0, v1}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->updateValue(J)V

    .line 127
    .end local v0           #now:J
    :goto_2a
    return-void

    .line 116
    .restart local v0       #now:J
    :cond_2b
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mDecreaseDebounceDelay:I

    goto :goto_16

    .line 118
    :cond_2e
    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mDecreaseStickyDelay:I

    goto :goto_22

    .line 124
    .end local v0           #now:J
    :cond_31
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    .line 125
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->clearNewValueTimeout()V

    goto :goto_2a
.end method

.method public setDebounce(II)V
    .registers 3
    .parameter "debounceDelay"
    .parameter "stickyDelay"

    .prologue
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->setIncreaseDebounce(II)V

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->setDecreaseDebounce(II)V

    .line 90
    return-void
.end method

.method public setDecreaseDebounce(II)V
    .registers 3
    .parameter "debounceDelay"
    .parameter "stickyDelay"

    .prologue
    .line 100
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mDecreaseDebounceDelay:I

    .line 101
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mDecreaseStickyDelay:I

    .line 102
    return-void
.end method

.method public setIncreaseDebounce(II)V
    .registers 3
    .parameter "debounceDelay"
    .parameter "stickyDelay"

    .prologue
    .line 94
    iput p1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mIncreaseDebounceDelay:I

    .line 95
    iput p2, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mIncreaseStickyDelay:I

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebouncedValue["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mValueStickyAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mStickyValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " D@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueDebounceAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " S@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/googlequicksearchbox/util/DebouncedValue;->mNewValueStickyAtTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
