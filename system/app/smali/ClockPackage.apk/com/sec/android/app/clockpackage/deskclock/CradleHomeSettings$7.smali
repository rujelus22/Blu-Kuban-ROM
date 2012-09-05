.class Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;
.super Ljava/lang/Object;
.source "CradleHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 761
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 766
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v2

    const/16 v3, 0x9e

    if-ne v2, v3, :cond_48

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_48

    .line 781
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$000(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "cradle_current_brightness_value"

    const/high16 v4, 0x42b4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 785
    .local v0, currentBrightness:F
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2, v0}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$102(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;F)F

    .line 786
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 790
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->mBrightnessValue:F
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;)F

    move-result v2

    const/high16 v3, 0x437f

    div-float/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 791
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 792
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings$7;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/sec/android/app/clockpackage/deskclock/CradleHomeSettings;->removeDialog(I)V

    .line 794
    const/4 v2, 0x1

    .line 797
    .end local v0           #currentBrightness:F
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_47
    return v2

    :cond_48
    const/4 v2, 0x0

    goto :goto_47
.end method
