.class public Lcom/google/android/apps/googlevoice/LabelListActivity;
.super Landroid/app/ListActivity;
.source "LabelListActivity.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/googlevoice/LabelListActivity$1;,
        Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;
    }
.end annotation


# static fields
.field private static final ID_LABELS_REFRESH_VIEW:I = 0x0

.field private static final ID_LABEL_CLICK:I = 0x1

.field private static final ID_MENU_ITEM_REFRESH:I = 0xa

.field private static final ID_UPDATE_COMPLETED:I = 0x3

.field private static final ID_UPDATE_STARTED:I = 0x2


# instance fields
.field private actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

.field private dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

.field private handler:Landroid/os/Handler;

.field private labels:[Lcom/google/android/apps/googlevoice/core/Label;

.field private voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/googlevoice/LabelListActivity;)[Lcom/google/android/apps/googlevoice/core/Label;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/googlevoice/LabelListActivity;)Lcom/google/android/apps/googlevoice/DependencyResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/googlevoice/LabelListActivity;)Lcom/google/android/apps/googlevoice/system/ActionBarHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    return-object v0
.end method

.method private setLabels([Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 4
    .parameter "labels"

    .prologue
    .line 112
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 113
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->labels:[Lcom/google/android/apps/googlevoice/core/Label;

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 115
    return-void
.end method


# virtual methods
.method public actionUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Action;)V
    .registers 3
    .parameter "model"
    .parameter "action"

    .prologue
    .line 143
    return-void
.end method

.method public actionsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 148
    return-void
.end method

.method public contactsUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 2
    .parameter "model"

    .prologue
    .line 138
    return-void
.end method

.method public conversationUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Conversation;)V
    .registers 4
    .parameter "model"
    .parameter "conversation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setLabels([Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 133
    return-void
.end method

.method public labelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;Lcom/google/android/apps/googlevoice/core/Label;)V
    .registers 3
    .parameter "model"
    .parameter "label"

    .prologue
    .line 128
    return-void
.end method

.method public modelUpdated(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 3
    .parameter "model"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setLabels([Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 121
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sget-object v0, Lcom/google/android/apps/googlevoice/util/VoiceAllocationCounters;->CONTEXTS:Lcom/google/android/apps/googlevoice/util/AllocationCounter;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/googlevoice/util/AllocationCounter;->register(Ljava/lang/Object;)V

    .line 54
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_11

    .line 55
    const-string v0, "LabelListActivity.onCreate()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 58
    :cond_11
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->requestWindowFeature(I)Z

    .line 60
    invoke-static {}, Lcom/google/android/apps/googlevoice/VoiceApplication;->getDependencyResolver()Lcom/google/android/apps/googlevoice/DependencyResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    .line 61
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getVoiceModel()Lcom/google/android/apps/googlevoice/model/VoiceModel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->dependencyResolver:Lcom/google/android/apps/googlevoice/DependencyResolver;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/DependencyResolver;->getActionBarHelper()Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    .line 63
    new-instance v0, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/googlevoice/LabelListActivity$LabelListHandler;-><init>(Lcom/google/android/apps/googlevoice/LabelListActivity;Lcom/google/android/apps/googlevoice/LabelListActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->actionBarHelper:Lcom/google/android/apps/googlevoice/system/ActionBarHelper;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/system/ActionBarHelper;->requestLeftIcon(Landroid/app/Activity;)V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 98
    const/16 v1, 0xa

    sget v2, Lcom/google/android/apps/googlevoice/R$string;->menu_item_refresh:I

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    sget v2, Lcom/google/android/apps/googlevoice/R$drawable;->ic_menu_refresh:I

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 100
    .local v0, refreshMenuItem:Landroid/view/MenuItem;
    invoke-static {v0, v4}, Landroid/support/v4/view/MenuCompat;->setShowAsAction(Landroid/view/MenuItem;I)Z

    .line 102
    return v4
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 9
    .parameter "view"
    .parameter "v"
    .parameter "pos"
    .parameter "id"

    .prologue
    .line 87
    sget-boolean v1, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v1, :cond_24

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 90
    :cond_24
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 91
    .local v0, message:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 92
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "menuItem"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 70
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 71
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_c

    .line 72
    const-string v0, "LabelListActivity.onStart()"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->addListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->getLabels()[Lcom/google/android/apps/googlevoice/core/Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/googlevoice/LabelListActivity;->setLabels([Lcom/google/android/apps/googlevoice/core/Label;)V

    .line 77
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->voiceModel:Lcom/google/android/apps/googlevoice/model/VoiceModel;

    invoke-interface {v0, p0}, Lcom/google/android/apps/googlevoice/model/VoiceModel;->removeListener(Lcom/google/android/apps/googlevoice/model/VoiceModel$Listener;)Z

    .line 82
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 83
    return-void
.end method

.method public updateCompleted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 158
    return-void
.end method

.method public updateException(Lcom/google/android/apps/googlevoice/model/VoiceModel;Ljava/lang/Exception;)V
    .registers 5
    .parameter "model"
    .parameter "exception"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    return-void
.end method

.method public updateStarted(Lcom/google/android/apps/googlevoice/model/VoiceModel;)V
    .registers 4
    .parameter "model"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LabelListActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 153
    return-void
.end method
