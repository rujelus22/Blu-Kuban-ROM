.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 10
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/high16 v5, 0x437f

    const/high16 v4, 0x41f0

    .line 676
    const/4 v1, 0x0

    .line 678
    .local v1, value:F
    const/4 v2, 0x1

    if-ge p2, v2, :cond_40

    .line 679
    const/high16 v1, 0x3f80

    .line 684
    :goto_a
    const/high16 v2, 0x42c8

    div-float/2addr v1, v2

    .line 685
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    mul-float v3, v1, v5

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F

    .line 687
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_23

    .line 688
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2, v4}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F

    .line 690
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 691
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    div-float/2addr v2, v5

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 692
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 695
    return-void

    .line 681
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_40
    int-to-float v1, p2

    goto :goto_a
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 670
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 665
    return-void
.end method
