.class Lcom/android/browser/SecPowerControl$14;
.super Ljava/lang/Object;
.source "SecPowerControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecPowerControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/SecPowerControl;


# direct methods
.method constructor <init>(Lcom/android/browser/SecPowerControl;)V
    .registers 2
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/browser/SecPowerControl$14;->this$0:Lcom/android/browser/SecPowerControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 448
    if-eqz p3, :cond_9

    .line 449
    iget-object v0, p0, Lcom/android/browser/SecPowerControl$14;->this$0:Lcom/android/browser/SecPowerControl;

    mul-int/lit8 v1, p2, 0xa

    invoke-virtual {v0, v1}, Lcom/android/browser/SecPowerControl;->setWindowBrightness(I)V

    .line 451
    :cond_9
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seek"

    .prologue
    .line 452
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "seek"

    .prologue
    .line 453
    return-void
.end method
