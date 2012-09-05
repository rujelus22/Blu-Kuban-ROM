.class public Lcom/android/email/activity/MoveMessageToDialog;
.super Landroid/app/DialogFragment;
.source "MoveMessageToDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;,
        Lcom/android/email/activity/MoveMessageToDialog$ViewWrapper;,
        Lcom/android/email/activity/MoveMessageToDialog$Callback;,
        Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    }
.end annotation


# static fields
.field private static sHasDialog:Z


# instance fields
.field private mConvIds:[Ljava/lang/String;

.field private mCurrentAccountId:J

.field private mCurrentMailboxId:J

.field private mCursor:Landroid/database/Cursor;

.field private mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemListOrigin:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/MoveMessageToDialog$DialogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

.field private mMessageIds:[J

.field private mMoveType:I

.field private mVisibleAccountId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sNeedToDismiss:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    .line 507
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MoveMessageToDialog;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    return-object v0
.end method

.method private getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;
    .registers 3

    .prologue
    .line 418
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 419
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_9

    .line 421
    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    .line 424
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_8
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_9
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-object v0, v1

    goto :goto_8
.end method

.method private static getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, name:Ljava/lang/String;
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_1a

    .line 433
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 434
    .local v3, type:I
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 435
    .local v0, mailboxId:J
    invoke-static {p0}, Lcom/android/email/FolderProperties;->getInstance(Landroid/content/Context;)Lcom/android/email/FolderProperties;

    move-result-object v4

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/email/FolderProperties;->getDisplayName(IJ)Ljava/lang/String;

    move-result-object v2

    .line 437
    .end local v0           #mailboxId:J
    .end local v3           #type:I
    :cond_1a
    if-nez v2, :cond_21

    .line 438
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 440
    :cond_21
    return-object v2
.end method

.method public static hasShowingDialog()Z
    .registers 1

    .prologue
    .line 410
    sget-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    return v0
.end method

.method public static newInstance(Landroid/app/Activity;[JLandroid/app/Fragment;)Lcom/android/email/activity/MoveMessageToDialog;
    .registers 5
    .parameter "parent"
    .parameter "messageIds"
    .parameter "callbackFragment"

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Lcom/android/email/activity/MoveMessageToDialog;->newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/app/Activity;[J[Ljava/lang/String;Landroid/app/Fragment;I)Lcom/android/email/activity/MoveMessageToDialog;
    .registers 8
    .parameter "parent"
    .parameter "messageIds"
    .parameter "convIds"
    .parameter "callbackFragment"
    .parameter "moveType"

    .prologue
    .line 161
    array-length v2, p1

    if-nez v2, :cond_9

    .line 162
    new-instance v2, Ljava/security/InvalidParameterException;

    invoke-direct {v2}, Ljava/security/InvalidParameterException;-><init>()V

    throw v2

    .line 164
    :cond_9
    new-instance v1, Lcom/android/email/activity/MoveMessageToDialog;

    invoke-direct {v1}, Lcom/android/email/activity/MoveMessageToDialog;-><init>()V

    .line 165
    .local v1, dialog:Lcom/android/email/activity/MoveMessageToDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "move_type"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "conversation_ids"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 168
    const-string v2, "message_ids"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 169
    invoke-virtual {v1, v0}, Lcom/android/email/activity/MoveMessageToDialog;->setArguments(Landroid/os/Bundle;)V

    .line 170
    if-eqz p3, :cond_2b

    .line 171
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/android/email/activity/MoveMessageToDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 173
    :cond_2b
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .parameter "dialog"
    .parameter "position"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    .line 374
    .local v9, item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    iget-object v0, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxName:Ljava/lang/String;

    if-nez v0, :cond_90

    .line 375
    iget-wide v11, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    .line 376
    .local v11, selectedItemAccountId:J
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 377
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 381
    :goto_23
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v10, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_29
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_82

    .line 385
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->remove(Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-wide v2, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 387
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :cond_5b
    :goto_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    .line 379
    .end local v8           #i:I
    .end local v10           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    :cond_5e
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_23

    .line 389
    .restart local v8       #i:I
    .restart local v10       #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    :cond_68
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    iget-wide v0, v0, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5b

    .line 390
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 395
    :cond_82
    iget-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    invoke-virtual {v0, v10}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;->addAll(Ljava/util/Collection;)V

    .line 396
    invoke-virtual {v10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    .line 407
    .end local v8           #i:I
    .end local v10           #itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    .end local v11           #selectedItemAccountId:J
    :goto_8f
    return-void

    .line 398
    :cond_90
    iget v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_aa

    .line 399
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    iget-wide v3, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    iget-object v6, p0, Lcom/android/email/activity/MoveMessageToDialog;->mConvIds:[Ljava/lang/String;

    iget v7, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    invoke-interface/range {v0 .. v7}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveConversationAlwaysToMailboxSelected(JJ[J[Ljava/lang/String;I)V

    .line 405
    :goto_a6
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    goto :goto_8f

    .line 402
    :cond_aa
    invoke-direct {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getCallback()Lcom/android/email/activity/MoveMessageToDialog$Callback;

    move-result-object v0

    iget-wide v1, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->accountId:J

    iget-wide v3, v9, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;->mailboxId:J

    iget-object v5, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    iget v6, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    invoke-interface/range {v0 .. v6}, Lcom/android/email/activity/MoveMessageToDialog$Callback;->onMoveToMailboxSelected(JJ[JI)V

    goto :goto_a6
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "move_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMoveType:I

    .line 181
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "conversation_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mConvIds:[Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message_ids"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    .line 183
    const/4 v0, 0x0

    const v1, 0x103006e

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MoveMessageToDialog;->setStyle(II)V

    .line 184
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 42
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v18

    .line 198
    .local v18, activity:Landroid/app/Activity;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080038

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    .line 200
    .local v32, moveDialogbuilder:Landroid/app/AlertDialog$Builder;
    const-wide/16 v4, -0x1

    .line 201
    .local v4, accountId:J
    const-wide/16 v12, -0x1

    .line 202
    .local v12, mailboxId:J
    const/4 v14, -0x1

    .line 203
    .local v14, mailboxType:I
    const/16 v23, -0x1

    .line 204
    .local v23, flagNoSelected:I
    const/16 v35, -0x1

    .line 205
    .local v35, serverType:I
    const/16 v21, -0x1

    .line 206
    .local v21, currentServerType:I
    const/4 v6, 0x0

    .line 207
    .local v6, accountStr:Ljava/lang/String;
    const/4 v15, 0x0

    .line 208
    .local v15, mailboxStr:Ljava/lang/String;
    new-instance v38, Ljava/util/HashMap;

    invoke-direct/range {v38 .. v38}, Ljava/util/HashMap;-><init>()V

    .line 209
    .local v38, threadMailMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;>;"
    new-instance v39, Ljava/util/HashMap;

    invoke-direct/range {v39 .. v39}, Ljava/util/HashMap;-><init>()V

    .line 210
    .local v39, threadMailMapOrigin:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v28, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v29, itemListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    const/16 v36, 0x0

    .line 213
    .local v36, tempItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    const/16 v37, 0x0

    .line 214
    .local v37, tempItemListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v17, accountIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 216
    .local v2, item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    const/16 v16, 0x0

    .line 217
    .local v16, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    const/16 v20, 0x0

    .line 219
    .local v20, currentAccont:Lcom/android/emailcommon/provider/EmailContent$Account;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_2ca

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2ca

    .line 220
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMessageIds:[J

    move-object/from16 v19, v0

    .local v19, arr$:[J
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_6b
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_93

    aget-wide v26, v19, v25

    .line 223
    .local v26, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v31

    .line 225
    .local v31, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v31, :cond_e7

    .line 226
    move-object/from16 v0, v31

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    .line 227
    move-object/from16 v0, v31

    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    .line 232
    .end local v26           #id:J
    .end local v31           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_93
    const/16 v24, 0x0

    .local v24, i:I
    :goto_95
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_1c6

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/MoveMessageToDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    invoke-static {v3, v7}, Lcom/android/email/activity/MoveMessageToDialog;->getDisplayName(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 237
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 239
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_ea

    .line 232
    :cond_e4
    :goto_e4
    add-int/lit8 v24, v24, 0x1

    goto :goto_95

    .line 222
    .end local v24           #i:I
    .restart local v26       #id:J
    .restart local v31       #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_e7
    add-int/lit8 v25, v25, 0x1

    goto :goto_6b

    .line 243
    .end local v26           #id:J
    .end local v31           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .restart local v24       #i:I
    :cond_ea
    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v16

    .line 244
    if-eqz v16, :cond_12f

    .line 269
    invoke-static/range {v16 .. v16}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v35

    .line 270
    invoke-virtual/range {v16 .. v16}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 271
    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v3, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v20

    .line 273
    if-eqz v20, :cond_12f

    .line 274
    invoke-static/range {v20 .. v20}, Lcom/android/email/adapter/ProtocolAdapter;->getAccountTransport(Lcom/android/emailcommon/provider/EmailContent$Account;)I

    move-result v21

    .line 275
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    cmp-long v3, v4, v7

    if-eqz v3, :cond_12f

    .line 276
    const/4 v3, 0x6

    move/from16 v0, v21

    if-eq v0, v3, :cond_e4

    const/4 v3, 0x5

    move/from16 v0, v21

    if-eq v0, v3, :cond_e4

    .line 282
    const/4 v3, 0x1

    move/from16 v0, v35

    if-eq v0, v3, :cond_e4

    const/4 v3, 0x6

    move/from16 v0, v35

    if-eq v0, v3, :cond_e4

    const/4 v3, 0x5

    move/from16 v0, v35

    if-eq v0, v3, :cond_e4

    .line 294
    :cond_12f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    .end local v36           #tempItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    check-cast v36, Ljava/util/ArrayList;

    .line 295
    .restart local v36       #tempItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .end local v37           #tempItemListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    check-cast v37, Ljava/util/ArrayList;

    .line 296
    .restart local v37       #tempItemListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    if-nez v36, :cond_19a

    .line 297
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v33, newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v34, newListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    move-object/from16 v36, v33

    .line 303
    move-object/from16 v37, v34

    .line 304
    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    .end local v2           #item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    const-wide/16 v7, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;-><init>(Lcom/android/email/activity/MoveMessageToDialog;JLjava/lang/String;JILjava/lang/String;)V

    .line 305
    .restart local v2       #item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v33           #newList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    .end local v34           #newListOrigin:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/email/activity/MoveMessageToDialog$DialogItem;>;"
    :cond_19a
    new-instance v2, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;

    .end local v2           #item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    const/4 v11, 0x0

    move-object v7, v2

    move-object/from16 v8, p0

    move-wide v9, v4

    invoke-direct/range {v7 .. v15}, Lcom/android/email/activity/MoveMessageToDialog$DialogItem;-><init>(Lcom/android/email/activity/MoveMessageToDialog;JLjava/lang/String;JILjava/lang/String;)V

    .line 310
    .restart local v2       #item:Lcom/android/email/activity/MoveMessageToDialog$DialogItem;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentMailboxId:J

    cmp-long v3, v7, v12

    if-eqz v3, :cond_e4

    .line 311
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 312
    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_1bf
    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e4

    .line 320
    :cond_1c6
    :try_start_1c6
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_207

    .line 321
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 322
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_207} :catch_22a

    .line 329
    :cond_207
    :goto_207
    const/16 v24, 0x0

    :goto_209
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_2cf

    .line 330
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/email/activity/MoveMessageToDialog;->mCurrentAccountId:J

    cmp-long v3, v7, v9

    if-nez v3, :cond_246

    .line 329
    :cond_227
    :goto_227
    add-int/lit8 v24, v24, 0x1

    goto :goto_209

    .line 324
    :catch_22a
    move-exception v22

    .line 325
    .local v22, e:Ljava/lang/Exception;
    const-string v3, "MoveMessageToDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_207

    .line 333
    .end local v22           #e:Ljava/lang/Exception;
    :cond_246
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-ge v3, v7, :cond_287

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mVisibleAccountId:Ljava/util/HashSet;

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 335
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 336
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_227

    .line 339
    :cond_287
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_227

    .line 340
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_227

    .line 345
    .end local v19           #arr$:[J
    .end local v24           #i:I
    .end local v25           #i$:I
    .end local v30           #len$:I
    :cond_2ca
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    .line 347
    :cond_2cf
    new-instance v3, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f04007e

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v3, v0, v7, v8, v1}, Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;-><init>(Lcom/android/email/activity/MoveMessageToDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mMailboxArrayAdapter:Lcom/android/email/activity/MoveMessageToDialog$MailboxSelectorAdapter;

    const/4 v7, -0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-virtual {v0, v3, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 350
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mItemList:Ljava/util/ArrayList;

    .line 351
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/email/activity/MoveMessageToDialog;->mItemListOrigin:Ljava/util/ArrayList;

    .line 353
    const v3, 0x7f080043

    new-instance v7, Lcom/android/email/activity/MoveMessageToDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/email/activity/MoveMessageToDialog$1;-><init>(Lcom/android/email/activity/MoveMessageToDialog;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/MoveMessageToDialog;->sHasDialog:Z

    .line 190
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/email/activity/MoveMessageToDialog;->sNeedToDismiss:Z

    if-eqz v0, :cond_7

    .line 366
    invoke-virtual {p0}, Lcom/android/email/activity/MoveMessageToDialog;->dismiss()V

    .line 368
    :cond_7
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 369
    return-void
.end method

.method public setMailboxCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/email/activity/MoveMessageToDialog;->mCursor:Landroid/database/Cursor;

    .line 415
    return-void
.end method
