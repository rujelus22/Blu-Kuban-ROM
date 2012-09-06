.class Lcom/google/android/apps/googlevoice/SettingsActivity$1;
.super Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 120
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/activity/UntypedMessageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 123
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_34

    .line 132
    :cond_5
    return-void

    .line 125
    :pswitch_6
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #calls: Lcom/google/android/apps/googlevoice/SettingsActivity;->updatePreferenceValues()V
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$000(Lcom/google/android/apps/googlevoice/SettingsActivity;)V

    .line 126
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    #getter for: Lcom/google/android/apps/googlevoice/SettingsActivity;->settingsProviders:Ljava/util/List;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/SettingsActivity;->access$100(Lcom/google/android/apps/googlevoice/SettingsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/googlevoice/SettingsProvider;

    .line 127
    .local v1, settingsProvider:Lcom/google/android/apps/googlevoice/SettingsProvider;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-virtual {v3}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$1;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/googlevoice/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/apps/googlevoice/SettingsProvider;->update(Landroid/content/Context;Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceManager;)V

    goto :goto_15

    .line 123
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
