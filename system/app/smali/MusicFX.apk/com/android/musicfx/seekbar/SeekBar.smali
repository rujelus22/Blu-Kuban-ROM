.class public Lcom/android/musicfx/seekbar/SeekBar;
.super Lcom/android/musicfx/seekbar/AbsSeekBar;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/musicfx/seekbar/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/musicfx/seekbar/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/musicfx/seekbar/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method


# virtual methods
.method onProgressRefresh(FZ)V
    .registers 5
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/android/musicfx/seekbar/AbsSeekBar;->onProgressRefresh(FZ)V

    .line 88
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_10

    .line 89
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/android/musicfx/seekbar/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/android/musicfx/seekbar/SeekBar;IZ)V

    .line 91
    :cond_10
    return-void
.end method

.method onStartTrackingTouch()V
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V

    .line 110
    :cond_9
    return-void
.end method

.method onStopTrackingTouch()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V

    .line 117
    :cond_9
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/musicfx/seekbar/SeekBar;->mOnSeekBarChangeListener:Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;

    .line 103
    return-void
.end method
