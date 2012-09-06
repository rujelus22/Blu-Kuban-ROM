.class Lcom/android/inputmethod/latin/Settings$9;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->showVibrationSettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;

.field private final synthetic val$context:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$9;->this$0:Lcom/android/inputmethod/latin/Settings;

    iput-object p2, p0, Lcom/android/inputmethod/latin/Settings$9;->val$context:Landroid/app/Activity;

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 778
    move v0, p2

    .line 779
    .local v0, tempMs:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$9;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mVibrationSettingsTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$6(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 2
    .parameter "arg0"

    .prologue
    .line 784
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6
    .parameter "arg0"

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 789
    .local v0, tempMs:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$9;->val$context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->vibrate(J)V

    .line 790
    return-void
.end method
