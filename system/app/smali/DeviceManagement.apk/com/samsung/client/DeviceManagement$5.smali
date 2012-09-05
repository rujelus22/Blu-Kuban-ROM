.class Lcom/samsung/client/DeviceManagement$5;
.super Ljava/lang/Object;
.source "DeviceManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/client/DeviceManagement;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DeviceManagement;


# direct methods
.method constructor <init>(Lcom/samsung/client/DeviceManagement;)V
    .registers 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    .line 254
    sget v1, Lcom/samsung/client/DMApp;->mCallState:I

    if-eqz v1, :cond_c

    .line 255
    iget-object v0, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    #calls: Lcom/samsung/client/DeviceManagement;->showCallError()V
    invoke-static {v0}, Lcom/samsung/client/DeviceManagement;->access$200(Lcom/samsung/client/DeviceManagement;)V

    .line 256
    const/4 v0, 0x1

    .line 266
    :goto_b
    return v0

    .line 259
    :cond_c
    sget-object v1, Lcom/samsung/client/DeviceManagement;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 261
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/client/DMApp;->setSessionType(I)V

    .line 262
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-boolean v0, v1, Lcom/samsung/client/DMApp;->userCancel:Z

    .line 263
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    iput-boolean v0, v1, Lcom/samsung/client/DMApp;->userCancelDld:Z

    .line 265
    iget-object v1, p0, Lcom/samsung/client/DeviceManagement$5;->this$0:Lcom/samsung/client/DeviceManagement;

    #getter for: Lcom/samsung/client/DeviceManagement;->mApp:Lcom/samsung/client/DMApp;
    invoke-static {v1}, Lcom/samsung/client/DeviceManagement;->access$000(Lcom/samsung/client/DeviceManagement;)Lcom/samsung/client/DMApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/client/DMApp;->fumoStartSession()V

    goto :goto_b
.end method
