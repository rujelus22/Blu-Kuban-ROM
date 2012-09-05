.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Landroid/widget/SeekBar;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    iput-object p2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mSeekbarValue:I
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$202(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;I)I

    .line 705
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 706
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "cradle_current_brightness_value"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 709
    const-string v1, "cralde_current_seekbar_value"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 713
    const-string v1, "mBrightnessValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBrightnessValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v2, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessChange:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$302(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;Z)Z

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->setBrightness(F)V

    .line 720
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$4;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 721
    return-void
.end method
