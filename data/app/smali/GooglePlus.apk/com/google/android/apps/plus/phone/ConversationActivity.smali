.class public Lcom/google/android/apps/plus/phone/ConversationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;
.implements Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;
.implements Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsQuery;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;",
        "Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;",
        "Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstanceCount:I


# instance fields
.field private final conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mAdvancedHangoutsEnabled:Z

.field private mCheckExtraTile:Z

.field private mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

.field private mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

.field private mConversationId:Ljava/lang/String;

.field private mConversationName:Ljava/lang/String;

.field private mConversationRowId:Ljava/lang/Long;

.field private mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

.field private mCreateConversationRequestId:I

.field private mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

.field private mEarliestEventTimestamp:J

.field private mFirstEventTimestamp:J

.field private mFirstHangoutMenuItemIndex:I

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mIsConversationLoaded:Z

.field private mIsGroup:Z

.field private mIsMuted:Z

.field private mLastHangoutMenuItemIndex:I

.field private mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

.field private mNeedToInviteParticipants:Z

.field private mParticipantCount:I

.field private mParticipantList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealTimeChatListener:Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private mRootView:Landroid/view/View;

.field private mShakeDetectorWasRunning:Z

.field private mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private mTileContainer:Landroid/widget/LinearLayout;

.field private mTileSelectorMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-class v0, Lcom/google/android/apps/plus/phone/ConversationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 190
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/phone/ConversationActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRealTimeChatListener:Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;

    .line 227
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/phone/ConversationActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 230
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/fragments/MessageListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/ConversationActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCreateConversationRequestId:I

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/apps/plus/phone/ConversationActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCreateConversationRequestId:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->onDisplayHeightChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/Long;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    return-object v0
.end method

.method private getRootView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 365
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/plus/phone/ConversationActivity$1;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/content/Context;)V

    .line 372
    .local v0, layout:Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030021

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 375
    return-object v0
.end method

.method public static hasInstance()Z
    .registers 1

    .prologue
    .line 1119
    sget v0, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private initHangoutTile()V
    .registers 13

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1044
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v1, :cond_5f

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-static {p0, v1, v5}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/apps/tacotown/proto/A2a$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v10

    .line 1048
    .local v10, hangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    const-string v2, "c:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v10, v1, :cond_1e

    .line 1105
    .end local v10           #hangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    :cond_1d
    :goto_1d
    return-void

    .line 1057
    .restart local v10       #hangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    :cond_1e
    :try_start_1e
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->getGCommNativeWrapper()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->getCurrentState()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    :try_end_29
    .catch Ljava/lang/LinkageError; {:try_start_1e .. :try_end_29} :catch_9e

    .line 1064
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAdvancedHangoutsEnabled:Z

    if-eqz v1, :cond_a9

    .line 1065
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutTabletTile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 1069
    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreate(Landroid/os/Bundle;)V

    .line 1071
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1073
    .local v11, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, v11}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1074
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1075
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 1076
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStart()V

    .line 1080
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_b5

    .line 1081
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->invalidateOptionsMenu()V

    .line 1087
    .end local v10           #hangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    .end local v11           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5f
    :goto_5f
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->EXTERNAL:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    const-string v3, "messenger"

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Messenger:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 1090
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v5, v0

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;ZZ)V

    .line 1096
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCheckExtraTile:Z

    if-eqz v1, :cond_1d

    .line 1097
    iput-boolean v7, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCheckExtraTile:Z

    .line 1099
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->shouldShowHangoutTile()Z

    move-result v1

    if-eqz v1, :cond_94

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    if-eq v1, v2, :cond_9a

    :cond_94
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v1, v2, :cond_1d

    .line 1102
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    goto :goto_1d

    .line 1058
    .end local v0           #hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    .restart local v10       #hangoutSupportStatus:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;
    :catch_9e
    move-exception v9

    .line 1059
    .local v9, err:Ljava/lang/LinkageError;
    const-string v1, "Could not load hangout native library"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v9}, Ljava/lang/LinkageError;->printStackTrace()V

    goto/16 :goto_1d

    .line 1067
    .end local v9           #err:Ljava/lang/LinkageError;
    :cond_a9
    new-instance v1, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;->setInnerActionBarEnabled(Z)Lcom/google/android/apps/plus/hangout/HangoutPhoneTile;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    goto :goto_34

    .line 1083
    .restart local v11       #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b5
    const v1, 0x7f100009

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    goto :goto_5f
.end method

.method private initialize()V
    .registers 11

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 306
    const-string v3, "initialize"

    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 309
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    .line 310
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    .line 311
    iput-boolean v7, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCheckExtraTile:Z

    .line 312
    iput-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    .line 313
    iput-boolean v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    .line 315
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 316
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "account"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 317
    const-string v3, "is_group"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    .line 318
    sget-boolean v3, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v3, :cond_38

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-nez v3, :cond_38

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 319
    :cond_38
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 321
    const-string v3, "conversation_row_id"

    invoke-virtual {v2, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 322
    .local v0, conversationRowId:J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_4f

    .line 323
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    .line 325
    :cond_4f
    const-string v3, "participant"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 326
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    if-eqz v3, :cond_a0

    .line 327
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    .line 328
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 330
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mSingleParticipant:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getFullName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 331
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-eqz v3, :cond_86

    .line 332
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipantListButtonVisibility(Z)V

    .line 334
    :cond_86
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v3, :cond_8f

    .line 335
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    .line 350
    :cond_8f
    :goto_8f
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    new-instance v4, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getParticipantsGalleryView()Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 353
    return-void

    .line 338
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    invoke-virtual {v3, v7, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 339
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 340
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/views/ConversationTile;->setConversationRowId(Ljava/lang/Long;)V

    .line 341
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-eqz v3, :cond_bf

    .line 342
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipantListButtonVisibility(Z)V

    .line 344
    :cond_bf
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v3, :cond_8f

    .line 345
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    goto :goto_8f
.end method

.method private onDisplayHeightChanged(I)V
    .registers 12
    .parameter "heightSpecification"

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 379
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 381
    .local v0, displayHeight:I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_36

    .line 382
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 384
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 387
    .local v2, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 388
    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAdvancedHangoutsEnabled:Z

    if-eqz v3, :cond_52

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v3, v4, :cond_52

    .line 389
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 394
    .end local v2           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_36
    :goto_36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 396
    .local v1, height:I
    int-to-double v3, v1

    int-to-double v5, v0

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_60

    .line 397
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 401
    :goto_51
    return-void

    .line 391
    .end local v1           #height:I
    .restart local v2       #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_52
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    invoke-virtual {v3, v9, v4, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_36

    .line 399
    .end local v2           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    .restart local v1       #height:I
    :cond_60
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_51
.end method

.method private prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 695
    const v6, 0x7f0902bf

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 697
    .local v3, tileSelectorMenuItem:Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v6, :cond_3a

    .line 698
    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v6, v7, :cond_34

    move v2, v4

    .line 699
    .local v2, inHangout:Z
    :goto_14
    if-eqz v2, :cond_36

    const v0, 0x7f020180

    .line 700
    .local v0, drawable:I
    :goto_19
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 701
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 702
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 703
    if-nez v2, :cond_40

    .line 704
    iget v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstHangoutMenuItemIndex:I

    .local v1, i:I
    :goto_26
    iget v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mLastHangoutMenuItemIndex:I

    if-ge v1, v4, :cond_40

    .line 705
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .end local v0           #drawable:I
    .end local v1           #i:I
    .end local v2           #inHangout:Z
    :cond_34
    move v2, v5

    .line 698
    goto :goto_14

    .line 699
    .restart local v2       #inHangout:Z
    :cond_36
    const v0, 0x7f0200fc

    goto :goto_19

    .line 709
    .end local v2           #inHangout:Z
    :cond_3a
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 710
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    :cond_40
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_47

    .end local v3           #tileSelectorMenuItem:Landroid/view/MenuItem;
    :goto_46
    return-object v3

    .restart local v3       #tileSelectorMenuItem:Landroid/view/MenuItem;
    :cond_47
    const/4 v3, 0x0

    goto :goto_46
.end method

.method private setConversationLabel(Ljava/lang/String;)V
    .registers 5
    .parameter "conversationName"

    .prologue
    .line 871
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_10

    .line 872
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 873
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 878
    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    .line 879
    return-void

    .line 875
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 876
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_d
.end method

.method private setParticipantCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 886
    iput p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    .line 887
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->updateSubtitle()V

    .line 888
    return-void
.end method

.method private shouldShowHangoutTile()Z
    .registers 4

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "tile"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private showRenameDialog()V
    .registers 5

    .prologue
    .line 721
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "rename_conversation"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/phone/ConversationRenameDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private updateSubtitle()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 894
    const/4 v1, 0x0

    .line 895
    .local v1, subtitle:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    if-lez v2, :cond_20

    .line 896
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08025c

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 898
    :cond_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2d

    .line 899
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 900
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 905
    :goto_2c
    return-void

    .line 902
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 903
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_9

    .line 1163
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->blockPerson(Ljava/io/Serializable;)V

    .line 1165
    :cond_9
    return-void
.end method

.method public displayParticipantsInTray()V
    .registers 5

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 1041
    :goto_4
    return-void

    .line 1029
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    if-ne v1, v2, :cond_28

    .line 1030
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1031
    .local v0, hangoutTileActiveParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_1a

    .line 1032
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getActiveParticipantIds()Ljava/util/HashSet;

    move-result-object v0

    .line 1034
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ConversationTile;->getActiveParticipantIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_4

    .line 1038
    .end local v0           #hangoutTileActiveParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_28
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ConversationTile;->getActiveParticipantIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;)V

    goto :goto_4
.end method

.method public getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getGreenRoomParticipantListActivityIntent(Ljava/util/ArrayList;)Landroid/content/Intent;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 1203
    .local p1, participants:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getParticipantListActivityIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getHangoutNotificationIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityHangoutTileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantListActivityIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    .line 1211
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v0, v6, :cond_19

    const/4 v6, 0x1

    :goto_13
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/Intents;->getParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_19
    const/4 v6, 0x0

    goto :goto_13
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_GROUP:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->CONVERSATION_ONE_ON_ONE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    goto :goto_12
.end method

.method public hideInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 1245
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->dismissDialog(I)V

    .line 1246
    return-void
.end method

.method public inviteMoreParticipants()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 805
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 808
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    if-eqz v0, :cond_2f

    .line 809
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v0, v6, :cond_2d

    move v0, v1

    :goto_24
    invoke-static {p0, v3, v4, v5, v0}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 812
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    .line 818
    :goto_29
    return-void

    .line 805
    :cond_2a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_8

    :cond_2d
    move v0, v2

    .line 809
    goto :goto_24

    .line 816
    :cond_2f
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    goto :goto_29
.end method

.method public leaveConversation()V
    .registers 10

    .prologue
    .line 1218
    sget-boolean v1, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1220
    :cond_e
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v8

    .line 1222
    .local v8, gCommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->EXTERNAL:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout;->CONSUMER_HANGOUT_DOMAIN:Ljava/lang/String;

    const-string v3, "messenger"

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/google/android/apps/plus/service/Hangout$LaunchSource;->Messenger:Lcom/google/android/apps/plus/service/Hangout$LaunchSource;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/service/Hangout$LaunchSource;Z)V

    .line 1225
    .local v0, hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-virtual {v8, v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1226
    invoke-virtual {v8}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 1228
    :cond_2c
    return-void
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 1154
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 738
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 739
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 740
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 745
    :cond_12
    :goto_12
    return-void

    .line 743
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_12
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    .line 426
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_24

    .line 427
    check-cast p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .line 428
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    if-nez v0, :cond_1d

    .line 429
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    .line 433
    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/ConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/ConversationActivity$2;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V

    .line 498
    :cond_1c
    :goto_1c
    return-void

    .line 431
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    goto :goto_12

    .line 483
    .restart local p1
    :cond_24
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_48

    .line 484
    check-cast p1, Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .line 485
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setLeaveConversationListener(Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;)V

    .line 486
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_40

    .line 487
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setConversationInfo(Ljava/lang/String;JJ)V

    .line 492
    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setParticipantList(Ljava/util/HashMap;)V

    goto :goto_1c

    .line 493
    .restart local p1
    :cond_48
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-eqz v0, :cond_1c

    .line 494
    check-cast p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .line 496
    sget-boolean v0, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onBlockCompleted(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 1172
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090274

    if-ne v0, v1, :cond_c

    .line 826
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    .line 828
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 243
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 246
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v2, v5, :cond_98

    sget-object v2, Lcom/google/android/apps/plus/util/Property;->ENABLE_ADVANCED_HANGOUTS:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/Property;->getBoolean()Z

    move-result v2

    if-eqz v2, :cond_98

    new-instance v2, Landroid/view/TextureView;

    invoke-direct {v2, p0}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/view/TextureView;->getLayerType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_98

    move v2, v3

    :goto_20
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAdvancedHangoutsEnabled:Z

    .line 250
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getRootView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRootView:Landroid/view/View;

    .line 251
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setContentView(Landroid/view/View;)V

    .line 252
    const-string v2, "ConversationActivity.onCreate"

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 254
    const v2, 0x7f090083

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileContainer:Landroid/widget/LinearLayout;

    .line 256
    const v2, 0x7f090084

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/views/ConversationTile;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    .line 257
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v2, v5}, Lcom/google/android/apps/plus/views/ConversationTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 259
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    .line 261
    iput v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    .line 262
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v2, v4, :cond_9a

    .line 263
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 264
    const v2, 0x7f100009

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    .line 271
    :goto_64
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v1

    .line 272
    .local v1, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v1, :cond_74

    .line 273
    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mShakeDetectorWasRunning:Z

    .line 276
    :cond_74
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initialize()V

    .line 278
    sget v2, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    if-le v2, v3, :cond_97

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConversationActivity instanceCount out of sync: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 281
    :cond_97
    return-void

    .end local v1           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_98
    move v2, v4

    .line 246
    goto :goto_20

    .line 266
    :cond_9a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 267
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_64
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 4
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    .line 1232
    const v0, 0x7f09003e

    if-ne p1, v0, :cond_a

    .line 1233
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    .line 1235
    :goto_9
    return-object v0

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_9
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConversationActivity.onCreateLoader: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 914
    if-ne p1, v5, :cond_38

    .line 915
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    :goto_37
    return-object v0

    .line 920
    :cond_38
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5e

    .line 921
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 923
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=? AND active=1"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    const-string v6, "first_name ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .end local v2           #uri:Landroid/net/Uri;
    :cond_5e
    move-object v0, v6

    .line 930
    goto :goto_37
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    .line 621
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 622
    .local v0, inflater:Landroid/view/MenuInflater;
    const v2, 0x7f100009

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 623
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_25

    .line 624
    const v2, 0x7f0902bf

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 625
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 626
    const v2, 0x7f0902c0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 627
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 630
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_25
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstHangoutMenuItemIndex:I

    .line 631
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v2, :cond_34

    .line 632
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 634
    :cond_34
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mLastHangoutMenuItemIndex:I

    .line 636
    const/4 v2, 0x1

    return v2
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 601
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 604
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 605
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 606
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 607
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 611
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    sget v1, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    if-gez v1, :cond_34

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConversationActivity instanceCount out of sync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/google/android/apps/plus/phone/ConversationActivity;->sInstanceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->error(Ljava/lang/String;)V

    .line 614
    :cond_34
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 16
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 939
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v1, :cond_8f

    .line 940
    if-eqz p2, :cond_8a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 941
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 942
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_1d

    .line 943
    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 945
    :cond_1d
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    .line 946
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 947
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    .line 948
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    .line 949
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    .line 951
    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 952
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->updateSubtitle()V

    .line 953
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 954
    .local v7, fatalErrorType:I
    if-eqz v7, :cond_5d

    .line 955
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 956
    .local v9, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$3;

    invoke-direct {v0, p0, v7}, Lcom/google/android/apps/plus/phone/ConversationActivity$3;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 967
    .end local v9           #handler:Landroid/os/Handler;
    :cond_5d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    .line 968
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_68

    .line 969
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->invalidateOptionsMenu()V

    .line 971
    :cond_68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    if-eqz v0, :cond_6f

    .line 972
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->inviteMoreParticipants()V

    .line 974
    :cond_6f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipantListButtonVisibility(Z)V

    .line 975
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_83

    .line 976
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setConversationInfo(Ljava/lang/String;JJ)V

    .line 982
    :cond_83
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-eqz v0, :cond_8a

    .line 983
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initHangoutTile()V

    .line 1019
    .end local v7           #fatalErrorType:I
    .end local v10           #name:Ljava/lang/String;
    :cond_8a
    :goto_8a
    return-void

    .restart local v10       #name:Ljava/lang/String;
    :cond_8b
    move v0, v2

    .line 945
    goto :goto_24

    :cond_8d
    move v0, v2

    .line 946
    goto :goto_2d

    .line 986
    .end local v10           #name:Ljava/lang/String;
    :cond_8f
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v4, :cond_8a

    .line 987
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setParticipantCount(I)V

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    .line 989
    :goto_a3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 990
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v6

    .line 991
    .local v6, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 992
    .local v8, firstName:Ljava/lang/String;
    if-eqz v8, :cond_b6

    .line 993
    invoke-virtual {v6, v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 995
    :cond_b6
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFullName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setParticipantId(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/plus/content/EsConversationsData;->convertParticipantType(I)Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setType(Lcom/google/wireless/realtimechat/proto/Data$Participant$Type;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v11

    .line 1001
    .local v11, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 1004
    .end local v6           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v8           #firstName:Ljava/lang/String;
    .end local v11           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_e0
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_e7

    .line 1005
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initHangoutTile()V

    .line 1007
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 1009
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    if-eqz v0, :cond_103

    .line 1010
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v12, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v5, v12, :cond_110

    :goto_fe
    invoke-static {p0, v0, v3, v4, v1}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;Z)V

    .line 1013
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    .line 1015
    :cond_103
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_8a

    .line 1016
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setParticipantList(Ljava/util/HashMap;)V

    goto/16 :goto_8a

    :cond_110
    move v1, v2

    .line 1010
    goto :goto_fe
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1128
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 8

    .prologue
    .line 1189
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v6, tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "AUTHOR_PROFILE_ID"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    const-string v3, "com.google.hangouts"

    const/4 v4, 0x0

    const-string v5, "JOIN_HANGOUT"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)I

    .line 1195
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setIntent(Landroid/content/Intent;)V

    .line 298
    const-string v0, "ConversationActivity.onNewIntent"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initialize()V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->reinitialize()V

    .line 302
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 752
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_78

    .line 794
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_3a

    .line 795
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 798
    :goto_13
    return v0

    .line 754
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    move v0, v1

    .line 755
    goto :goto_13

    .line 758
    :sswitch_1b
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 760
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v0, v3, v4, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    .line 762
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 763
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "conversation_is_muted"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3a
    :goto_3a
    move v0, v2

    .line 798
    goto :goto_13

    .line 758
    :cond_3c
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_21

    .line 767
    :sswitch_3f
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_5f

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_45
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 769
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {p0, v0, v3, v4, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    .line 771
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 772
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_is_muted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3a

    .line 767
    :cond_5f
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_45

    .line 776
    :sswitch_62
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_3a

    .line 777
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->displayLeaveConversationDialog()V

    goto :goto_3a

    .line 782
    :sswitch_6c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    goto :goto_3a

    .line 786
    :sswitch_70
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showRenameDialog()V

    goto :goto_3a

    .line 790
    :sswitch_74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->inviteMoreParticipants()V

    goto :goto_3a

    .line 752
    :sswitch_data_78
    .sparse-switch
        0x102002c -> :sswitch_14
        0x7f0902bf -> :sswitch_6c
        0x7f0902c0 -> :sswitch_74
        0x7f0902c1 -> :sswitch_70
        0x7f0902c2 -> :sswitch_1b
        0x7f0902c3 -> :sswitch_3f
        0x7f0902c4 -> :sswitch_62
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 541
    const-string v0, "ConversationActivity.onPause"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRealTimeChatListener:Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 545
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTilePause()V

    .line 546
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onPause()V

    .line 547
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_1d

    .line 548
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPause()V

    .line 551
    :cond_1d
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 553
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 554
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 9
    .parameter "menu"

    .prologue
    const v6, 0x7f0902c1

    const v5, 0x7f0902bf

    const v4, 0x7f0902c0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 659
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    if-nez v0, :cond_10

    .line 691
    :goto_f
    return v2

    .line 662
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    if-nez v0, :cond_49

    .line 663
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 664
    const v0, 0x7f0902c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 665
    const v0, 0x7f0902c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 666
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 667
    const v0, 0x7f0902c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 668
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_47
    :goto_47
    move v2, v1

    .line 691
    goto :goto_f

    .line 670
    :cond_49
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    const v0, 0x7f0902c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    if-nez v0, :cond_94

    move v0, v1

    :goto_5c
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 673
    const v0, 0x7f0902c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 675
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    const v0, 0x7f0902c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_96

    .line 679
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileSelectorMenuItem:Landroid/view/MenuItem;

    .line 686
    :goto_8a
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_47

    .line 687
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_47

    :cond_94
    move v0, v2

    .line 672
    goto :goto_5c

    .line 682
    :cond_96
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 683
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8a
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 645
    const v0, 0x7f0902c0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 646
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;

    .line 648
    const v0, 0x7f0902c2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 649
    const v0, 0x7f0902c3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 650
    const v0, 0x7f0902c1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 651
    const v0, 0x7f0902c4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 652
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 505
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 506
    const-string v0, "ConversationActivity.onResume"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mRealTimeChatListener:Lcom/google/android/apps/plus/phone/ConversationActivity$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 509
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onResume()V

    .line 510
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_1b

    .line 511
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onResume()V

    .line 513
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileResume()V

    .line 515
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 517
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_30

    .line 518
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setAllowSendMessage(Z)V

    .line 521
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v0, :cond_44

    .line 523
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 528
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 530
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 534
    :goto_4c
    return-void

    .line 532
    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->finish()V

    goto :goto_4c
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 408
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 409
    const-string v0, "ConversationActivity.onStart"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onStart()V

    .line 412
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_16

    .line 413
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStart()V

    .line 416
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileStart()V

    .line 418
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->requestFocus()V

    .line 419
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 586
    const-string v0, "ConversationActivity.onStop"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileStop()V

    .line 590
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onStop()V

    .line 591
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_1b

    .line 592
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStop()V

    .line 594
    :cond_1b
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 731
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 561
    if-eqz p1, :cond_1d

    .line 562
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setCurrentConversationRowId(Ljava/lang/Long;)V

    .line 568
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->shouldShowHangoutTile()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 569
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    if-eqz v0, :cond_1c

    .line 570
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->markConversationRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 577
    :cond_1c
    :goto_1c
    return-void

    .line 575
    :cond_1d
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setCurrentConversationRowId(Ljava/lang/Long;)V

    goto :goto_1c
.end method

.method public showInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 1240
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showDialog(I)V

    .line 1241
    return-void
.end method

.method public stopHangoutTile()V
    .registers 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v0, v1, :cond_9

    .line 1180
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    .line 1182
    :cond_9
    return-void
.end method

.method public toggleTiles()V
    .registers 6

    .prologue
    .line 831
    sget-boolean v3, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v3, :cond_e

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 832
    :cond_e
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v3, :cond_13

    .line 864
    :cond_12
    :goto_12
    return-void

    .line 836
    :cond_13
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v3, v4, :cond_68

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    .line 838
    .local v2, newTile:Lcom/google/android/apps/plus/views/Tile;
    :goto_1b
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/google/android/apps/plus/views/Tile;->setVisibility(I)V

    .line 839
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v3}, Lcom/google/android/apps/plus/views/Tile;->onTilePause()V

    .line 840
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v3}, Lcom/google/android/apps/plus/views/Tile;->onTileStop()V

    .line 842
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/views/Tile;->setVisibility(I)V

    .line 843
    invoke-interface {v2}, Lcom/google/android/apps/plus/views/Tile;->onTileStart()V

    .line 844
    invoke-interface {v2}, Lcom/google/android/apps/plus/views/Tile;->onTileResume()V

    .line 846
    iput-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    .line 848
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 850
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_6f

    .line 851
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v3, v4, :cond_6b

    const v1, 0x7f020180

    .line 853
    .local v1, drawable:I
    :goto_4a
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileSelectorMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 854
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->invalidateOptionsMenu()V

    .line 855
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    if-ne v2, v3, :cond_12

    .line 856
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 857
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_12

    .line 858
    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    goto :goto_12

    .line 836
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #drawable:I
    .end local v2           #newTile:Lcom/google/android/apps/plus/views/Tile;
    :cond_68
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    goto :goto_1b

    .line 851
    .restart local v2       #newTile:Lcom/google/android/apps/plus/views/Tile;
    :cond_6b
    const v1, 0x7f0200fc

    goto :goto_4a

    .line 862
    :cond_6f
    const v3, 0x7f100009

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    goto :goto_12
.end method
