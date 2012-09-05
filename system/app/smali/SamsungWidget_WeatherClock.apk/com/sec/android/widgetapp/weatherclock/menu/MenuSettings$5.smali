.class Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;
.super Ljava/lang/Object;
.source "MenuSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

.field final synthetic val$confirm:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;Landroid/app/Dialog;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    iput-object p2, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;->val$confirm:Landroid/app/Dialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 583
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;->val$confirm:Landroid/app/Dialog;

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 585
    const-string v1, ""

    const-string v2, "on dismiss"

    invoke-static {v1, v2}, Lcom/sec/android/widgetapp/weatherclock/slog/SLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v1, p0, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings$5;->this$0:Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;

    const-string v2, "config"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/widgetapp/weatherclock/menu/MenuSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 587
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "CONFIRM_AUTOREFRESH"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 588
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2f
    return-void
.end method
