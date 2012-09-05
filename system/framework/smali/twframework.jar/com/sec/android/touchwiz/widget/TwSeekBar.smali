.class public Lcom/sec/android/touchwiz/widget/TwSeekBar;
.super Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;
.source "TwSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 94
    const v0, 0x2010006

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    return-void
.end method


# virtual methods
.method onProgressRefresh(FZ)V
    .registers 5
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwAbsSeekBar;->onProgressRefresh(FZ)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_10

    .line 112
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBar;IZ)V

    .line 114
    :cond_10
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 133
    :cond_9
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 138
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;->onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBar;)V

    .line 140
    :cond_9
    return-void
.end method

.method public setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/touchwiz/widget/TwSeekBar;->mOnSeekBarChangeListener:Lcom/sec/android/touchwiz/widget/TwSeekBar$OnTwSeekBarChangeListener;

    .line 126
    return-void
.end method
