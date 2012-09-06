.class Lcom/android/inputmethod/latin/Settings$7;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field private final synthetic val$res:Landroid/content/res/Resources;

.field private final synthetic val$sp:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$7;->this$0:Lcom/android/inputmethod/latin/Settings;

    iput-object p2, p0, Lcom/android/inputmethod/latin/Settings$7;->val$sp:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/android/inputmethod/latin/Settings$7;->val$res:Landroid/content/res/Resources;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 758
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$7;->this$0:Lcom/android/inputmethod/latin/Settings;

    #getter for: Lcom/android/inputmethod/latin/Settings;->mVibrationSettingsTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/inputmethod/latin/Settings;->access$6(Lcom/android/inputmethod/latin/Settings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 759
    .local v0, ms:I
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$7;->val$sp:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_vibration_duration_settings"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 760
    iget-object v1, p0, Lcom/android/inputmethod/latin/Settings$7;->this$0:Lcom/android/inputmethod/latin/Settings;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Settings$7;->val$sp:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/inputmethod/latin/Settings$7;->val$res:Landroid/content/res/Resources;

    #calls: Lcom/android/inputmethod/latin/Settings;->updateVibrationDurationSettingsSummary(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    invoke-static {v1, v2, v3}, Lcom/android/inputmethod/latin/Settings;->access$7(Lcom/android/inputmethod/latin/Settings;Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 761
    return-void
.end method
