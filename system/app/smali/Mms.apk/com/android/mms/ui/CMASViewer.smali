.class public Lcom/android/mms/ui/CMASViewer;
.super Landroid/widget/FrameLayout;
.source "CMASViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
    }
.end annotation


# instance fields
.field private cmas_alert_type_tv:Landroid/widget/TextView;

.field private cmas_data_tv:Landroid/widget/TextView;

.field private cmas_date_time_tv:Landroid/widget/TextView;

.field private cmas_msg_expiry_tv:Landroid/widget/TextView;

.field private cmas_text_tv:Landroid/widget/TextView;

.field private linearLayout02:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

.field private mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

.field private final mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mIntent:Landroid/content/Intent;

.field private mLocked:I

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

.field private mScreenWidth:I

.field private msgDate:J

.field private msgExpiry:J

.field private msgId:J

.field private msgServiceCategory:I

.field private msgText:Ljava/lang/String;

.field private threadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 102
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    .line 103
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    .line 104
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    .line 105
    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    .line 106
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    .line 107
    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 154
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 633
    new-instance v0, Lcom/android/mms/ui/CMASViewer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASViewer$1;-><init>(Lcom/android/mms/ui/CMASViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 809
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    .line 103
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    .line 104
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    .line 105
    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    .line 106
    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    .line 107
    iput v0, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 154
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 633
    new-instance v0, Lcom/android/mms/ui/CMASViewer$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/CMASViewer$1;-><init>(Lcom/android/mms/ui/CMASViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 809
    iput-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/data/Conversation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/CMASViewer;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/CMASViewer;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/CMASViewer;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->requestClose()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/CMASViewer;)Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/CMASViewer;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/CMASViewer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/CMASViewer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/CMASViewer;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/CMASViewer;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/CMASViewer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/CMASViewer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgDate:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/CMASViewer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/CMASViewer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/mms/ui/CMASViewer;->msgServiceCategory:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/CMASViewer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/CMASViewer;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-wide p1, p0, Lcom/android/mms/ui/CMASViewer;->msgExpiry:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/CMASViewer;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/CMASViewer;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    return p1
.end method

.method private confirmDeleteThread(J)V
    .registers 6
    .parameter "mthreadId"

    .prologue
    .line 690
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " confirmDeleteThread() with threadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    const/16 v1, 0x70b

    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 695
    return-void
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .registers 6
    .parameter "str"

    .prologue
    .line 700
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 703
    .local v0, clip:Landroid/text/ClipboardManager;
    const-string v1, "CMASViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " copyToClipboard() with str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 816
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    const-string v1, "CMASViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " createIntent threadId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_4a

    .line 822
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 823
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " createIntent Uri for threadId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 825
    const-string v1, "cmas"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 828
    :cond_4a
    return-object v0
.end method

.method private finishTask()V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationComposer;->finishCMASViewer(Z)Z

    .line 339
    return-void
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 741
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mIntent:Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private goToConversationList()V
    .registers 3

    .prologue
    .line 729
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->finishTask()V

    .line 730
    const-string v0, "CMASViewer"

    const-string v1, " goToConversationList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 13
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 375
    const/4 v1, 0x1

    .line 377
    .local v1, createThread:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 378
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.SENDTO"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 379
    const/4 v1, 0x0

    .line 383
    :cond_28
    if-eqz p1, :cond_49

    .line 385
    const-string v4, "CMASViewer"

    const-string v5, "initActivityState"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 387
    const-string v4, "recipients"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, recipients:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v4, v5, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 418
    .end local v3           #recipients:Ljava/lang/String;
    :goto_48
    return-void

    .line 395
    :cond_49
    const-string v4, "thread_id"

    invoke-virtual {p2, v4, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 396
    iget-wide v4, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_67

    .line 398
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 417
    :goto_61
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    goto :goto_48

    .line 400
    :cond_67
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 402
    .local v2, intentData:Landroid/net/Uri;
    if-eqz v2, :cond_76

    .line 404
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v7, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_61

    .line 407
    :cond_76
    const-string v4, "address"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8f

    .line 409
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v6}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v4, v5, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_61

    .line 412
    :cond_8f
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_61
.end method

.method private initCMASMoreInfoViewer()Lcom/android/mms/ui/CMASMoreInfoViewer;
    .registers 6

    .prologue
    .line 551
    const v3, 0x7f080016

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 552
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 554
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030007

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/CMASMoreInfoViewer;

    .line 555
    .local v1, moreinfoviewer:Lcom/android/mms/ui/CMASMoreInfoViewer;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setActivity(Landroid/app/Activity;)V

    .line 556
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 558
    return-object v1
.end method

.method private initResourceRefs()V
    .registers 3

    .prologue
    .line 173
    const-string v0, "CMASViewer"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v0, 0x7f08001a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_text_tv:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f08001b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f08001c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f080019

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->linearLayout02:Landroid/widget/LinearLayout;

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->linearLayout02:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mCMASOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 184
    return-void
.end method

.method private lockMessage(JZ)V
    .registers 12
    .parameter "msgId"
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 709
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 710
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 712
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 714
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "CMASViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " lockMessage() with msgId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and locked="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const-string v6, "locked"

    if-eqz p3, :cond_4f

    move v3, v4

    :goto_34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 718
    new-instance v3, Ljava/lang/Thread;

    new-instance v6, Lcom/android/mms/ui/CMASViewer$2;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/mms/ui/CMASViewer$2;-><init>(Lcom/android/mms/ui/CMASViewer;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v7, "lockMessage"

    invoke-direct {v3, v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 725
    if-eqz p3, :cond_51

    :goto_4c
    iput v4, p0, Lcom/android/mms/ui/CMASViewer;->mLocked:I

    .line 726
    return-void

    :cond_4f
    move v3, v5

    .line 716
    goto :goto_34

    :cond_51
    move v4, v5

    .line 725
    goto :goto_4c
.end method

.method private requestClose()V
    .registers 3

    .prologue
    .line 448
    const-string v0, "CMASViewer"

    const-string v1, "requestClose()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_10

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 453
    :cond_10
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 736
    monitor-enter p0

    :try_start_1
    const-string v0, "CMASViewer"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mIntent:Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 738
    monitor-exit p0

    return-void

    .line 736
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startMsgListQuery()V
    .registers 10

    .prologue
    const/16 v4, 0x2537

    .line 526
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 528
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    if-nez v3, :cond_23

    .line 546
    :goto_22
    return-void

    .line 535
    :cond_23
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->cancelOperation(I)V

    .line 538
    :try_start_28
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMsgListQuery startQuery for conversationUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_4d} :catch_4e

    goto :goto_22

    .line 543
    :catch_4e
    move-exception v8

    .line 544
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_22
.end method

.method private viewMoreInfoLayout()V
    .registers 7

    .prologue
    .line 612
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 613
    .local v1, threadId:J
    const-string v3, "CMASViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Value of threadID :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_25

    .line 630
    :goto_24
    return-void

    .line 617
    :cond_25
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lcom/android/mms/ui/CMASMoreInfoViewer;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 619
    .local v0, cmasintent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v3, :cond_35

    .line 620
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_24

    .line 623
    :cond_35
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->initCMASMoreInfoViewer()Lcom/android/mms/ui/CMASMoreInfoViewer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    .line 624
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 625
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onStart()V

    .line 627
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v3}, Lcom/android/mms/ui/CMASMoreInfoViewer;->onResume()V

    goto :goto_24
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->requestClose()V

    .line 463
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 345
    return-void
.end method

.method public declared-synchronized getState()I
    .registers 6

    .prologue
    .line 466
    monitor-enter p0

    const/4 v0, -0x1

    .line 467
    .local v0, result:I
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_24

    .line 468
    const/4 v0, 0x0

    .line 480
    :goto_7
    packed-switch v0, :pswitch_data_5a

    .line 491
    const-string v1, "CMASViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getState(),return="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catchall {:try_start_2 .. :try_end_22} :catchall_46

    .line 494
    :goto_22
    monitor-exit p0

    return v0

    .line 472
    :cond_24
    :try_start_24
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_32

    .line 473
    const/4 v0, 0x0

    goto :goto_7

    .line 474
    :cond_32
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-gtz v1, :cond_3c

    .line 475
    const/4 v0, 0x0

    goto :goto_7

    .line 477
    :cond_3c
    const/4 v0, 0x1

    goto :goto_7

    .line 482
    :pswitch_3e
    const-string v1, "CMASViewer"

    const-string v2, "getState(),STATE_NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_46

    goto :goto_22

    .line 466
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1

    .line 485
    :pswitch_49
    :try_start_49
    const-string v1, "CMASViewer"

    const-string v2, "getState(),STATE_NOCONV"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 488
    :pswitch_51
    const-string v1, "CMASViewer"

    const-string v2, "getState(),STATE_HASCONV"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_49 .. :try_end_58} :catchall_46

    goto :goto_22

    .line 480
    nop

    :pswitch_data_5a
    .packed-switch -0x1
        :pswitch_3e
        :pswitch_49
        :pswitch_51
    .end packed-switch
.end method

.method public initialize(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 352
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/CMASViewer;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 354
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize: savedInstanceState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " intent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mConversation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 360
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/CMASViewer;->mScreenWidth:I

    .line 363
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 365
    iget-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_62

    .line 367
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 370
    :cond_62
    iget-object v2, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v2}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 371
    return-void
.end method

.method public loadMessageContent()V
    .registers 3

    .prologue
    .line 521
    const-string v0, "CMASViewer"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->startMsgListQuery()V

    .line 523
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 662
    const-string v2, "CMASViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected() item id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_48

    move v0, v1

    .line 685
    :goto_26
    return v0

    .line 666
    :pswitch_27
    iget-wide v1, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    invoke-direct {p0, v1, v2, v0}, Lcom/android/mms/ui/CMASViewer;->lockMessage(JZ)V

    goto :goto_26

    .line 670
    :pswitch_2d
    iget-wide v2, p0, Lcom/android/mms/ui/CMASViewer;->msgId:J

    invoke-direct {p0, v2, v3, v1}, Lcom/android/mms/ui/CMASViewer;->lockMessage(JZ)V

    goto :goto_26

    .line 674
    :pswitch_33
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->msgText:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASViewer;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_26

    .line 678
    :pswitch_39
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->viewMoreInfoLayout()V

    goto :goto_26

    .line 682
    :pswitch_3d
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/CMASViewer;->confirmDeleteThread(J)V

    goto :goto_26

    .line 664
    nop

    :pswitch_data_48
    .packed-switch 0xa
        :pswitch_27
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_3d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 5
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    .line 163
    invoke-direct {p0, p2}, Lcom/android/mms/ui/CMASViewer;->setIntent(Landroid/content/Intent;)V

    .line 165
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->initResourceRefs()V

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 167
    new-instance v0, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASViewer;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASViewer$BackgroundQueryHandler;

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASViewer;->initialize(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 855
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 421
    packed-switch p1, :pswitch_data_3c

    move v1, v3

    .line 443
    :goto_6
    return v1

    .line 424
    :pswitch_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/16 v4, 0x20

    if-ne v1, v4, :cond_11

    move v1, v2

    .line 425
    goto :goto_6

    .line 427
    :cond_11
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getNextSplitMode()I

    move-result v0

    .line 428
    .local v0, splitMode:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 429
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->requestClose()V

    :goto_1f
    move v1, v2

    .line 438
    goto :goto_6

    .line 430
    :cond_21
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 433
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    goto :goto_1f

    .line 436
    :cond_38
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->close()V

    goto :goto_1f

    .line 421
    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 12
    .parameter "intent"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 747
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v6, :cond_f

    .line 748
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 750
    :cond_f
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    .line 751
    const-string v6, "CMASViewer"

    const-string v7, "newIntent()"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASViewer;->setIntent(Landroid/content/Intent;)V

    .line 754
    const/4 v0, 0x0

    .line 757
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    const-string v6, "thread_id"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    .line 758
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 760
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 762
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_30

    .line 763
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 766
    :cond_30
    const/4 v2, 0x0

    .line 767
    .local v2, sameThread:Z
    iget-wide v6, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_b2

    .line 768
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-static {v6, v7, v8, v5}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 777
    :cond_3f
    :goto_3f
    const-string v6, "CMASViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNewIntent: data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", thread_id extra is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/mms/ui/CMASViewer;->threadId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v6, "CMASViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " new conversation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mConversation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    if-eqz v0, :cond_a3

    .line 783
    invoke-virtual {v0, v4}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 791
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v8}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_bb

    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bb

    move v2, v4

    .line 795
    :cond_a3
    :goto_a3
    if-eqz v2, :cond_bd

    .line 796
    const-string v4, "CMASViewer"

    const-string v5, "onNewIntent: same conversation"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v4, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v4}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 806
    :goto_b1
    return-void

    .line 770
    :cond_b2
    if-nez v2, :cond_3f

    .line 773
    iget-object v6, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v5, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_3f

    :cond_bb
    move v2, v5

    .line 791
    goto :goto_a3

    .line 800
    :cond_bd
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASViewer;->initialize(Landroid/os/Bundle;)V

    .line 801
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    goto :goto_b1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 581
    const-string v0, "CMASViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onOptionsItemSelected item selected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_3a

    .line 606
    :goto_23
    const/4 v0, 0x1

    return v0

    .line 589
    :pswitch_25
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->goToConversationList()V

    goto :goto_23

    .line 592
    :pswitch_29
    invoke-direct {p0}, Lcom/android/mms/ui/CMASViewer;->viewMoreInfoLayout()V

    goto :goto_23

    .line 599
    :pswitch_2d
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASViewer;->setVisibility(I)V

    goto :goto_23

    .line 583
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 844
    const-string v0, "CMASViewer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 564
    const-string v0, "CMASViewer"

    const-string v1, " onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationComposer;->isSplitModeActive()Z

    move-result v0

    if-nez v0, :cond_19

    .line 570
    const v0, 0x7f0902bd

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 571
    :cond_19
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mCMASMoreInfo:Lcom/android/mms/ui/CMASMoreInfoViewer;

    invoke-virtual {v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2d

    .line 572
    const/4 v0, 0x3

    const v1, 0x7f0902f5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 576
    :goto_2c
    return v3

    .line 574
    :cond_2d
    const/4 v0, 0x2

    const v1, 0x7f0902bf

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2c
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 833
    const-string v0, "CMASViewer"

    const-string v1, " onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void
.end method

.method public onStart()V
    .registers 3

    .prologue
    .line 499
    const-string v0, "CMASViewer"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->loadMessageContent()V

    .line 501
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASViewer;->setMessageFont()V

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 503
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 838
    const-string v0, "CMASViewer"

    const-string v1, " onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v0, p0, Lcom/android/mms/ui/CMASViewer;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 840
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 149
    const-string v0, "CMASViewer"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mActivity:Landroid/app/Activity;

    .line 152
    return-void
.end method

.method public setMessageFont()V
    .registers 7

    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 509
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 512
    .local v1, iFont:I
    const-string v3, "CMASViewer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Font size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_alert_type_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 515
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_data_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 516
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_date_time_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 517
    iget-object v3, p0, Lcom/android/mms/ui/CMASViewer;->cmas_msg_expiry_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 518
    return-void
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 158
    return-void
.end method

.method public setOnStateChangedListener(Lcom/android/mms/ui/OnEventListener;)V
    .registers 2
    .parameter "onEventListener"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/mms/ui/CMASViewer;->mOnStateChangeListener:Lcom/android/mms/ui/OnEventListener;

    .line 812
    return-void
.end method
