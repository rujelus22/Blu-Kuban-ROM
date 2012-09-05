.class public Lcom/google/android/apps/plus/phone/ConversationActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;
.implements Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsQuery;,
        Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragmentActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/google/android/apps/plus/hangout/HangoutTile$HangoutTileActivity;",
        "Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

.field private mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

.field private mConversationId:Ljava/lang/String;

.field private mConversationName:Ljava/lang/String;

.field private mConversationRowId:J

.field private mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

.field private mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

.field private mEarliestEventTimestamp:J

.field private mFirstEventTimestamp:J

.field private mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

.field private mIsConversationLoaded:Z

.field private mIsGroup:Z

.field private mIsMuted:Z

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

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

.field private mTileContainer:Landroid/widget/LinearLayout;

.field private mTileSelectorMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
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
    .line 68
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 160
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationParticipantPresenceListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/phone/ConversationActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    .line 163
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/apps/plus/phone/ConversationActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/android/apps/plus/phone/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/phone/ConversationActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setConversationLabel(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/apps/plus/phone/ConversationActivity;)Lcom/google/android/apps/plus/fragments/MessageListFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->onDisplayHeightChanged(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/plus/phone/ConversationActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/apps/plus/phone/ConversationActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    return-void
.end method

.method private getRootView()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 247
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/google/android/apps/plus/phone/ConversationActivity$1;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/content/Context;)V

    .line 255
    .local v0, layout:Landroid/view/ViewGroup;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03001f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 258
    return-object v0
.end method

.method private initHangoutTile()V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 906
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v0, :cond_45

    .line 908
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/service/Hangout;->getSupportedStatus(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$HangoutData;)Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    const-string v2, "c:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$SupportStatus;->SUPPORTED:Lcom/google/android/apps/plus/service/Hangout$SupportStatus;

    if-eq v0, v1, :cond_1d

    .line 943
    :cond_1c
    :goto_1c
    return-void

    .line 916
    :cond_1d
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/hangout/HangoutTile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    .line 918
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 920
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 922
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 926
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_a2

    .line 927
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->invalidateOptionsMenu()V

    .line 933
    :cond_45
    :goto_45
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v2, "hangout.com"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conv:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile;->setHangoutInfo(Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/Hangout$Info;Ljava/util/ArrayList;)V

    .line 938
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "tile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    if-ne v0, v1, :cond_1c

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

    if-eqz v0, :cond_1c

    .line 941
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    goto/16 :goto_1c

    .line 929
    :cond_a2
    const v0, 0x7f100009

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    goto :goto_45
.end method

.method private initialize()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 219
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 220
    const-string v1, "is_group"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    .line 221
    sget-boolean v1, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v1, :cond_26

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-nez v1, :cond_26

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 222
    :cond_26
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 223
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    new-instance v2, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getParticipantsGalleryView()Lcom/google/android/apps/plus/views/ParticipantsGalleryView;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsCommandListener;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Lcom/google/android/apps/plus/views/ParticipantsGalleryView;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setCommandListener(Lcom/google/android/apps/plus/views/ParticipantsGalleryView$CommandListener;)V

    .line 227
    const-string v1, "conversation_row_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    .line 228
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/ConversationTile;->setConversationRowId(J)V

    .line 230
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    .line 231
    iput-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    .line 232
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 233
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 234
    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    .line 235
    return-void
.end method

.method private onDisplayHeightChanged(I)V
    .registers 11
    .parameter "heightSpecification"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 263
    .local v1, displayHeight:I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1b

    .line 264
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 265
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0}, Landroid/app/ActionBar;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 267
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1b
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 269
    .local v2, height:I
    int-to-double v3, v2

    int-to-double v5, v1

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gez v3, :cond_37

    .line 270
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 274
    :goto_36
    return-void

    .line 272
    :cond_37
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_36
.end method

.method private prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 485
    const v2, 0x7f0d01c8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 487
    .local v1, tileSelectorMenuItem:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v2, :cond_2a

    .line 488
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v2, v3, :cond_26

    const v0, 0x7f0200c8

    .line 490
    .local v0, drawable:I
    :goto_16
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 491
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 492
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 499
    .end local v0           #drawable:I
    :goto_1f
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_31

    .end local v1           #tileSelectorMenuItem:Landroid/view/MenuItem;
    :goto_25
    return-object v1

    .line 488
    .restart local v1       #tileSelectorMenuItem:Landroid/view/MenuItem;
    :cond_26
    const v0, 0x7f020085

    goto :goto_16

    .line 494
    :cond_2a
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 495
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1f

    .line 499
    :cond_31
    const/4 v1, 0x0

    goto :goto_25
.end method

.method private setConversationLabel(Ljava/lang/String;)V
    .registers 5
    .parameter "conversationName"

    .prologue
    .line 740
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_13

    .line 741
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 742
    const v1, 0x7f020088

    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setTitlebarTitle(ILjava/lang/String;)V

    .line 747
    :goto_10
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    .line 748
    return-void

    .line 744
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 745
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method private setParticipantCount(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 755
    iput p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    .line 756
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->updateSubtitle()V

    .line 757
    return-void
.end method

.method private showRenameDialog()V
    .registers 2

    .prologue
    .line 586
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showDialog(I)V

    .line 587
    return-void
.end method

.method private updateSubtitle()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 763
    const/4 v1, 0x0

    .line 764
    .local v1, subtitle:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v2, :cond_20

    iget v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    if-lez v2, :cond_20

    .line 765
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701ae

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 767
    :cond_20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-ge v2, v3, :cond_2d

    .line 768
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 769
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setTitlebarSubtitle(Ljava/lang/String;)V

    .line 774
    :goto_2c
    return-void

    .line 771
    :cond_2d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 772
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method


# virtual methods
.method public blockPerson(Ljava/io/Serializable;)V
    .registers 3
    .parameter "callbackData"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_9

    .line 986
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->blockPerson(Ljava/io/Serializable;)V

    .line 988
    :cond_9
    return-void
.end method

.method public displayParticipantsInTray()V
    .registers 5

    .prologue
    .line 887
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-nez v1, :cond_5

    .line 903
    :goto_4
    return-void

    .line 891
    :cond_5
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    if-ne v1, v2, :cond_28

    .line 892
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 893
    .local v0, hangoutTileActiveParticipants:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v1, :cond_1a

    .line 894
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/hangout/HangoutTile;->getActiveParticipantIds()Ljava/util/HashSet;

    move-result-object v0

    .line 896
    :cond_1a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/views/ConversationTile;->getActiveParticipantIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipants(Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)V

    goto :goto_4

    .line 900
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
    .line 958
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method public getHangoutNotificationIntent()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    iget-boolean v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityHangoutTileIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getParticipantListActivityIntent()Landroid/content/Intent;
    .registers 7

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getParticipantListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 3

    .prologue
    .line 967
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

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 618
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 627
    :goto_6
    return-void

    .line 622
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getConversationListActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 623
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 624
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->finish()V

    goto :goto_6
.end method

.method public inviteMoreParticipants()V
    .registers 4

    .prologue
    .line 683
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 685
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    if-nez v0, :cond_25

    .line 686
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;)V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    .line 694
    :goto_21
    return-void

    .line 683
    :cond_22
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_6

    .line 692
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    goto :goto_21
.end method

.method public leaveConversation()V
    .registers 7

    .prologue
    .line 1032
    sget-boolean v0, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1034
    :cond_e
    invoke-static {p0}, Lcom/google/android/apps/plus/hangout/GCommApp;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    .line 1036
    new-instance v1, Lcom/google/android/apps/plus/service/Hangout$Info;

    sget-object v2, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v3, "hangout.com"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "conv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/apps/plus/service/Hangout$Info;-><init>(Lcom/google/android/apps/plus/service/Hangout$RoomType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommApp;->isInHangout(Lcom/google/android/apps/plus/service/Hangout$Info;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1040
    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 1042
    :cond_39
    return-void
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 977
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 602
    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    .line 603
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 604
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 609
    :cond_12
    :goto_12
    return-void

    .line 607
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_12
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 8
    .parameter "fragment"

    .prologue
    .line 298
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_19

    .line 299
    check-cast p1, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->allowSendingImages(Z)V

    .line 301
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    new-instance v1, Lcom/google/android/apps/plus/phone/ConversationActivity$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/phone/ConversationActivity$2;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setListener(Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;)V

    .line 351
    :cond_18
    :goto_18
    return-void

    .line 337
    .restart local p1
    :cond_19
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_36

    .line 338
    check-cast p1, Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setLeaveConversationListener(Lcom/google/android/apps/plus/fragments/MessageListFragment$LeaveConversationListener;)V

    .line 340
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 341
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setConversationInfo(Ljava/lang/String;JJ)V

    goto :goto_18

    .line 346
    .restart local p1
    :cond_36
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    if-eqz v0, :cond_18

    .line 347
    check-cast p1, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    .line 349
    sget-boolean v0, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public onBlockCompleted(Z)V
    .registers 2
    .parameter "success"

    .prologue
    .line 995
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 701
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d018b

    if-ne v0, v1, :cond_c

    .line 702
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    .line 704
    :cond_c
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 176
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setContentView(Landroid/view/View;)V

    .line 179
    const v1, 0x7f0d0077

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileContainer:Landroid/widget/LinearLayout;

    .line 181
    const v1, 0x7f0d0078

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/ConversationTile;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->conversationParticipantPresenceListener:Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/ConversationTile;->addParticipantPresenceListener(Lcom/google/android/apps/plus/views/Tile$ParticipantPresenceListener;)V

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantCount:I

    .line 187
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_42

    .line 188
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showTitlebar(Z)V

    .line 189
    const v1, 0x7f100009

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    .line 195
    :goto_3e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initialize()V

    .line 196
    return-void

    .line 191
    :cond_42
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 192
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_3e
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 11
    .parameter "dialogId"
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 507
    const/4 v5, 0x1

    if-ne p1, v5, :cond_75

    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 510
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030023

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 512
    .local v3, groupRenameLayout:Landroid/view/View;
    const v5, 0x7f0d0086

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 514
    .local v1, conversationRenameInput:Landroid/widget/EditText;
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 515
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v7, v5}, Landroid/widget/EditText;->setSelection(II)V

    .line 517
    const v5, 0x7f070183

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070184

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/plus/phone/ConversationActivity$4;

    invoke-direct {v7, p0, v1}, Lcom/google/android/apps/plus/phone/ConversationActivity$4;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070185

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/apps/plus/phone/ConversationActivity$3;

    invoke-direct {v7, p0}, Lcom/google/android/apps/plus/phone/ConversationActivity$3;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 542
    .local v2, dialog:Landroid/app/AlertDialog;
    new-instance v5, Lcom/google/android/apps/plus/phone/ConversationActivity$5;

    invoke-direct {v5, p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity$5;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 559
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 565
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #conversationRenameInput:Landroid/widget/EditText;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #groupRenameLayout:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :goto_74
    return-object v2

    .line 562
    :cond_75
    if-nez p1, :cond_82

    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v5, :cond_82

    .line 563
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v5, p1, p2}, Lcom/google/android/apps/plus/hangout/HangoutTile;->createDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_74

    .line 565
    :cond_82
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_74
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 13
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

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 781
    if-ne p1, v5, :cond_22

    .line 782
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v1, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google/android/apps/plus/phone/ConversationActivity$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :goto_21
    return-object v0

    .line 787
    :cond_22
    const/4 v0, 0x2

    if-ne p1, v0, :cond_44

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 790
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    sget-object v3, Lcom/google/android/apps/plus/phone/ConversationActivity$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=? AND active=1"

    new-array v5, v5, [Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v9

    const-string v6, "first_name ASC"

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21

    .end local v2           #uri:Landroid/net/Uri;
    :cond_44
    move-object v0, v6

    .line 797
    goto :goto_21
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 437
    const/4 v0, 0x1

    return v0
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

    .line 806
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v1, :cond_8f

    .line 807
    if-eqz p2, :cond_8a

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 808
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 809
    .local v10, name:Ljava/lang/String;
    if-nez v10, :cond_1d

    .line 810
    invoke-interface {p2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 812
    :cond_1d
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8b

    move v0, v1

    :goto_24
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    .line 813
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    :goto_2d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 814
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    .line 815
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    .line 816
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    .line 817
    invoke-direct {p0, v10}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setConversationLabel(Ljava/lang/String;)V

    .line 818
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->updateSubtitle()V

    .line 819
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 820
    .local v7, fatalErrorType:I
    if-eqz v7, :cond_5d

    .line 821
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    .line 822
    .local v9, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/phone/ConversationActivity$6;

    invoke-direct {v0, p0, v7}, Lcom/google/android/apps/plus/phone/ConversationActivity$6;-><init>(Lcom/google/android/apps/plus/phone/ConversationActivity;I)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    .end local v9           #handler:Landroid/os/Handler;
    :cond_5d
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    .line 834
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_68

    .line 835
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->invalidateOptionsMenu()V

    .line 837
    :cond_68
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    if-eqz v0, :cond_6f

    .line 838
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->inviteMoreParticipants()V

    .line 840
    :cond_6f
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationHeader:Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ParticipantsGalleryFragment;->setParticipantListButtonVisibility(Z)V

    .line 841
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_83

    .line 842
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mFirstEventTimestamp:J

    iget-wide v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mEarliestEventTimestamp:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->setConversationInfo(Ljava/lang/String;JJ)V

    .line 848
    :cond_83
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    if-eqz v0, :cond_8a

    .line 849
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initHangoutTile()V

    .line 881
    .end local v7           #fatalErrorType:I
    .end local v10           #name:Ljava/lang/String;
    :cond_8a
    :goto_8a
    return-void

    .restart local v10       #name:Ljava/lang/String;
    :cond_8b
    move v0, v2

    .line 812
    goto :goto_24

    :cond_8d
    move v0, v2

    .line 813
    goto :goto_2d

    .line 852
    .end local v10           #name:Ljava/lang/String;
    :cond_8f
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    if-ne v0, v4, :cond_8a

    .line 853
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setParticipantCount(I)V

    .line 854
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    .line 855
    :goto_a3
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 856
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    move-result-object v6

    .line 857
    .local v6, builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 858
    .local v8, firstName:Ljava/lang/String;
    if-eqz v8, :cond_b6

    .line 859
    invoke-virtual {v6, v8}, Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;->setFirstName(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;

    .line 861
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

    .line 867
    .local v11, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v11}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a3

    .line 870
    .end local v6           #builder:Lcom/google/wireless/realtimechat/proto/Data$Participant$Builder;
    .end local v8           #firstName:Ljava/lang/String;
    .end local v11           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_e0
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    if-eqz v0, :cond_e7

    .line 871
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initHangoutTile()V

    .line 873
    :cond_e7
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 875
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    if-eqz v0, :cond_8a

    .line 876
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mParticipantList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0, v1, v3}, Lcom/google/android/apps/plus/phone/ParticipantHelper;->inviteMoreParticipants(Landroid/app/Activity;Ljava/util/Collection;ZLcom/google/android/apps/plus/content/EsAccount;)V

    .line 878
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mNeedToInviteParticipants:Z

    goto :goto_8a
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
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
    .line 951
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMeetingMediaStarted()V
    .registers 8

    .prologue
    .line 1012
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1013
    const-string v0, "AUTHOR_PROFILE_ID"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getPersonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationId:Ljava/lang/String;

    const-string v3, "com.google.hangouts"

    const/4 v4, 0x0

    const-string v5, "JOIN_HANGOUT"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)I

    .line 1018
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->setIntent(Landroid/content/Intent;)V

    .line 213
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->initialize()V

    .line 214
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->reinitialize()V

    .line 215
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 634
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_66

    :cond_9
    :goto_9
    move v0, v2

    .line 676
    :goto_a
    return v0

    .line 636
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    move v0, v1

    .line 637
    goto :goto_a

    .line 640
    :sswitch_12
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {p0, v0, v3, v4, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    .line 644
    iput-boolean v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 645
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "conversation_is_muted"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 640
    :cond_2e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_18

    .line 649
    :sswitch_31
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    if-eqz v0, :cond_4d

    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_37
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 651
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {p0, v0, v3, v4, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    .line 653
    iput-boolean v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    .line 654
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "conversation_is_muted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 649
    :cond_4d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_37

    .line 658
    :sswitch_50
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    if-eqz v0, :cond_9

    .line 659
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mMessageListFragment:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/MessageListFragment;->displayLeaveConversationDialog()V

    goto :goto_9

    .line 664
    :sswitch_5a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    goto :goto_9

    .line 668
    :sswitch_5e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->showRenameDialog()V

    goto :goto_9

    .line 672
    :sswitch_62
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->inviteMoreParticipants()V

    goto :goto_9

    .line 634
    :sswitch_data_66
    .sparse-switch
        0x102002c -> :sswitch_b
        0x7f0d01c8 -> :sswitch_5a
        0x7f0d01c9 -> :sswitch_62
        0x7f0d01ca -> :sswitch_5e
        0x7f0d01cb -> :sswitch_12
        0x7f0d01cc -> :sswitch_31
        0x7f0d01cd -> :sswitch_50
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 391
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPause()V

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTilePause()V

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_16

    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onPause()V

    .line 399
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 400
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 6
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 573
    const/4 v1, 0x1

    if-ne p1, v1, :cond_21

    .line 574
    const v1, 0x7f0d0086

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 576
    .local v0, conversationRenameInput:Landroid/widget/EditText;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 577
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 580
    .end local v0           #conversationRenameInput:Landroid/widget/EditText;
    :cond_21
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 460
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsConversationLoaded:Z

    if-nez v4, :cond_7

    .line 481
    :goto_6
    return v6

    .line 463
    :cond_7
    const v4, 0x7f0d01cb

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 464
    .local v2, muteItem:Landroid/view/MenuItem;
    const v4, 0x7f0d01cc

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 465
    .local v3, unmuteItem:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    if-nez v4, :cond_46

    move v4, v5

    :goto_1a
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsMuted:Z

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 468
    const v4, 0x7f0d01ca

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 469
    .local v0, editItem:Landroid/view/MenuItem;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mIsGroup:Z

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    const v4, 0x7f0d01cd

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 471
    .local v1, leaveItem:Landroid/view/MenuItem;
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v4, v7, :cond_48

    .line 474
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileSelectorMenuItem:Landroid/view/MenuItem;

    :goto_44
    move v6, v5

    .line 481
    goto :goto_6

    .end local v0           #editItem:Landroid/view/MenuItem;
    .end local v1           #leaveItem:Landroid/view/MenuItem;
    :cond_46
    move v4, v6

    .line 465
    goto :goto_1a

    .line 477
    .restart local v0       #editItem:Landroid/view/MenuItem;
    .restart local v1       #leaveItem:Landroid/view/MenuItem;
    :cond_48
    const v4, 0x7f0d01c9

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    const v4, 0x7f0d01c8

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_44
.end method

.method public onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 446
    const v0, 0x7f0d01c9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 447
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ConversationActivity;->prepareToggleTilesMenu(Landroid/view/Menu;)Landroid/view/MenuItem;

    .line 449
    const v0, 0x7f0d01cb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 450
    const v0, 0x7f0d01cc

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 451
    const v0, 0x7f0d01ca

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 452
    const v0, 0x7f0d01cd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 453
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 358
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 360
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onResume()V

    .line 361
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_11

    .line 362
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onResume()V

    .line 364
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileResume()V

    .line 366
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->isIntentAccountActive()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 368
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    if-eqz v0, :cond_26

    .line 369
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->setAllowSendMessage(Z)V

    .line 372
    :cond_26
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v0, :cond_36

    .line 373
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 378
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 380
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 384
    :goto_3e
    return-void

    .line 382
    :cond_3f
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->finish()V

    goto :goto_3e
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "outState"

    .prologue
    .line 203
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 204
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStart()V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onStart()V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_11

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStart()V

    .line 288
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileStart()V

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mComposeMessageFragment:Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ComposeMessageFragment;->requestFocus()V

    .line 291
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 421
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onStop()V

    .line 423
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v0}, Lcom/google/android/apps/plus/views/Tile;->onTileStop()V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/ConversationTile;->onStop()V

    .line 426
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-eqz v0, :cond_16

    .line 427
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/HangoutTile;->onStop()V

    .line 429
    :cond_16
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->goHome(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 595
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasFocus"

    .prologue
    .line 407
    if-eqz p1, :cond_13

    .line 408
    iget-wide v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setCurrentConversationRowId(Ljava/lang/Long;)V

    .line 409
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationRowId:J

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->markConversationRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 414
    :goto_12
    return-void

    .line 412
    :cond_13
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setCurrentConversationRowId(Ljava/lang/Long;)V

    goto :goto_12
.end method

.method public stopHangoutTile()V
    .registers 3

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v0, v1, :cond_9

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->toggleTiles()V

    .line 1005
    :cond_9
    return-void
.end method

.method public toggleTiles()V
    .registers 5

    .prologue
    .line 707
    sget-boolean v2, Lcom/google/android/apps/plus/phone/ConversationActivity;->$assertionsDisabled:Z

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 708
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-nez v2, :cond_13

    .line 733
    :goto_12
    return-void

    .line 712
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v2, v3, :cond_58

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mConversationTile:Lcom/google/android/apps/plus/views/ConversationTile;

    .line 714
    .local v1, newTile:Lcom/google/android/apps/plus/views/Tile;
    :goto_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/views/Tile;->setVisibility(I)V

    .line 715
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v2}, Lcom/google/android/apps/plus/views/Tile;->onTilePause()V

    .line 716
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    invoke-interface {v2}, Lcom/google/android/apps/plus/views/Tile;->onTileStop()V

    .line 718
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/apps/plus/views/Tile;->setVisibility(I)V

    .line 719
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/Tile;->onTileStart()V

    .line 720
    invoke-interface {v1}, Lcom/google/android/apps/plus/views/Tile;->onTileResume()V

    .line 722
    iput-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    .line 724
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->displayParticipantsInTray()V

    .line 726
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5f

    .line 727
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mCurrentTile:Lcom/google/android/apps/plus/views/Tile;

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    if-ne v2, v3, :cond_5b

    const v0, 0x7f0200c8

    .line 729
    .local v0, drawable:I
    :goto_4a
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mTileSelectorMenuItem:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_12

    .line 712
    .end local v0           #drawable:I
    .end local v1           #newTile:Lcom/google/android/apps/plus/views/Tile;
    :cond_58
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ConversationActivity;->mHangoutTile:Lcom/google/android/apps/plus/hangout/HangoutTile;

    goto :goto_1b

    .line 727
    .restart local v1       #newTile:Lcom/google/android/apps/plus/views/Tile;
    :cond_5b
    const v0, 0x7f020085

    goto :goto_4a

    .line 731
    :cond_5f
    const v2, 0x7f100009

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ConversationActivity;->createTitlebarButtons(I)V

    goto :goto_12
.end method
