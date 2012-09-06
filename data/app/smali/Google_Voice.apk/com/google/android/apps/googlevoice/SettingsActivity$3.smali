.class Lcom/google/android/apps/googlevoice/SettingsActivity$3;
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
.field receiveTextMessagesPreference:Landroid/preference/ListPreference;

.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 4
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    sget v1, Lcom/google/android/apps/googlevoice/R$string;->receive_text_messages_key:I

    #calls: Lcom/google/android/apps/googlevoice/SettingsActivity;->findPreference(I)Landroid/preference/Preference;
    invoke-static {v0, v1}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$200(Lcom/google/android/apps/googlevoice/SettingsActivity;I)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$3;->receiveTextMessagesPreference:Landroid/preference/ListPreference;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$3;->receiveTextMessagesPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 342
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$3;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #calls: Lcom/google/android/apps/googlevoice/SettingsActivity;->toggleNotificationViaSms()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$300(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    .line 344
    :cond_11
    const/4 v0, 0x0

    return v0
.end method
