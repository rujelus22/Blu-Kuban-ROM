.class public Lcom/android/mms/ui/CMASMoreInfoViewer;
.super Landroid/widget/FrameLayout;
.source "CMASMoreInfoViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;
    }
.end annotation


# instance fields
.field private cmas_certainity_tv:Landroid/widget/TextView;

.field private cmas_certainity_value_tv:Landroid/widget/TextView;

.field private cmas_cmae_category_tv:Landroid/widget/TextView;

.field private cmas_cmae_category_value_tv:Landroid/widget/TextView;

.field private cmas_msg_id_tv:Landroid/widget/TextView;

.field private cmas_msg_id_value_tv:Landroid/widget/TextView;

.field private cmas_response_type_tv:Landroid/widget/TextView;

.field private cmas_response_type_value_tv:Landroid/widget/TextView;

.field private cmas_service_category_broadcast_tv:Landroid/widget/TextView;

.field private cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

.field private cmas_severity_tv:Landroid/widget/TextView;

.field private cmas_severity_value_tv:Landroid/widget/TextView;

.field private cmas_title_value_tv:Landroid/widget/TextView;

.field private cmas_urgency_tv:Landroid/widget/TextView;

.field private cmas_urgency_value_tv:Landroid/widget/TextView;

.field private mActivity:Landroid/app/Activity;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 15
    .parameter "bundle"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 411
    const/4 v1, 0x1

    .line 413
    .local v1, createThread:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 414
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android.intent.action.SENDTO"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    .line 415
    const/4 v1, 0x0

    .line 419
    :cond_28
    if-eqz p1, :cond_44

    .line 421
    const-string v6, "CMASMoreInfo"

    const-string v7, "initActivityState"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const-string v6, "recipients"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, recipients:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v9}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    .line 451
    .end local v3           #recipients:Ljava/lang/String;
    :goto_43
    return-void

    .line 431
    :cond_44
    const-string v6, "thread_id"

    invoke-virtual {p2, v6, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 432
    .local v4, threadId:J
    cmp-long v6, v4, v10

    if-lez v6, :cond_57

    .line 433
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5, v8}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_43

    .line 435
    :cond_57
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 437
    .local v2, intentData:Landroid/net/Uri;
    if-eqz v2, :cond_66

    .line 439
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v8, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_43

    .line 442
    :cond_66
    const-string v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 444
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v9}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v6, v7, v8, v9}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_43

    .line 447
    :cond_7f
    iget-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_43
.end method

.method private CMASMoreInfoInitResourceRefs()V
    .registers 3

    .prologue
    .line 127
    const-string v0, "CMASMoreInfo"

    const-string v1, "initResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f080025

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f080028

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f08002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f08002e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f080034

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_tv:Landroid/widget/TextView;

    .line 139
    const v0, 0x7f080026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_tv:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f080029

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_tv:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f08002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_tv:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_tv:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f080032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_tv:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_tv:Landroid/widget/TextView;

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    const v1, 0x7f0902c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 147
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 602
    const-string v0, "CMASMoreInfo"

    const-string v1, "createIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_33

    .line 607
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 608
    const-string v2, "CMASMoreInfo"

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

    .line 609
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 611
    :cond_33
    return-object v0
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mIntent:Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter "intent"

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    const-string v0, "CMASMoreInfo"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mIntent:Landroid/content/Intent;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 120
    monitor-exit p0

    return-void

    .line 118
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startMsgListQuery()V
    .registers 10

    .prologue
    const/16 v4, 0x2537

    .line 493
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 495
    .local v3, conversationUri:Landroid/net/Uri;
    const-string v0, "CMASMoreInfo"

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

    .line 497
    if-nez v3, :cond_23

    .line 513
    :goto_22
    return-void

    .line 502
    :cond_23
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->cancelOperation(I)V

    .line 505
    :try_start_28
    const-string v0, "CMASMoreInfo"

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

    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    const/16 v1, 0x2537

    const/4 v2, 0x0

    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_4d} :catch_4e

    goto :goto_22

    .line 510
    :catch_4e
    move-exception v8

    .line 511
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_22
.end method


# virtual methods
.method public CMASMoreInfoInitialize(Landroid/os/Bundle;)V
    .registers 8
    .parameter "savedInstanceState"

    .prologue
    .line 392
    const-string v3, "CMASMoreInfo"

    const-string v4, "intialize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 397
    const-string v3, "CMASMoreInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize: savedInstanceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mConversation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 403
    .local v1, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4d

    .line 405
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 407
    :cond_4d
    return-void
.end method

.method public CMASMoreInfoLoadMessageContent()V
    .registers 3

    .prologue
    .line 463
    const-string v0, "CMASMoreInfo"

    const-string v1, "loadMessageContent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->startMsgListQuery()V

    .line 465
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setMessageFont()V

    .line 466
    return-void
.end method

.method public CMASMoreInfoSetData(Landroid/database/Cursor;)V
    .registers 16
    .parameter "cursor"

    .prologue
    .line 181
    const-string v11, "CMASMoreInfo"

    const-string v12, "CMASMoreInfoSetData"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v11, 0x1b

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 184
    .local v4, msgId:J
    const/16 v11, 0x16

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 185
    .local v0, msgCategory:I
    const/16 v11, 0x15

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 186
    .local v7, msgServiceCategory:I
    const/16 v11, 0x17

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 187
    .local v6, msgResponseType:I
    const/16 v11, 0x18

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 188
    .local v8, msgSeverity:I
    const/16 v11, 0x19

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 189
    .local v10, msgUrgency:I
    const/16 v11, 0x1a

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 193
    .local v1, msgCertainity:I
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, msgText:Ljava/lang/String;
    const/4 v11, 0x5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 196
    .local v2, msgDate:J
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "msgId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "string format"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "msgText "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgServiceCategory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgCategory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgDate "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgResponseType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgSeverity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgUrgency "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " msgCertainity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_title_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902c0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 203
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    packed-switch v7, :pswitch_data_258

    .line 230
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 231
    const-string v11, "CMASMoreInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " Wrong msgServiceCategory for CMAS with msgServiceCategory = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_f3
    packed-switch v0, :pswitch_data_266

    .line 289
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 294
    :goto_fe
    packed-switch v6, :pswitch_data_282

    .line 330
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 335
    :goto_109
    packed-switch v8, :pswitch_data_296

    .line 346
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 351
    :goto_114
    packed-switch v10, :pswitch_data_29e

    .line 363
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 369
    :goto_11f
    packed-switch v1, :pswitch_data_2a6

    .line 380
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 387
    :goto_12a
    return-void

    .line 210
    :pswitch_12b
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902c8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 214
    :pswitch_134
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902c9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 218
    :pswitch_13d
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902ca

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 222
    :pswitch_146
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902cb

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 226
    :pswitch_14f
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902cc

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f3

    .line 239
    :pswitch_158
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902ce

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_fe

    .line 243
    :pswitch_161
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902cf

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_fe

    .line 247
    :pswitch_16a
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_fe

    .line 252
    :pswitch_173
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_fe

    .line 256
    :pswitch_17c
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 260
    :pswitch_186
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 264
    :pswitch_190
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 268
    :pswitch_19a
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d5

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 272
    :pswitch_1a4
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 276
    :pswitch_1ae
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 281
    :pswitch_1b8
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 285
    :pswitch_1c2
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902d9

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_fe

    .line 297
    :pswitch_1cc
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902da

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 301
    :pswitch_1d6
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902db

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 305
    :pswitch_1e0
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902dc

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 309
    :pswitch_1ea
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902dd

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 313
    :pswitch_1f4
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902de

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 317
    :pswitch_1fe
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902df

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 322
    :pswitch_208
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 326
    :pswitch_212
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_109

    .line 338
    :pswitch_21c
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e2

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_114

    .line 342
    :pswitch_226
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e3

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_114

    .line 354
    :pswitch_230
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_11f

    .line 359
    :pswitch_23a
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e5

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_11f

    .line 372
    :pswitch_244
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e6

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12a

    .line 376
    :pswitch_24e
    iget-object v11, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    const v12, 0x7f0902e7

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_12a

    .line 207
    :pswitch_data_258
    .packed-switch 0x1000
        :pswitch_12b
        :pswitch_134
        :pswitch_13d
        :pswitch_146
        :pswitch_14f
    .end packed-switch

    .line 236
    :pswitch_data_266
    .packed-switch 0x0
        :pswitch_158
        :pswitch_161
        :pswitch_16a
        :pswitch_173
        :pswitch_17c
        :pswitch_186
        :pswitch_190
        :pswitch_19a
        :pswitch_1a4
        :pswitch_1ae
        :pswitch_1b8
        :pswitch_1c2
    .end packed-switch

    .line 294
    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_1cc
        :pswitch_1d6
        :pswitch_1e0
        :pswitch_1ea
        :pswitch_1f4
        :pswitch_1fe
        :pswitch_208
        :pswitch_212
    .end packed-switch

    .line 335
    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_21c
        :pswitch_226
    .end packed-switch

    .line 351
    :pswitch_data_29e
    .packed-switch 0x0
        :pswitch_230
        :pswitch_23a
    .end packed-switch

    .line 369
    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_244
        :pswitch_24e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .registers 5
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    .line 108
    const-string v0, "CMASMoreInfo"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0, p2}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setIntent(Landroid/content/Intent;)V

    .line 110
    invoke-direct {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitResourceRefs()V

    .line 111
    iget-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    new-instance v0, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/CMASMoreInfoViewer;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mBackgroundQueryHandler:Lcom/android/mms/ui/CMASMoreInfoViewer$BackgroundQueryHandler;

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 14
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 542
    const-string v8, "CMASMoreInfo"

    const-string v9, "onNewIntent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-direct {p0, p1}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setIntent(Landroid/content/Intent;)V

    .line 544
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/CMASMoreInfoViewer;->setVisibility(I)V

    .line 545
    const/4 v0, 0x0

    .line 548
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    const-string v8, "thread_id"

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 549
    .local v4, threadId:J
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 552
    .local v1, intentUri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 554
    .local v3, scheme:Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 555
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 559
    :cond_23
    const/4 v2, 0x0

    .line 560
    .local v2, sameThread:Z
    cmp-long v8, v4, v10

    if-lez v8, :cond_9a

    .line 561
    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v8, v4, v5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 570
    :cond_2e
    :goto_2e
    const-string v8, "CMASMoreInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onNewIntent: data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", thread_id extra is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v8, "CMASMoreInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " new conversation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mConversation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    if-eqz v0, :cond_90

    .line 576
    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 584
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_a3

    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v8}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a3

    move v2, v6

    .line 588
    :cond_90
    :goto_90
    if-eqz v2, :cond_a5

    .line 589
    const-string v6, "CMASMoreInfo"

    const-string v7, "onNewIntent: same conversation"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_99
    return-void

    .line 563
    :cond_9a
    if-nez v2, :cond_2e

    .line 566
    iget-object v8, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v8, v1, v7, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto :goto_2e

    :cond_a3
    move v2, v7

    .line 584
    goto :goto_90

    .line 591
    :cond_a5
    const-string v6, "CMASMoreInfo"

    const-string v7, "else onNEwIntent"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoInitialize(Landroid/os/Bundle;)V

    .line 593
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoLoadMessageContent()V

    goto :goto_99
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 531
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 457
    const-string v0, "CMASMoreInfo"

    const-string v1, " onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASMoreInfoViewer;->CMASMoreInfoLoadMessageContent()V

    .line 459
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 4
    .parameter "activity"

    .prologue
    .line 100
    const-string v0, "CMASMoreInfo"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mActivity:Landroid/app/Activity;

    .line 103
    return-void
.end method

.method public setMessageFont()V
    .registers 7

    .prologue
    .line 469
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 470
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "#cmas#pref##font#size"

    const-string v4, "14"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, bTemp:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 473
    .local v1, iFont:I
    const-string v3, "CMASMoreInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Font size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 476
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 477
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 479
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 480
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 481
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_value_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_msg_id_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 484
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_cmae_category_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 485
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_service_category_broadcast_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 486
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_response_type_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 487
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_severity_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 488
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_urgency_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 489
    iget-object v3, p0, Lcom/android/mms/ui/CMASMoreInfoViewer;->cmas_certainity_tv:Landroid/widget/TextView;

    int-to-float v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 490
    return-void
.end method
