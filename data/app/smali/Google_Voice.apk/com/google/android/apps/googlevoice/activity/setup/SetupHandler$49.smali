.class Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;
.super Ljava/lang/Object;
.source "SetupHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->getCallingModesClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 3109
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3112
    .local p1, listView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->serverSettings:Lcom/google/android/apps/googlevoice/settings/ServerSettings;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$500(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/settings/ServerSettings;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v3}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$600(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/googlevoice/VoiceUtil;->getModes(Lcom/google/android/apps/googlevoice/settings/ServerSettings;Lcom/google/android/apps/googlevoice/VoicePreferences;)[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v0

    .line 3113
    .local v0, modes:[Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    aget-object v1, v0, p3

    .line 3114
    .local v1, selectedMode:Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$600(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/apps/googlevoice/VoicePreferences;->setMode(Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;)V

    .line 3115
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v2, v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->callingModesAdapter:Lcom/google/android/apps/googlevoice/CallingModesAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/googlevoice/CallingModesAdapter;->notifyDataSetChanged()V

    .line 3116
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    iget-object v3, v2, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->currentPageActivity:Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;

    iget-object v2, p0, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler$49;->this$0:Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;

    #getter for: Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->voicePreferences:Lcom/google/android/apps/googlevoice/VoicePreferences;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;->access$600(Lcom/google/android/apps/googlevoice/activity/setup/SetupHandler;)Lcom/google/android/apps/googlevoice/VoicePreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/googlevoice/VoicePreferences;->getMode()Lcom/google/android/apps/googlevoice/VoicePreferences$Mode;

    move-result-object v2

    if-eqz v2, :cond_37

    const/4 v2, 0x1

    :goto_33
    invoke-virtual {v3, v2}, Lcom/google/android/apps/googlevoice/activity/setup/BaseSetupActivity;->setRightButtonEnabled(Z)V

    .line 3117
    return-void

    .line 3116
    :cond_37
    const/4 v2, 0x0

    goto :goto_33
.end method
