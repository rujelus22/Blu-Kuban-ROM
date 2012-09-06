.class Lcom/google/android/apps/googlevoice/SettingsActivity$5;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SettingsActivity;->addPreferenceListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$5;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$5;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SettingsActivity;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$400(Lcom/google/android/apps/googlevoice/SettingsActivity;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setNotifyWhenNewTextMessage(Z)V

    .line 374
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$5;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #calls: Lcom/google/android/apps/googlevoice/SettingsActivity;->updateVibrateLightAndRingtoneEnabledState()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$500(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    .line 375
    const/4 v0, 0x1

    return v0
.end method
