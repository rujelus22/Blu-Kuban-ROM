.class Lcom/syncmldstmo/smlMyPhonebook$4;
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
    .line 145
    iput-object p1, p0, Lcom/syncmldstmo/smlMyPhonebook$4;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 148
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$4;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    if-nez v0, :cond_c

    .line 159
    :goto_b
    return v2

    .line 155
    :cond_c
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$4;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlMyPhonebook$4;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->calendar_sync:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/syncmldstmo/smlMyPhonebook;->access$600(Lcom/syncmldstmo/smlMyPhonebook;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 156
    iget-object v0, p0, Lcom/syncmldstmo/smlMyPhonebook$4;->this$0:Lcom/syncmldstmo/smlMyPhonebook;

    #getter for: Lcom/syncmldstmo/smlMyPhonebook;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v0}, Lcom/syncmldstmo/smlMyPhonebook;->access$000(Lcom/syncmldstmo/smlMyPhonebook;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 158
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    goto :goto_b
.end method
