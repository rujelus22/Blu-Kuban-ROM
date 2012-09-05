.class public Lcom/sprint/dsa/PageActivity;
.super Landroid/app/Activity;
.source "PageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/PageActivity$ProgressRunnable;,
        Lcom/sprint/dsa/PageActivity$TestDataTask;
    }
.end annotation


# static fields
.field public static final KEYGUARD_TAG:Ljava/lang/String; = "SprintZone"

.field private static final TAG:Ljava/lang/String; = "SprintZone_PageActivity"

.field public static final WAKELOCK_TAG:Ljava/lang/String; = "SprintZone"


# instance fields
.field private final ACTIVATE_PHONE:I

.field private mActivatePhone:Z

.field private mActivePackId:Ljava/lang/String;

.field private mBusy:Z

.field private mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

.field mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

.field private mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

.field private mDbPacks:Lcom/sprint/dsa/pack/DbPacks;

.field private mLastIntent:Landroid/content/Intent;

.field private mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

.field private mListView:Landroid/widget/ExpandableListView;

.field private mPageContent:Lcom/sprint/dsa/data/PageContent;

.field private mPageId:I

.field mPrefs:Lcom/sprint/dsa/Prefs;

.field private mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;

.field private mSMSReceiver:Landroid/content/BroadcastReceiver;

.field private mSettings:Lcom/sprint/dsa/SzSettings;

.field private mSoftwareUpdateProps:Ljava/util/Properties;

.field private mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

.field private mTestIsInProgress:Z

.field private mUpdateFinishedReciever:Landroid/content/BroadcastReceiver;

.field private mUpdateStartedReciever:Landroid/content/BroadcastReceiver;

.field mp:Landroid/media/MediaPlayer;

.field final onCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

.field final onCompleteAudioListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field final onPromoClick:Landroid/widget/ExpandableListView$OnChildClickListener;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/sprint/dsa/PageActivity;->ACTIVATE_PHONE:I

    .line 113
    iput v1, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    .line 116
    iput-boolean v1, p0, Lcom/sprint/dsa/PageActivity;->mActivatePhone:Z

    .line 122
    iput-object v2, p0, Lcom/sprint/dsa/PageActivity;->mActivePackId:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/sprint/dsa/PageActivity;->mLastIntent:Landroid/content/Intent;

    .line 125
    iput-object v2, p0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    .line 424
    new-instance v0, Lcom/sprint/dsa/PageActivity$1;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$1;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->onCompleteAudioListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 436
    new-instance v0, Lcom/sprint/dsa/PageActivity$2;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$2;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->onPromoClick:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 950
    new-instance v0, Lcom/sprint/dsa/PageActivity$3;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$3;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mUpdateFinishedReciever:Landroid/content/BroadcastReceiver;

    .line 964
    new-instance v0, Lcom/sprint/dsa/PageActivity$4;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$4;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mUpdateStartedReciever:Landroid/content/BroadcastReceiver;

    .line 980
    new-instance v0, Lcom/sprint/dsa/PageActivity$5;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$5;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mSMSReceiver:Landroid/content/BroadcastReceiver;

    .line 1142
    new-instance v0, Lcom/sprint/dsa/PageActivity$6;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/PageActivity$6;-><init>(Lcom/sprint/dsa/PageActivity;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->onCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/widget/ContentListAdapter;
    .registers 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sprint/dsa/PageActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 1133
    invoke-direct {p0}, Lcom/sprint/dsa/PageActivity;->requestFactoryReset()V

    return-void
.end method

.method static synthetic access$10(Lcom/sprint/dsa/PageActivity;Ljava/util/Properties;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    return-void
.end method

.method static synthetic access$11(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/PageContent;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sprint/dsa/PageActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sprint/dsa/PageActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/sprint/dsa/PageActivity;->onStartTestConnections()V

    return-void
.end method

.method static synthetic access$4(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/data/DbAdapter;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sprint/dsa/PageActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/sprint/dsa/PageActivity;->mBusy:Z

    return-void
.end method

.method static synthetic access$6(Lcom/sprint/dsa/PageActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter

    .prologue
    .line 950
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mUpdateFinishedReciever:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sprint/dsa/PageActivity;)Lcom/sprint/dsa/PageActivity$ProgressRunnable;
    .registers 2
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/PageActivity$ProgressRunnable;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    return-void
.end method

.method static synthetic access$9(Lcom/sprint/dsa/PageActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z

    return-void
.end method

.method private expandList()V
    .registers 5

    .prologue
    .line 827
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v3}, Lcom/sprint/dsa/widget/ContentListAdapter;->getGroupCount()I

    move-result v0

    .line 828
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    if-lt v2, v0, :cond_a

    .line 832
    return-void

    .line 829
    :cond_a
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v3}, Lcom/sprint/dsa/widget/ContentListAdapter;->getCurrentListContent()Lcom/sprint/dsa/data/PageContent;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sprint/dsa/data/PageContent;->getCategory(I)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprint/dsa/data/CategoryItem;->isExpanded()Z

    move-result v1

    .line 830
    .local v1, expanded:Z
    if-eqz v1, :cond_1f

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 828
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private mResetMenu(Landroid/view/Menu;)Ljava/lang/Runnable;
    .registers 3
    .parameter "menu"

    .prologue
    .line 556
    new-instance v0, Lcom/sprint/dsa/PageActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/sprint/dsa/PageActivity$8;-><init>(Lcom/sprint/dsa/PageActivity;Landroid/view/Menu;)V

    return-object v0
.end method

.method private onStartTestConnections()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 278
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v3}, Lcom/sprint/dsa/widget/ContentListAdapter;->getTestConnectionView()Lcom/sprint/dsa/widget/TestConnectionView;

    move-result-object v2

    .line 281
    .local v2, testView:Lcom/sprint/dsa/widget/TestConnectionView;
    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08004b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 282
    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08004c

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 283
    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/widget/TestConnectionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f08004f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 286
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sprint/dsa/PageActivity;->mTestIsInProgress:Z

    .line 288
    invoke-virtual {v2}, Lcom/sprint/dsa/widget/TestConnectionView;->isVoiceTested()Z

    move-result v3

    if-nez v3, :cond_73

    .line 291
    new-instance v3, Landroid/content/Intent;

    .line 292
    const-string v4, "SMS_SENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 293
    .local v1, sentPI:Landroid/app/PendingIntent;
    new-instance v3, Landroid/content/Intent;

    .line 294
    const-string v4, "SMS_DELIVERED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-static {p0, v5, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 295
    .local v0, deliveredPI:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mSMSReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "SMS_SENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/sprint/dsa/PageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    invoke-static {p0, v1, v0}, Lcom/sprint/dsa/dss/DsaDiag;->testSMS(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    .line 299
    new-instance v3, Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    const v5, 0x7f0b0011

    invoke-direct {v3, p0, v2, v4, v5}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;-><init>(Lcom/sprint/dsa/PageActivity;Lcom/sprint/dsa/widget/TestConnectionView;Lcom/sprint/dsa/widget/ContentListAdapter;I)V

    iput-object v3, p0, Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    .line 300
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mProgress:Lcom/sprint/dsa/PageActivity$ProgressRunnable;

    invoke-virtual {v3}, Lcom/sprint/dsa/PageActivity$ProgressRunnable;->run()V

    .line 302
    .end local v0           #deliveredPI:Landroid/app/PendingIntent;
    .end local v1           #sentPI:Landroid/app/PendingIntent;
    :cond_73
    return-void
.end method

.method private requestFactoryReset()V
    .registers 7

    .prologue
    .line 1135
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->onCallback:Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;

    .line 1136
    const/4 v2, 0x0

    .line 1137
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1138
    const v0, 0x1040013

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1139
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 1135
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    .line 1140
    return-void
.end method

.method private saveExpandedState()V
    .registers 6

    .prologue
    .line 835
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v4}, Lcom/sprint/dsa/widget/ContentListAdapter;->getGroupCount()I

    move-result v1

    .line 836
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_7
    if-lt v3, v1, :cond_a

    .line 842
    return-void

    .line 837
    :cond_a
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    .line 838
    .local v2, expanded:Z
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v4, v3}, Lcom/sprint/dsa/data/PageContent;->getCategory(I)Lcom/sprint/dsa/data/CategoryItem;

    move-result-object v0

    .line 839
    .local v0, category:Lcom/sprint/dsa/data/CategoryItem;
    invoke-virtual {v0, v2}, Lcom/sprint/dsa/data/CategoryItem;->setExpanded(Z)V

    .line 840
    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v4, v0}, Lcom/sprint/dsa/data/DbAdapter;->updateCategoryState(Lcom/sprint/dsa/data/CategoryItem;)V

    .line 836
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method


# virtual methods
.method public applyPackStyles(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 219
    const-string v2, "com.sprint.extra.PACK_ID"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, packId:Ljava/lang/String;
    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mActivePackId:Ljava/lang/String;

    .line 223
    if-eqz v1, :cond_35

    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, pack:Lcom/sprint/dsa/pack/Pack;
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mDbPacks:Lcom/sprint/dsa/pack/DbPacks;

    invoke-virtual {v2, v1}, Lcom/sprint/dsa/pack/DbPacks;->readPack(Ljava/lang/String;)Lcom/sprint/dsa/pack/Pack;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_36

    .line 247
    new-instance v2, Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-direct {v2, v0}, Lcom/sprint/dsa/pack/StylesApplicator;-><init>(Lcom/sprint/dsa/pack/Pack;)V

    iput-object v2, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    .line 252
    :goto_1a
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    if-eqz v2, :cond_25

    .line 253
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/widget/ContentListAdapter;->setStyles(Lcom/sprint/dsa/pack/StylesApplicator;)V

    .line 256
    :cond_25
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-virtual {v2, p0}, Lcom/sprint/dsa/pack/StylesApplicator;->apply(Landroid/app/Activity;)V

    .line 259
    if-eqz v0, :cond_35

    iget-object v2, v0, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    if-eqz v2, :cond_35

    .line 260
    iget-object v2, v0, Lcom/sprint/dsa/pack/Pack;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 267
    .end local v0           #pack:Lcom/sprint/dsa/pack/Pack;
    :cond_35
    return-void

    .line 249
    .restart local v0       #pack:Lcom/sprint/dsa/pack/Pack;
    :cond_36
    new-instance v2, Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-direct {v2}, Lcom/sprint/dsa/pack/StylesApplicator;-><init>()V

    iput-object v2, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    goto :goto_1a
.end method

.method public getActivePackId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mActivePackId:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 3

    .prologue
    .line 1124
    new-instance v0, Lcom/sprint/dsa/res/SzResources;

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sprint/dsa/res/SzResources;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected handleSoftwareUpdateClick(Lcom/sprint/dsa/data/FeatureItem;)Z
    .registers 24
    .parameter "item"

    .prologue
    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11e

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    move-object/from16 v18, v0

    const-string v19, "swMOD"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 758
    .local v16, swMOD:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 759
    const-string v18, "fumo"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 760
    .local v10, isFumo:Z
    const-string v18, "Cable"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 761
    .local v9, isCable:Z
    const-string v18, "Google"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 762
    .local v11, isGoogle:Z
    const-string v18, "Intent"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 763
    .local v12, isIntent:Z
    const-string v18, "Message"

    const/16 v19, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/sprint/dsa/Util;->stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 765
    .local v13, isMessage:Z
    if-eqz v10, :cond_7d

    .line 768
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/data/FeatureItem;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/data/FeatureItem;->getUri()Ljava/lang/String;

    move-result-object v19

    .line 769
    invoke-virtual/range {p1 .. p1}, Lcom/sprint/dsa/data/FeatureItem;->getExtra()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sprint/dsa/Action;->doAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 821
    .end local v9           #isCable:Z
    .end local v10           #isFumo:Z
    .end local v11           #isGoogle:Z
    .end local v12           #isIntent:Z
    .end local v13           #isMessage:Z
    .end local v16           #swMOD:Ljava/lang/String;
    :goto_7c
    return v18

    .line 771
    .restart local v9       #isCable:Z
    .restart local v10       #isFumo:Z
    .restart local v11       #isGoogle:Z
    .restart local v12       #isIntent:Z
    .restart local v13       #isMessage:Z
    .restart local v16       #swMOD:Ljava/lang/String;
    :cond_7d
    if-eqz v12, :cond_ea

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    move-object/from16 v18, v0

    const-string v19, "swAction"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 773
    .local v14, swAction:Ljava/lang/String;
    invoke-static {v14}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 775
    if-eqz v14, :cond_e7

    .line 777
    :try_start_91
    const-string v18, "class:"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_bb

    .line 778
    const-string v18, "class:"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 779
    .local v5, className:Ljava/lang/String;
    invoke-static {v5}, Lcom/sprint/dsa/Util;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 780
    .local v6, compName:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 781
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 782
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    .line 783
    const/16 v18, 0x1

    goto :goto_7c

    .line 785
    .end local v5           #className:Ljava/lang/String;
    .end local v6           #compName:Landroid/content/ComponentName;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_bb
    const-string v18, "http"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_cf

    const-string v18, "sai"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e7

    .line 786
    :cond_cf
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 787
    .local v17, uri:Landroid/net/Uri;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 788
    .restart local v8       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_e3} :catch_e6

    .line 789
    const/16 v18, 0x1

    goto :goto_7c

    .line 792
    .end local v8           #intent:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :catch_e6
    move-exception v18

    .line 797
    :cond_e7
    const/16 v18, 0x0

    goto :goto_7c

    .line 799
    .end local v14           #swAction:Ljava/lang/String;
    :cond_ea
    if-nez v9, :cond_ee

    if-eqz v13, :cond_10b

    .line 802
    :cond_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sprint/dsa/PageActivity;->mSoftwareUpdateProps:Ljava/util/Properties;

    move-object/from16 v18, v0

    const-string v19, "swDetails"

    invoke-virtual/range {v18 .. v19}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 803
    .local v15, swDet:Ljava/lang/String;
    invoke-static {v15}, Lcom/sprint/dsa/Util;->stripQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 804
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v15}, Lcom/sprint/dsa/Util;->showMessageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    .line 805
    const/16 v18, 0x1

    goto/16 :goto_7c

    .line 807
    .end local v15           #swDet:Ljava/lang/String;
    :cond_10b
    if-eqz v11, :cond_11a

    .line 810
    invoke-static {}, Lcom/sprint/dsa/Util;->getSystemUpdateIntent()Landroid/content/Intent;

    move-result-object v7

    .line 811
    .local v7, googleUpdate:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    .line 812
    const/16 v18, 0x1

    goto/16 :goto_7c

    .line 816
    .end local v7           #googleUpdate:Landroid/content/Intent;
    :cond_11a
    const/16 v18, 0x0

    goto/16 :goto_7c

    .line 821
    .end local v9           #isCable:Z
    .end local v10           #isFumo:Z
    .end local v11           #isGoogle:Z
    .end local v12           #isIntent:Z
    .end local v13           #isMessage:Z
    .end local v16           #swMOD:Ljava/lang/String;
    :cond_11e
    const/16 v18, 0x0

    goto/16 :goto_7c
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x3

    .line 134
    new-instance v0, Lcom/sprint/dsa/Prefs;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/Prefs;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mPrefs:Lcom/sprint/dsa/Prefs;

    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    new-instance v0, Lcom/sprint/dsa/pack/DbPacks;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/pack/DbPacks;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mDbPacks:Lcom/sprint/dsa/pack/DbPacks;

    .line 140
    new-instance v0, Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-direct {v0}, Lcom/sprint/dsa/pack/StylesApplicator;-><init>()V

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    .line 142
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->requestWindowFeature(I)Z

    .line 143
    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->requestWindowFeature(I)Z

    .line 145
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->setContentView(I)V

    .line 146
    const v0, 0x7f020014

    invoke-virtual {p0, v1, v0}, Lcom/sprint/dsa/PageActivity;->setFeatureDrawableResource(II)V

    .line 148
    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    .line 152
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->onPromoClick:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mUpdateStartedReciever:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sprint.dsa.ACTION_UPDATE_STARTED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sprint/dsa/PageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 4
    .parameter "id"

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_1e

    .line 522
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 515
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 516
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080063

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 517
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 518
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_4

    .line 513
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 528
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->isCustomerCare()Z

    move-result v1

    if-nez v1, :cond_14

    .line 530
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 531
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 532
    const/4 v1, 0x1

    .line 535
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :goto_13
    return v1

    :cond_14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_13
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->testConnection()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mSMSReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_31

    .line 402
    :cond_d
    :goto_d
    :try_start_d
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mUpdateStartedReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_12} :catch_3a

    .line 409
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mUpdateFinishedReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_43

    .line 415
    :goto_17
    iget-boolean v1, p0, Lcom/sprint/dsa/PageActivity;->mActivatePhone:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->isInitCompleted()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 416
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->release()V

    .line 419
    :cond_28
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbPacks:Lcom/sprint/dsa/pack/DbPacks;

    invoke-virtual {v1}, Lcom/sprint/dsa/pack/DbPacks;->close()V

    .line 421
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 422
    return-void

    .line 397
    :catch_31
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    const-string v2, "Error unregister receiver: SMS Receiver has not been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 404
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3a
    move-exception v0

    .line 405
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    const-string v2, "Error unregister receiver: SMS Receiver has not been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 411
    .end local v0           #e:Ljava/lang/Exception;
    :catch_43
    move-exception v0

    .line 412
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    const-string v2, "Error unregister receiver: SMS Receiver has not been registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    .line 89
    const/16 v2, 0x1b

    if-ne p1, v2, :cond_7

    .line 101
    :goto_6
    return v1

    .line 90
    :cond_7
    if-ne p1, v3, :cond_36

    .line 92
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/PageContent;->testConnection()Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mSMSReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_16
    iget v2, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    if-eqz v2, :cond_36

    iget v2, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    if-eq v2, v3, :cond_36

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 96
    const-string v2, "SPRINT_ZONE_PAGE"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    :cond_36
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_6
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 163
    iput-object p1, p0, Lcom/sprint/dsa/PageActivity;->mLastIntent:Landroid/content/Intent;

    .line 165
    const-string v3, "com.sprint.extra.TITLE"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, title:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 167
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    :cond_f
    const-string v3, "SPRINT_ZONE_PAGE"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    .line 175
    iget v3, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    if-ne v3, v4, :cond_33

    .line 177
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Lcom/sprint/dsa/PageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 178
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    .line 180
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sprint/dsa/PageActivity$7;

    invoke-direct {v4, p0}, Lcom/sprint/dsa/PageActivity$7;-><init>(Lcom/sprint/dsa/PageActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 198
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_33
    :try_start_33
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    if-nez v3, :cond_3e

    new-instance v3, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v3, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 199
    :cond_3e
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v3}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v3}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_4b} :catch_6d

    .line 204
    :cond_4b
    :goto_4b
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "SPRINT_ZONE_ACTIVATE_PHONE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sprint/dsa/PageActivity;->mActivatePhone:Z

    .line 206
    iget-boolean v3, p0, Lcom/sprint/dsa/PageActivity;->mActivatePhone:Z

    if-eqz v3, :cond_69

    .line 209
    new-instance v3, Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    iget-object v4, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v3, p0, v4}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;-><init>(Landroid/content/Context;Lcom/sprint/dsa/data/DbAdapter;)V

    iput-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    .line 211
    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v3}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->initProgramming()V

    .line 214
    :cond_69
    invoke-virtual {p0, p1}, Lcom/sprint/dsa/PageActivity;->applyPackStyles(Landroid/content/Intent;)V

    .line 215
    return-void

    .line 200
    :catch_6d
    move-exception v1

    .line 201
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SprintZone_PageActivity"

    const-string v4, "failed to open DB"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_36

    .line 595
    const/4 v1, 0x0

    :goto_9
    return v1

    .line 572
    :sswitch_a
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageSettings;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 577
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_15
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/UpdateService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 578
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 582
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_20
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageAlerts;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 583
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 590
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2b
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sprint/dsa/PageAbout;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 591
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sprint/dsa/PageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 567
    :sswitch_data_36
    .sparse-switch
        0x7f0b002e -> :sswitch_a
        0x7f0b0055 -> :sswitch_15
        0x7f0b0057 -> :sswitch_20
        0x7f0b0058 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-static {v1}, Lcom/sprint/dsa/Reporting;->reportAppStop(Lcom/sprint/dsa/data/DbAdapter;)V

    .line 349
    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/sprint/dsa/PageActivity;->saveExpandedState()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_51

    .line 358
    :goto_e
    :try_start_e
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_27

    .line 359
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 360
    :cond_1f
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->resetSound()V

    .line 361
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_58

    .line 368
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    if-eqz v1, :cond_48

    .line 369
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->resetActivityState(Z)V

    .line 371
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->dismissProgressDialog()V

    .line 372
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->dismissRunAgainDialog()V

    .line 375
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->isActivationRequested()Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v1}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->release()V

    .line 378
    :cond_48
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->cleanup()V

    .line 380
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 381
    return-void

    .line 351
    :catch_51
    move-exception v0

    .line 354
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    :catch_58
    move-exception v0

    .line 365
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageActivity"

    const-string v2, "Error stoping MediaPlayer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    if-eqz v1, :cond_46

    .line 543
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    .local v0, i:I
    :goto_a
    if-gtz v0, :cond_33

    .line 546
    iget-boolean v1, p0, Lcom/sprint/dsa/PageActivity;->mBusy:Z

    if-eqz v1, :cond_1e

    .line 547
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Lcom/sprint/dsa/PageActivity;->mResetMenu(Landroid/view/Menu;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 549
    :cond_1e
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 550
    const v1, 0x7f0b0055

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 554
    .end local v0           #i:I
    :cond_32
    :goto_32
    return v3

    .line 544
    .restart local v0       #i:I
    :cond_33
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/sprint/dsa/PageActivity;->mBusy:Z

    if-eqz v1, :cond_44

    move v1, v2

    :goto_3e
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 543
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_44
    move v1, v3

    .line 544
    goto :goto_3e

    .line 554
    .end local v0           #i:I
    :cond_46
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    goto :goto_32
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 308
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v2

    if-nez v2, :cond_11

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;

    .line 310
    :cond_11
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->refreshContent()V

    .line 313
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v2}, Lcom/sprint/dsa/data/PageContent;->testConnection()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 314
    sget-boolean v2, Lcom/sprint/dsa/Util;->MANUAL_RUN_DATA_TEST:Z

    if-nez v2, :cond_23

    .line 315
    invoke-direct {p0}, Lcom/sprint/dsa/PageActivity;->onStartTestConnections()V

    .line 320
    :cond_23
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    if-eqz v2, :cond_2c

    .line 321
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mDSA:Lcom/sprint/dsa/dss/DsaDeviceProgramming;

    invoke-virtual {v2, v5}, Lcom/sprint/dsa/dss/DsaDeviceProgramming;->setRequestActivate(Z)V

    .line 327
    :cond_2c
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    const-string v3, "activity"

    .line 328
    const-class v4, Lcom/sprint/dsa/PowerConfigActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 327
    invoke-virtual {v2, v3, v4}, Lcom/sprint/dsa/data/PageContent;->getFeatureItem(Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/data/FeatureItem;

    move-result-object v1

    .line 329
    .local v1, powerItem:Lcom/sprint/dsa/data/FeatureItem;
    if-eqz v1, :cond_56

    .line 330
    invoke-static {p0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->getCurrent(Landroid/content/Context;)Lcom/sprint/dsa/diagnostics/PowerConfig;

    move-result-object v0

    .line 331
    .local v0, config:Lcom/sprint/dsa/diagnostics/PowerConfig;
    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/PowerConfig;->isHighPower()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 332
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    .line 337
    :goto_4a
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v2, v3}, Lcom/sprint/dsa/widget/ContentListAdapter;->setContent(Lcom/sprint/dsa/data/PageContent;)V

    .line 338
    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->notifyDataSetChanged()V

    .line 340
    .end local v0           #config:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :cond_56
    return-void

    .line 334
    .restart local v0       #config:Lcom/sprint/dsa/diagnostics/PowerConfig;
    :cond_57
    invoke-virtual {v1, v5}, Lcom/sprint/dsa/data/FeatureItem;->setVisible(Z)V

    goto :goto_4a
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 275
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 386
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 388
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    if-eqz v0, :cond_c

    .line 389
    iget-object v0, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    invoke-virtual {v0}, Lcom/sprint/dsa/diagnostics/CustomerCare;->deregisterListener()V

    .line 390
    :cond_c
    return-void
.end method

.method public refreshContent()V
    .registers 5

    .prologue
    .line 853
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    if-nez v1, :cond_b

    new-instance v1, Lcom/sprint/dsa/data/DbAdapter;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/data/DbAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    .line 855
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->isOpen()Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->open()Lcom/sprint/dsa/data/DbAdapter;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_18} :catch_8b

    .line 862
    :cond_18
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    iget v2, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mActivePackId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/sprint/dsa/data/DbAdapter;->getPageContent(ILjava/lang/String;)Lcom/sprint/dsa/data/PageContent;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    .line 863
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/DbAdapter;->getSettings()Lcom/sprint/dsa/SzSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mSettings:Lcom/sprint/dsa/SzSettings;

    .line 866
    iget v1, p0, Lcom/sprint/dsa/PageActivity;->mPageId:I

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mSettings:Lcom/sprint/dsa/SzSettings;

    invoke-virtual {v1, v2, p0}, Lcom/sprint/dsa/data/PageContent;->filter(Lcom/sprint/dsa/SzSettings;Landroid/content/Context;)V

    .line 867
    :cond_37
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->shorten()V

    .line 870
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    if-nez v1, :cond_50

    .line 871
    new-instance v1, Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mStyles:Lcom/sprint/dsa/pack/StylesApplicator;

    invoke-direct {v1, p0, v2}, Lcom/sprint/dsa/widget/ContentListAdapter;-><init>(Landroid/content/Context;Lcom/sprint/dsa/pack/StylesApplicator;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    .line 872
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 875
    :cond_50
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 877
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mListView:Landroid/widget/ExpandableListView;

    const v2, 0x7f0b0047

    invoke-virtual {p0, v2}, Lcom/sprint/dsa/PageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V

    .line 883
    :goto_64
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1}, Lcom/sprint/dsa/data/PageContent;->isCustomerCare()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 884
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    if-eqz v1, :cond_75

    .line 885
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->deregisterListener()V

    .line 887
    :cond_75
    new-instance v1, Lcom/sprint/dsa/diagnostics/CustomerCare;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v3, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-direct {v1, p0, v2, v3}, Lcom/sprint/dsa/diagnostics/CustomerCare;-><init>(Landroid/content/Context;Lcom/sprint/dsa/widget/ContentListAdapter;Lcom/sprint/dsa/data/PageContent;)V

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    .line 888
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mCustomerCareHelper:Lcom/sprint/dsa/diagnostics/CustomerCare;

    invoke-virtual {v1}, Lcom/sprint/dsa/diagnostics/CustomerCare;->registerListener()V

    .line 892
    :cond_85
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mLastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/PageActivity;->applyPackStyles(Landroid/content/Intent;)V

    .line 893
    :goto_8a
    return-void

    .line 856
    :catch_8b
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/PageActivity;->mDbHelper:Lcom/sprint/dsa/data/DbAdapter;

    goto :goto_8a

    .line 879
    .end local v0           #e:Ljava/lang/Exception;
    :cond_90
    iget-object v1, p0, Lcom/sprint/dsa/PageActivity;->mListAdapter:Lcom/sprint/dsa/widget/ContentListAdapter;

    iget-object v2, p0, Lcom/sprint/dsa/PageActivity;->mPageContent:Lcom/sprint/dsa/data/PageContent;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/widget/ContentListAdapter;->setContent(Lcom/sprint/dsa/data/PageContent;)V

    .line 880
    invoke-direct {p0}, Lcom/sprint/dsa/PageActivity;->expandList()V

    goto :goto_64
.end method

.method public resetSound()V
    .registers 4

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/sprint/dsa/PageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 846
    const-string v2, "audio"

    .line 845
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 847
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 848
    return-void
.end method

.method public showCallFromOtherPhoneDialog()V
    .registers 4

    .prologue
    .line 1041
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1042
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08006d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1043
    const v1, 0x7f08006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1044
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1046
    const v1, 0x7f08006f

    new-instance v2, Lcom/sprint/dsa/PageActivity$9;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageActivity$9;-><init>(Lcom/sprint/dsa/PageActivity;)V

    .line 1045
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1055
    const v1, 0x7f080070

    .line 1056
    new-instance v2, Lcom/sprint/dsa/PageActivity$10;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageActivity$10;-><init>(Lcom/sprint/dsa/PageActivity;)V

    .line 1055
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1061
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1062
    return-void
.end method

.method public showTryTestAgainDialog()V
    .registers 4

    .prologue
    .line 1065
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1066
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1067
    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1068
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1069
    const v1, 0x7f080048

    new-instance v2, Lcom/sprint/dsa/PageActivity$11;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageActivity$11;-><init>(Lcom/sprint/dsa/PageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1079
    const v1, 0x7f080049

    new-instance v2, Lcom/sprint/dsa/PageActivity$12;

    invoke-direct {v2, p0}, Lcom/sprint/dsa/PageActivity$12;-><init>(Lcom/sprint/dsa/PageActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1084
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 1085
    return-void
.end method
