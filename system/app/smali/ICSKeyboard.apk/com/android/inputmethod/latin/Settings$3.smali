.class Lcom/android/inputmethod/latin/Settings$3;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/inputmethod/latin/Settings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/inputmethod/latin/Settings;


# direct methods
.method constructor <init>(Lcom/android/inputmethod/latin/Settings;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/inputmethod/latin/Settings$3;->this$0:Lcom/android/inputmethod/latin/Settings;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter "arg0"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/latin/Settings$3;->this$0:Lcom/android/inputmethod/latin/Settings;

    #calls: Lcom/android/inputmethod/latin/Settings;->showVibrationSettingsDialog()V
    invoke-static {v0}, Lcom/android/inputmethod/latin/Settings;->access$1(Lcom/android/inputmethod/latin/Settings;)V

    .line 554
    const/4 v0, 0x1

    return v0
.end method
