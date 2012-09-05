.class Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionModeCallback"
.end annotation


# instance fields
.field private mActiveFollowUpFlag:Landroid/view/MenuItem;

.field private mAddStar:Landroid/view/MenuItem;

.field private mClearFollowUpFlag:Landroid/view/MenuItem;

.field mClosedByUser:Z

.field private mCompleteFollowUpFlag:Landroid/view/MenuItem;

.field private mConversationIgnore:Landroid/view/MenuItem;

.field private mConversationMoveAlways:Landroid/view/MenuItem;

.field private mConversationRestore:Landroid/view/MenuItem;

.field private mForward:Landroid/view/MenuItem;

.field private mMarkRead:Landroid/view/MenuItem;

.field private mMarkUnread:Landroid/view/MenuItem;

.field private mMove:Landroid/view/MenuItem;

.field private mRemoveStar:Landroid/view/MenuItem;

.field private mTrash:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/android/email/activity/MessageListFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListFragment;)V
    .registers 3
    .parameter

    .prologue
    .line 4084
    iput-object p1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListFragment;Lcom/android/email/activity/MessageListFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4084
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;-><init>(Lcom/android/email/activity/MessageListFragment;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 4084
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V

    return-void
.end method

.method private onDeleteSmsPopup()V
    .registers 5

    .prologue
    .line 4566
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4568
    .local v0, backWarning:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 4570
    const v2, 0x7f080058

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4571
    iget-object v2, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080555

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4572
    .local v1, reportString:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4573
    const v2, 0x7f080042

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$12;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$12;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4583
    const v2, 0x7f080043

    new-instance v3, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$13;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4592
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4593
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4505
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_5a

    .line 4524
    :cond_9
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    .line 4561
    :goto_10
    :sswitch_10
    return v4

    .line 4514
    :sswitch_11
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #calls: Lcom/android/email/activity/MessageListFragment;->checkITPolicy_AllowPOPIMAP()Z
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$4200(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 4515
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0803ec

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_10

    .line 4527
    :sswitch_2a
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiToggleRead()V

    goto :goto_10

    .line 4530
    :sswitch_30
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v0

    .line 4531
    .local v0, messageIds:[J
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    aget-wide v2, v0, v3

    #calls: Lcom/android/email/activity/MessageListFragment;->onForward(J)V
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/MessageListFragment;->access$4300(Lcom/android/email/activity/MessageListFragment;J)V

    goto :goto_10

    .line 4543
    .end local v0           #messageIds:[J
    :sswitch_46
    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-lez v1, :cond_4e

    .line 4544
    invoke-direct {p0}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->onDeleteSmsPopup()V

    goto :goto_10

    .line 4547
    :cond_4e
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiDelete()V

    goto :goto_10

    .line 4550
    :sswitch_54
    iget-object v1, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->onMultiMove()V

    goto :goto_10

    .line 4505
    :sswitch_data_5a
    .sparse-switch
        0x7f1002ee -> :sswitch_11
        0x7f100309 -> :sswitch_11
        0x7f100321 -> :sswitch_11
        0x7f100322 -> :sswitch_11
        0x7f100323 -> :sswitch_11
        0x7f100324 -> :sswitch_11
        0x7f100325 -> :sswitch_11
    .end sparse-switch

    .line 4524
    :sswitch_data_78
    .sparse-switch
        0x7f1002ee -> :sswitch_30
        0x7f100309 -> :sswitch_46
        0x7f100321 -> :sswitch_54
        0x7f100322 -> :sswitch_2a
        0x7f100323 -> :sswitch_2a
        0x7f100324 -> :sswitch_10
        0x7f100325 -> :sswitch_10
        0x7f100326 -> :sswitch_10
        0x7f100327 -> :sswitch_10
        0x7f100328 -> :sswitch_10
        0x7f10032a -> :sswitch_10
        0x7f10032b -> :sswitch_10
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 29
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 4116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$3702(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 4118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v10

    .line 4119
    .local v10, inflater:Landroid/view/MenuInflater;
    const v22, 0x7f0f0023

    move/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v10, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 4121
    const v22, 0x7f1002ee

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    .line 4122
    const v22, 0x7f100321

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    .line 4123
    const v22, 0x7f100322

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    .line 4124
    const v22, 0x7f100323

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    .line 4125
    const v22, 0x7f100324

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    .line 4126
    const v22, 0x7f100325

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    .line 4127
    const v22, 0x7f100326

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    .line 4128
    const v22, 0x7f100327

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    .line 4129
    const v22, 0x7f100328

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    .line 4130
    const v22, 0x7f10032a

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    .line 4131
    const v22, 0x7f10032b

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationRestore:Landroid/view/MenuItem;

    .line 4132
    const v22, 0x7f100329

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    .line 4133
    const v22, 0x7f100309

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    .line 4135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1500(Lcom/android/email/activity/MessageListFragment;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 4136
    .local v21, r:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainOnlyConversation()Z

    move-result v9

    .line 4138
    .local v9, convIgnore:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_191

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_191

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000bf

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 4141
    .local v15, mMoveImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    .line 4144
    .local v16, mMoveLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_16b

    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_16b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_16b

    if-nez v9, :cond_54f

    .line 4147
    :cond_16b
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4154
    :goto_178
    invoke-virtual/range {v15 .. v16}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$1;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4163
    .end local v15           #mMoveImageView:Landroid/widget/LinearLayout;
    .end local v16           #mMoveLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_23d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_23d

    .line 4165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000c0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 4167
    .local v5, MarkReadImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 4170
    .local v6, MarkReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_1de

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, -0x4

    cmp-long v22, v22, v24

    if-nez v22, :cond_1e2

    :cond_1de
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_55e

    .line 4172
    :cond_1e2
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4177
    :goto_1f5
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_219

    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_219

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_219

    if-nez v9, :cond_573

    .line 4180
    :cond_219
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4187
    :goto_224
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$2;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4196
    .end local v5           #MarkReadImageView:Landroid/widget/LinearLayout;
    .end local v6           #MarkReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_23d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_2e9

    .line 4197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000c2

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 4199
    .local v7, MarkUnReadImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 4202
    .local v8, MarkUnReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-gez v22, :cond_28a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v22

    const-wide/16 v24, -0x4

    cmp-long v22, v22, v24

    if-nez v22, :cond_28e

    :cond_28a
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_580

    .line 4204
    :cond_28e
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4209
    :goto_2a1
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_2c5

    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_2c5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_2c5

    if-nez v9, :cond_595

    .line 4212
    :cond_2c5
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4219
    :goto_2d0
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$3;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4227
    .end local v7           #MarkUnReadImageView:Landroid/widget/LinearLayout;
    .end local v8           #MarkUnReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_34a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_34a

    .line 4228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000bd

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 4230
    .local v13, mAddStarImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 4233
    .local v14, mAddStarLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4234
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$4;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4243
    .end local v13           #mAddStarImageView:Landroid/widget/LinearLayout;
    .end local v14           #mAddStarLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_34a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_3af

    .line 4245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000c1

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 4247
    .local v17, mRemoveStarImageView:Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 4250
    .local v18, mRemoveStarLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4251
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$5;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4260
    .end local v17           #mRemoveStarImageView:Landroid/widget/LinearLayout;
    .end local v18           #mRemoveStarLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_423

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_423

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000bc

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 4264
    .local v19, mTrashImageView:Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout$LayoutParams;

    .line 4267
    .local v20, mTrashLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_400

    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_400

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_400

    if-nez v9, :cond_5a2

    .line 4270
    :cond_400
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4277
    :goto_40d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$6;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4289
    .end local v19           #mTrashImageView:Landroid/widget/LinearLayout;
    .end local v20           #mTrashLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_44d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_44d

    .line 4291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$7;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4298
    :cond_44d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_477

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_477

    .line 4300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$8;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$8;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4307
    :cond_477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_4e9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_4e9

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    const v23, 0x7f1000be

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 4311
    .local v11, mActiveFollowUpFlagImageView:Landroid/widget/LinearLayout;
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 4314
    .local v12, mActiveFollowUpFlagLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_4c8

    sget-boolean v22, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v22, :cond_4c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    const-wide/high16 v24, 0x402c

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4c8

    if-nez v9, :cond_5b1

    .line 4317
    :cond_4c8
    const v22, 0x7f0c0118

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 4324
    :goto_4d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$9;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4331
    .end local v11           #mActiveFollowUpFlagImageView:Landroid/widget/LinearLayout;
    .end local v12           #mActiveFollowUpFlagLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_513

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_513

    .line 4333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$10;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$10;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4340
    :cond_513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    if-eqz v22, :cond_53d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_53d

    .line 4342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v22

    new-instance v23, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$11;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback$11;-><init>(Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;)V

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4350
    :cond_53d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    move-object/from16 v22, v0

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static/range {v22 .. v22}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v22

    const/16 v23, 0x1

    invoke-interface/range {v22 .. v23}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    .line 4351
    const/16 v22, 0x1

    return v22

    .line 4151
    .restart local v15       #mMoveImageView:Landroid/widget/LinearLayout;
    .restart local v16       #mMoveLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_54f
    const v22, 0x7f0c0119

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_178

    .line 4174
    .end local v15           #mMoveImageView:Landroid/widget/LinearLayout;
    .end local v16           #mMoveLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5       #MarkReadImageView:Landroid/widget/LinearLayout;
    .restart local v6       #MarkReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_55e
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1f5

    .line 4184
    :cond_573
    const v22, 0x7f0c0119

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_224

    .line 4206
    .end local v5           #MarkReadImageView:Landroid/widget/LinearLayout;
    .end local v6           #MarkReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #MarkUnReadImageView:Landroid/widget/LinearLayout;
    .restart local v8       #MarkUnReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_580
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2a1

    .line 4216
    :cond_595
    const v22, 0x7f0c0119

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2d0

    .line 4274
    .end local v7           #MarkUnReadImageView:Landroid/widget/LinearLayout;
    .end local v8           #MarkUnReadLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v19       #mTrashImageView:Landroid/widget/LinearLayout;
    .restart local v20       #mTrashLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5a2
    const v22, 0x7f0c0119

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_40d

    .line 4321
    .end local v19           #mTrashImageView:Landroid/widget/LinearLayout;
    .end local v20           #mTrashLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11       #mActiveFollowUpFlagImageView:Landroid/widget/LinearLayout;
    .restart local v12       #mActiveFollowUpFlagLayoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5b1
    const v22, 0x7f0c0119

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    move/from16 v0, v22

    iput v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_4d3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 4599
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mCallback:Lcom/android/email/activity/MessageListFragment$Callback;
    invoke-static {v0}, Lcom/android/email/activity/MessageListFragment;->access$400(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessageListFragment$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/email/activity/MessageListFragment$Callback;->onEnterSelectionMode(Z)V

    .line 4604
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageListFragment;->access$3702(Lcom/android/email/activity/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 4605
    iget-boolean v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClosedByUser:Z

    if-eqz v0, :cond_19

    .line 4613
    iget-object v0, p0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageListFragment;->onDeselectAll()V

    .line 4615
    :cond_19
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 20
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 4356
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getSelectedCount()I

    move-result v14

    .line 4359
    .local v14, num:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mSelectionMode:Landroid/view/ActionMode;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$3700(Lcom/android/email/activity/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0006

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v14, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 4371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainNonStarredMessage()Z

    move-result v13

    .line 4372
    .local v13, nonStarExists:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainReadMessage()Z

    move-result v15

    .line 4373
    .local v15, readExists:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doseSelectionContainFlaggedMessage()I

    move-result v10

    .line 4374
    .local v10, flagStatus:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->doesSelectionContainOnlyConversation()Z

    move-result v7

    .line 4376
    .local v7, convIgnore:Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4378
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4379
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4382
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4383
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4384
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4385
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4386
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4387
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4388
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationRestore:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4389
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4390
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4392
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2dd

    .line 4393
    sget-boolean v1, Lcom/android/email/activity/MessageListFragment;->mIsEasAccount:Z

    if-eqz v1, :cond_2c7

    .line 4394
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_146

    .line 4396
    packed-switch v10, :pswitch_data_31e

    .line 4407
    :goto_e5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$1800(Lcom/android/email/activity/MessageListFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mProtocolVersion:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x402c

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_10b

    if-eqz v7, :cond_10b

    .line 4409
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationIgnore:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4410
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mConversationMoveAlways:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4413
    :cond_10b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_146

    .line 4414
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->toPrimitiveLongArray(Ljava/util/Collection;)[J

    move-result-object v12

    .line 4416
    .local v12, messageIds:[J
    array-length v1, v12

    const/4 v2, 0x1

    if-le v1, v2, :cond_256

    .line 4417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4460
    .end local v12           #messageIds:[J
    :cond_146
    :goto_146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v2}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->canMoveFrom(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_176

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_176

    .line 4462
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->hasMailboxToMove:Z
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$4100(Lcom/android/email/activity/MessageListFragment;)Z

    move-result v1

    if-eqz v1, :cond_176

    .line 4463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4467
    :cond_176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_18c

    .line 4468
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4470
    :cond_18c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1b1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c8

    :cond_1b1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageListFragment;->getMailboxId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxType(Landroid/content/Context;J)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_301

    .line 4472
    :cond_1c8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4473
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4487
    :goto_200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mTrash:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4490
    const v1, 0x7f1002ee

    :try_start_20b
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 4491
    .local v11, forwardItem:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mListAdapter:Lcom/android/email/activity/MessagesAdapter;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$900(Lcom/android/email/activity/MessageListFragment;)Lcom/android/email/activity/MessagesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/activity/MessagesAdapter;->isForwardBlock()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_224

    .line 4492
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_20b .. :try_end_224} :catch_317

    .line 4498
    .end local v11           #forwardItem:Landroid/view/MenuItem;
    :cond_224
    :goto_224
    const/4 v1, 0x1

    return v1

    .line 4398
    :pswitch_226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mClearFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_234

    const/4 v1, 0x1

    :goto_22f
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e5

    :cond_234
    const/4 v1, 0x0

    goto :goto_22f

    .line 4401
    :pswitch_236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mCompleteFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_244

    const/4 v1, 0x1

    :goto_23f
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e5

    :cond_244
    const/4 v1, 0x0

    goto :goto_23f

    .line 4404
    :pswitch_246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mActiveFollowUpFlag:Landroid/view/MenuItem;

    sget v1, Lcom/android/email/activity/MessageListFragment;->sms_selected:I

    if-gtz v1, :cond_254

    const/4 v1, 0x1

    :goto_24f
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_e5

    :cond_254
    const/4 v1, 0x0

    goto :goto_24f

    .line 4420
    .restart local v12       #messageIds:[J
    :cond_256
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$200(Lcom/android/email/activity/MessageListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "syncServerId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "fromList"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-wide v5, v12, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4424
    .local v8, cursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 4425
    .local v16, serverId:Ljava/lang/String;
    if-eqz v8, :cond_2b1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2b1

    .line 4426
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4427
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 4428
    if-eqz v16, :cond_2b6

    .line 4429
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4430
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4437
    :cond_2b1
    :goto_2b1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_146

    .line 4432
    :cond_2b6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMove:Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 4433
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mForward:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2b1

    .line 4445
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v12           #messageIds:[J
    .end local v16           #serverId:Ljava/lang/String;
    :cond_2c7
    if-eqz v13, :cond_2d3

    .line 4446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_146

    .line 4448
    :cond_2d3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_146

    .line 4452
    :cond_2dd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->this$0:Lcom/android/email/activity/MessageListFragment;

    #getter for: Lcom/android/email/activity/MessageListFragment;->mMailboxId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageListFragment;->access$300(Lcom/android/email/activity/MessageListFragment;)J

    move-result-wide v1

    const-wide/16 v3, -0x4

    cmp-long v1, v1, v3

    if-nez v1, :cond_146

    .line 4453
    if-eqz v13, :cond_2f7

    .line 4454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mAddStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_146

    .line 4456
    :cond_2f7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mRemoveStar:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_146

    .line 4480
    :cond_301
    if-eqz v15, :cond_30d

    .line 4481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkUnread:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_200

    .line 4483
    :cond_30d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/email/activity/MessageListFragment$SelectionModeCallback;->mMarkRead:Landroid/view/MenuItem;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_200

    .line 4494
    :catch_317
    move-exception v9

    .line 4495
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_224

    .line 4396
    nop

    :pswitch_data_31e
    .packed-switch 0x0
        :pswitch_226
        :pswitch_236
        :pswitch_246
    .end packed-switch
.end method
