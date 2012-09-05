.class public Lcom/google/android/apps/plus/fragments/ConversationListFragment;
.super Lcom/google/android/apps/plus/fragments/EsListFragment;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;,
        Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;,
        Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;,
        Lcom/google/android/apps/plus/fragments/ConversationListFragment$ParticipantsQuery;,
        Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsListFragment",
        "<",
        "Landroid/widget/ListView;",
        "Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;",
        ">;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/google/android/apps/plus/fragments/AlertFragmentDialog$AlertDialogListener;"
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mActionCallback:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;

.field private mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field private mConversationNameForMenu:Ljava/lang/String;

.field private mConversationRowIdForDialog:J

.field private mConversationsUri:Landroid/net/Uri;

.field private mInvitationConversationBundle:Landroid/os/Bundle;

.field private final mRTCServiceListener:Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;

.field private mRecordedConversationsEmpty:Z

.field private mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;-><init>()V

    .line 142
    new-instance v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;-><init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;

    .line 661
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->handleContextItemSelected(Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V

    return-void
.end method

.method private handleContextItemSelected(Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V
    .registers 13
    .parameter "adapter"
    .parameter "menuItem"
    .parameter "conversationRowId"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 807
    invoke-virtual {p1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_16

    move v2, v3

    .line 808
    .local v2, isGroup:Z
    :goto_e
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_a6

    .line 856
    :goto_15
    return-void

    .end local v2           #isGroup:Z
    :cond_16
    move v2, v4

    .line 807
    goto :goto_e

    .line 810
    .restart local v2       #isGroup:Z
    :pswitch_18
    if-eqz v2, :cond_29

    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_1c
    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 812
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v4, v5, p3, p4, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    goto :goto_15

    .line 810
    :cond_29
    sget-object v4, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_MUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_1c

    .line 817
    :pswitch_2c
    if-eqz v2, :cond_3d

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_30
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 819
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v5, p3, p4, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I

    goto :goto_15

    .line 817
    :cond_3d
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_UNMUTE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_30

    .line 824
    :pswitch_40
    const v3, 0x7f0700c2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v5, 0x7f0700c3

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f070182

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f070169

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v1

    .line 829
    .local v1, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    invoke-virtual {v1, p0, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 830
    iput-wide p3, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationRowIdForDialog:J

    .line 831
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "leave_conversation"

    invoke-virtual {v1, v3, v4}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_15

    .line 835
    .end local v1           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    :pswitch_6f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 836
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "conversation_name"

    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v4, "conversation_row_id"

    invoke-virtual {v0, v4, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 839
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/app/FragmentActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_15

    .line 843
    .end local v0           #args:Landroid/os/Bundle;
    :pswitch_88
    if-eqz v2, :cond_a3

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    :goto_8c
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 845
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 846
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "conversation_is_group"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 847
    const-string v3, "conversation_row_id"

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 849
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->invitePeopleToConversation(Landroid/os/Bundle;)V

    goto/16 :goto_15

    .line 843
    .end local v0           #args:Landroid/os/Bundle;
    :cond_a3
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->ONE_ON_ONE_CONVERSATION_ADD_PEOPLE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    goto :goto_8c

    .line 808
    :pswitch_data_a6
    .packed-switch 0x7f0d01c9
        :pswitch_88
        :pswitch_6f
        :pswitch_18
        :pswitch_2c
        :pswitch_40
    .end packed-switch
.end method

.method private invitePeopleToConversation(Landroid/os/Bundle;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    .line 861
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 862
    return-void
.end method

.method private static isEmptyCursor(Landroid/database/Cursor;)Z
    .registers 2
    .parameter "cursor"

    .prologue
    .line 893
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "action"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_d

    .line 898
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 900
    :cond_d
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->showEmptyViewProgress(Landroid/view/View;)V

    .line 243
    :goto_9
    return-void

    .line 238
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 239
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->showEmptyView(Landroid/view/View;)V

    goto :goto_9

    .line 241
    :cond_14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->showContent(Landroid/view/View;)V

    goto :goto_9
.end method


# virtual methods
.method protected doShowEmptyView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 263
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    const v0, 0x7f0d007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v0, 0x7f0d0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_27
    return-void
.end method

.method protected doShowEmptyViewProgress(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    const/16 v1, 0x8

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 251
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 252
    const v0, 0x7f0d007b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    const v0, 0x7f0d0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_27
    return-void
.end method

.method protected isLoading()Z
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getConversationsLoaded()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 599
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 600
    const/4 v0, -0x1

    if-ne p2, v0, :cond_12

    if-eqz p3, :cond_12

    .line 601
    const-string v0, "audience"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 604
    :cond_12
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    .line 326
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_f

    .line 331
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    iget-wide v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v2, p1, v3, v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->handleContextItemSelected(Landroid/support/v4/widget/CursorAdapter;Landroid/view/MenuItem;J)V

    .line 333
    const/4 v2, 0x1

    .end local v1           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :goto_e
    return v2

    .line 327
    :catch_f
    move-exception v0

    .line 328
    .local v0, e:Ljava/lang/ClassCastException;
    const/4 v2, 0x0

    goto :goto_e
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_10

    .line 178
    new-instance v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;-><init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;

    .line 180
    :cond_10
    if-eqz p1, :cond_2d

    .line 181
    const-string v0, "InvitationConversationBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    .line 183
    const-string v0, "ConversationRowIdForDialog"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationRowIdForDialog:J

    .line 185
    const-string v0, "ConversationNameForMenu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRecordedConversationsEmpty:Z

    .line 193
    :cond_2d
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 16
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 297
    :try_start_2
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_6} :catch_6c

    .line 302
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    .line 303
    .local v3, inflater:Landroid/view/MenuInflater;
    const v8, 0x7f10000c

    invoke-virtual {v3, v8, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 305
    iget-object v8, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v8, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    iget v11, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v8, v11}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 306
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v8, 0x6

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, name:Ljava/lang/String;
    if-nez v7, :cond_2c

    .line 308
    const/4 v8, 0x7

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 310
    :cond_2c
    iput-object v7, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;

    .line 311
    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_6e

    move v5, v9

    .line 312
    .local v5, isGroup:Z
    :goto_36
    const/4 v8, 0x2

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_70

    move v6, v9

    .line 314
    .local v6, isMuted:Z
    :goto_3e
    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 316
    const v8, 0x7f0d01ca

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 317
    const v8, 0x7f0d01cd

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 318
    const v8, 0x7f0d01cb

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    if-nez v6, :cond_72

    :goto_5e
    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 319
    const v8, 0x7f0d01cc

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v3           #inflater:Landroid/view/MenuInflater;
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v5           #isGroup:Z
    .end local v6           #isMuted:Z
    .end local v7           #name:Ljava/lang/String;
    :goto_6b
    return-void

    .line 298
    :catch_6c
    move-exception v2

    .line 299
    .local v2, e:Ljava/lang/ClassCastException;
    goto :goto_6b

    .end local v2           #e:Ljava/lang/ClassCastException;
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v3       #inflater:Landroid/view/MenuInflater;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .restart local v7       #name:Ljava/lang/String;
    :cond_6e
    move v5, v10

    .line 311
    goto :goto_36

    .restart local v5       #isGroup:Z
    :cond_70
    move v6, v10

    .line 312
    goto :goto_3e

    .restart local v6       #isMuted:Z
    :cond_72
    move v9, v10

    .line 318
    goto :goto_5e
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
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    if-ne p1, v6, :cond_17

    .line 509
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationsUri:Landroid/net/Uri;

    sget-object v3, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "is_visible=1 AND is_pending_leave=0"

    const-string v6, "latest_message_timestamp DESC"

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 524
    :goto_16
    return-object v0

    .line 514
    :cond_17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_42

    .line 515
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const-string v1, "conversation_row_id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/apps/plus/content/EsProvider;->buildParticipantsUri(Lcom/google/android/apps/plus/content/EsAccount;J)Landroid/net/Uri;

    move-result-object v2

    .line 517
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ParticipantsQuery;->PROJECTION:[Ljava/lang/String;

    const-string v4, "participant_id!=?"

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "first_name ASC"

    move-object v7, v2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_16

    .end local v2           #uri:Landroid/net/Uri;
    :cond_42
    move-object v0, v5

    .line 524
    goto :goto_16
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 458
    const v0, 0x7f030021

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 459
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    .line 460
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 461
    new-instance v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v3, v4}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    .line 462
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_b8

    .line 465
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 471
    :goto_3c
    const v0, 0x7f0d007e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 472
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v3, "plusone_messenger_promo"

    invoke-static {v1, v3}, Lcom/google/android/apps/plus/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 473
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070261

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 475
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v4, Landroid/text/style/URLSpan;

    invoke-interface {v3, v7, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 476
    array-length v4, v1

    if-lez v4, :cond_99

    .line 477
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 478
    aget-object v1, v1, v7

    .line 479
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 480
    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 481
    new-instance v6, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;

    invoke-direct {v6, p0, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$1;-><init>(Lcom/google/android/apps/plus/fragments/ConversationListFragment;Landroid/text/style/URLSpan;)V

    const/16 v1, 0x21

    invoke-virtual {v4, v6, v5, v3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 489
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 494
    :cond_99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_b7

    .line 495
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-nez v0, :cond_b7

    .line 496
    const v0, 0x7f0d007c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 497
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 500
    :cond_b7
    return-object v2

    .line 467
    :cond_b8
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 468
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionCallback:Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ActionModeCallback;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto/16 :goto_3c
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onDestroyView()V
    .registers 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onDestroyView()V

    return-void
.end method

.method public onDialogCanceled(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 890
    return-void
.end method

.method public onDialogNegativeClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 882
    return-void
.end method

.method public onDialogPositiveClick(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .parameter "args"
    .parameter "tag"

    .prologue
    .line 869
    const-string v0, "leave_conversation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 870
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->GROUP_CONVERSATION_LEAVE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 871
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationRowIdForDialog:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I

    .line 874
    :cond_18
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 620
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v0, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v0, p3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/Cursor;

    .line 621
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_12

    .line 642
    :cond_11
    :goto_11
    return-void

    .line 624
    :cond_12
    const/16 v0, 0xf

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 626
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_42

    :goto_30
    move-wide v2, p4

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/phone/Intents;->getConversationInvititationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 630
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    .line 638
    :goto_38
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v0, :cond_11

    .line 639
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    goto :goto_11

    .end local v7           #intent:Landroid/content/Intent;
    :cond_42
    move v5, v2

    .line 626
    goto :goto_30

    .line 632
    :cond_44
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_58

    :goto_50
    invoke-static {v0, v1, p4, p5, v5}, Lcom/google/android/apps/plus/phone/Intents;->getConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)Landroid/content/Intent;

    move-result-object v7

    .line 635
    .restart local v7       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_38

    .end local v7           #intent:Landroid/content/Intent;
    :cond_58
    move v5, v2

    .line 632
    goto :goto_50
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 18
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
    .line 533
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4e

    .line 534
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 535
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->updateView(Landroid/view/View;)V

    .line 537
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->restoreScrollPosition()V

    .line 539
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_29

    .line 540
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    if-eqz v1, :cond_29

    .line 542
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    .line 547
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    .line 548
    .local v9, activity:Landroid/app/Activity;
    invoke-static/range {p2 .. p2}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isEmptyCursor(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_45

    iget-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRecordedConversationsEmpty:Z

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v1, :cond_45

    .line 549
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->CONVERSATIONS_EMPTY:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v9, v1, v2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordSystemAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 551
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRecordedConversationsEmpty:Z

    .line 556
    :cond_45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->isLoading()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 557
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->onAsyncData()V

    .line 559
    .end local v9           #activity:Landroid/app/Activity;
    :cond_4e
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d2

    .line 560
    if-eqz p2, :cond_ca

    .line 562
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    move-result-object v10

    .line 563
    .local v10, audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :goto_5b
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 564
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v14

    .line 565
    .local v14, personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 567
    .local v13, participantId:Ljava/lang/String;
    const-string v1, "g:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 568
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v14, v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setGaiaId(J)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 572
    :cond_80
    :goto_80
    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 574
    .local v12, name:Ljava/lang/String;
    invoke-virtual {v14, v12}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setName(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    .line 575
    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->addUser(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;

    goto :goto_5b

    .line 569
    .end local v12           #name:Ljava/lang/String;
    :cond_92
    const-string v1, "e:"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 570
    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->setEmail(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    goto :goto_80

    .line 577
    .end local v13           #participantId:Ljava/lang/String;
    .end local v14           #personBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    :cond_a3
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v4

    .line 579
    .local v4, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    const-string v2, "conversation_is_group"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 581
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const v3, 0x7f070224

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/google/android/apps/plus/phone/Intents;->getEditAudienceActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;IZZZ)Landroid/content/Intent;

    move-result-object v11

    .line 586
    .local v11, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v11, v1}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 593
    .end local v4           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v10           #audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    .end local v11           #intent:Landroid/content/Intent;
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V

    .line 595
    :cond_d2
    return-void

    .line 588
    .restart local v4       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .restart local v10       #audienceBuilder:Lcom/google/wireless/tacotruck/proto/Data$Audience$Builder;
    :cond_d3
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, v4}, Lcom/google/android/apps/plus/phone/Intents;->getNewConversationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Landroid/content/Intent;

    move-result-object v11

    .line 590
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v11}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_ca
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
    .line 612
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 227
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onPause()V

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;

    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 229
    return-void
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 200
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onResume()V

    .line 201
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mRTCServiceListener:Lcom/google/android/apps/plus/fragments/ConversationListFragment$RTCServiceListener;

    invoke-static {v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->updateView(Landroid/view/View;)V

    .line 203
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/fragments/ConversationListFragment$ConversationCursorAdapter;->onResume()V

    .line 204
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    if-eqz v2, :cond_34

    .line 205
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    const-string v3, "conversation_row_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 207
    .local v0, conversationRowId:J
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I

    .line 209
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    .line 210
    iput-object v6, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mResultAudience:Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 212
    .end local v0           #conversationRowId:J
    :cond_34
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "InvitationConversationBundle"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mInvitationConversationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 218
    const-string v0, "ConversationRowIdForDialog"

    iget-wide v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationRowIdForDialog:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 219
    const-string v0, "ConversationNameForMenu"

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationNameForMenu:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public bridge synthetic onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScroll(Landroid/widget/AbsListView;III)V

    return-void
.end method

.method public bridge synthetic onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsListFragment;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    return-void
.end method

.method public setAccount(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 649
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 650
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_19

    .line 651
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->CONVERSATIONS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->mConversationsUri:Landroid/net/Uri;

    .line 652
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/ConversationListFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 654
    :cond_19
    return-void
.end method

.method protected showContent(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsListFragment;->showContent(Landroid/view/View;)V

    .line 277
    const v0, 0x7f0d0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    return-void
.end method
