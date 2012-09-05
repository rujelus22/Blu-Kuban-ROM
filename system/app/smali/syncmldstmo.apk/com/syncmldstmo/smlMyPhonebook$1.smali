.class Lcom/syncmldstmo/smlMyPhonebook$1;
.super Ljava/lang/Object;
.source "smlMyPhonebook.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smlMyPhonebook;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smlMyPhonebook;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smlMyPhonebook;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/high16 v1, 0x20

    const/4 v2, 0x1

    .line 56
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetAutoSyncReady()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 59
    :cond_e
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    if-nez v0, :cond_23

    .line 61
    const-string v0, "[MYPHONEBOOK] profileInfo.bIsMember is false"

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #calls: Lcom/syncmldstmo/smlMyPhonebook;->smluiCheckMember()V
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$100(Lcom/syncmldstmo/smlMyPhonebook;)V

    .line 95
    :goto_22
    return v2

    .line 66
    :cond_23
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v0, :cond_43

    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v0, :cond_43

    .line 68
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x39

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 72
    :cond_43
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 74
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_22

    .line 78
    :cond_51
    const-string v0, "MYPHONEBOOK SYNC START"

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    .line 83
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 85
    const-string v0, "Roming true..."

    invoke-static {v1, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 87
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #calls: Lcom/syncmldstmo/smlMyPhonebook;->smluiRoaming()V
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$200(Lcom/syncmldstmo/smlMyPhonebook;)V

    goto :goto_22

    .line 91
    :cond_6d
    invoke-static {v2}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 92
    const/16 v0, 0x20

    invoke-static {v0, v3, v3}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$1;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #calls: Lcom/syncmldstmo/smlMyPhonebook;->smluiStartSync()V
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$300(Lcom/syncmldstmo/smlMyPhonebook;)V

    goto :goto_22
.end method
