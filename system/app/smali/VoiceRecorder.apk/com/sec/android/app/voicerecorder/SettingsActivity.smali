.class public Lcom/sec/android/app/voicerecorder/SettingsActivity;
.super Landroid/app/Activity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;,
        Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

.field private mEventHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    .line 59
    new-instance v0, Lcom/sec/android/app/voicerecorder/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mUpdateHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/sec/android/app/voicerecorder/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity$2;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mEventHandler:Landroid/os/Handler;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/voicerecorder/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->initList()V

    return-void
.end method

.method private initList()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->updateListItems()V

    .line 151
    return-void
.end method

.method private updateListItems()V
    .registers 10

    .prologue
    const v8, 0x7f06005e

    const v7, 0x7f06000f

    const v6, 0x7f06000d

    const v4, 0x7f060009

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    if-nez v2, :cond_6f

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;>;"
    new-instance v2, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getSelectedStorageString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getDefaultFileName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getQualityString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getLimitForMmsString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    .line 168
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 169
    .local v1, list:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;>;"
    .end local v1           #list:Landroid/widget/ListView;
    :goto_6e
    return-void

    .line 172
    :cond_6f
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->clear()V

    .line 174
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    new-instance v3, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getSelectedStorageString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->add(Ljava/lang/Object;)V

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    new-instance v3, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getDefaultFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->add(Ljava/lang/Object;)V

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    new-instance v3, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v8}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getQualityString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->add(Ljava/lang/Object;)V

    .line 178
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    new-instance v3, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->getLimitForMmsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsItem;-><init>(Lcom/sec/android/app/voicerecorder/SettingsActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->add(Ljava/lang/Object;)V

    .line 179
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->notifyDataSetChanged()V

    goto :goto_6e
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 82
    const-string v0, "SettingsActivity"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRSettings;->initAppContext(Landroid/content/Context;)V

    .line 85
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->setContentView(I)V

    .line 87
    new-instance v0, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 77
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 192
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mAdapter:Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity$SettingsAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    .line 193
    add-int/lit8 p3, p3, 0x1

    .line 196
    :cond_b
    packed-switch p3, :pswitch_data_3a

    .line 215
    :goto_e
    return-void

    .line 198
    :pswitch_f
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createStorageDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e

    .line 202
    :pswitch_19
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->isShown:Z

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createDefaultNameDialog(Landroid/app/Activity;Landroid/os/Handler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_e

    .line 207
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createQualityDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_e

    .line 210
    :pswitch_30
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mUpdateHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createLimitForMmsDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_e

    .line 196
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_f
        :pswitch_19
        :pswitch_26
        :pswitch_30
    .end packed-switch
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 100
    const-string v0, "SettingsActivity"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->initList()V

    .line 105
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/SettingsActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    return-void
.end method
