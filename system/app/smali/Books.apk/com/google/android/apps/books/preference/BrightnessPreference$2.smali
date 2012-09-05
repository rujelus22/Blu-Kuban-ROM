.class Lcom/google/android/apps/books/preference/BrightnessPreference$2;
.super Ljava/lang/Object;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/BrightnessPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/BrightnessPreference;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    #getter for: Lcom/google/android/apps/books/preference/BrightnessPreference;->mBinding:Z
    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$000(Lcom/google/android/apps/books/preference/BrightnessPreference;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 164
    :cond_8
    :goto_8
    return-void

    .line 159
    :cond_9
    if-eqz p3, :cond_8

    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    #getter for: Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 161
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    #calls: Lcom/google/android/apps/books/preference/BrightnessPreference;->getBrightnessValue()I
    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$400(Lcom/google/android/apps/books/preference/BrightnessPreference;)I

    move-result v0

    .line 162
    .local v0, brightnessValue:I
    iget-object v1, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    #getter for: Lcom/google/android/apps/books/preference/BrightnessPreference;->mWindow:Landroid/view/Window;
    invoke-static {v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$300(Lcom/google/android/apps/books/preference/BrightnessPreference;)Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/util/WindowUtils;->setBrightness(ILandroid/view/Window;)V

    goto :goto_8
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 4
    .parameter "seekBar"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    const/4 v1, 0x0

    #calls: Lcom/google/android/apps/books/preference/BrightnessPreference;->setBrightnessAutoChecked(Z)V
    invoke-static {v0, v1}, Lcom/google/android/apps/books/preference/BrightnessPreference;->access$100(Lcom/google/android/apps/books/preference/BrightnessPreference;Z)V

    .line 153
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 3
    .parameter "seekBar"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/apps/books/preference/BrightnessPreference$2;->this$0:Lcom/google/android/apps/books/preference/BrightnessPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/BrightnessPreference;->persistPreference()V

    .line 148
    return-void
.end method
