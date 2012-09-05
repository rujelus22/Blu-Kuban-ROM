.class Lcom/android/calendar/EditEvent$23;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;

.field final synthetic val$check:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1403
    iput-object p1, p0, Lcom/android/calendar/EditEvent$23;->this$0:Lcom/android/calendar/EditEvent;

    iput-object p2, p0, Lcom/android/calendar/EditEvent$23;->val$check:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 1405
    iget-object v2, p0, Lcom/android/calendar/EditEvent$23;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1406
    iget-object v2, p0, Lcom/android/calendar/EditEvent$23;->this$0:Lcom/android/calendar/EditEvent;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1408
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1409
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preferences_confirm_new_event"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1414
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_1b
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1415
    iget-object v2, p0, Lcom/android/calendar/EditEvent$23;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mNewEventDialogChecked:Z
    invoke-static {v2, v3}, Lcom/android/calendar/EditEvent;->access$4102(Lcom/android/calendar/EditEvent;Z)Z

    .line 1425
    return-void
.end method
