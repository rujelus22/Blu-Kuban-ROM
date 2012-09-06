.class public Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;
.super Ljava/lang/Object;
.source "BaseSettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/settings/BaseSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RingtonePreferenceChangeListener"
.end annotation


# instance fields
.field private mDefaultPath:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/plus/settings/BaseSettingsActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/settings/BaseSettingsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "key"
    .parameter "defaultPath"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/BaseSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->mKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->mDefaultPath:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->this$0:Lcom/google/android/apps/plus/settings/BaseSettingsActivity;

    check-cast p2, Ljava/lang/String;

    .end local p2
    iget-object v2, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/settings/BaseSettingsActivity$RingtonePreferenceChangeListener;->mDefaultPath:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Lcom/google/android/apps/plus/settings/BaseSettingsActivity;->getRingtoneName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, ringtoneName:Ljava/lang/String;
    if-eqz v0, :cond_11

    .line 66
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 68
    :cond_11
    const/4 v1, 0x1

    return v1
.end method
