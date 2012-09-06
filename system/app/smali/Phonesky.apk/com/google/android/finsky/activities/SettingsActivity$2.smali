.class Lcom/google/android/finsky/activities/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/SettingsActivity;->processAdSettingChange(Landroid/preference/CheckBoxPreference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/SettingsActivity;

.field final synthetic val$isChecked:Z

.field final synthetic val$preference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->this$0:Lcom/google/android/finsky/activities/SettingsActivity;

    iput-object p2, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->val$preference:Landroid/preference/CheckBoxPreference;

    iput-boolean p3, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 364
    iget-object v1, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->this$0:Lcom/google/android/finsky/activities/SettingsActivity;

    iget-object v2, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->val$preference:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/google/android/finsky/activities/SettingsActivity$2;->val$isChecked:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_9
    #calls: Lcom/google/android/finsky/activities/SettingsActivity;->setInterestBasedAds(Landroid/preference/CheckBoxPreference;Z)V
    invoke-static {v1, v2, v0}, Lcom/google/android/finsky/activities/SettingsActivity;->access$000(Lcom/google/android/finsky/activities/SettingsActivity;Landroid/preference/CheckBoxPreference;Z)V

    .line 365
    return-void

    .line 364
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
