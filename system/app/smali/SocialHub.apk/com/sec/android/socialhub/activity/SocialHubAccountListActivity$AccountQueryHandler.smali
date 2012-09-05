.class final Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "SocialHubAccountListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccountQueryHandler"
.end annotation


# instance fields
.field private CursorCloseCount:I

.field private CursorOpenCount:I

.field private mAccountList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Landroid/widget/SimpleCursorAdapter;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V
    .registers 5
    .parameter "arg0"
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 567
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 554
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 556
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 557
    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAccountList:Ljava/lang/ref/WeakReference;

    .line 562
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorOpenCount:I

    .line 563
    iput v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    .line 568
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAccountList:Ljava/lang/ref/WeakReference;

    .line 569
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 573
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 575
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_30

    .line 577
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 578
    iput-object v1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 583
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    .line 584
    const-string v0, "UnifiedInbox"

    const-string v1, "onDestroy()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor is Close! Cursor Close count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :cond_30
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 612
    if-nez p3, :cond_23

    .line 614
    const-string v0, "UnifiedInbox"

    const-string v3, "onQuerycomplete()"

    const-string v4, "Cursor is null! so, restart query"

    invoke-static {v0, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "app!=\'1_Messaging\'"

    const-string v7, "_order, account_id asc"

    move-object v0, p0

    move-object v4, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v0, "AccountQueryHandler"

    const-string v1, "onQuerycomplete()"

    const-string v2, "cursor is null"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :goto_22
    return-void

    .line 623
    :cond_23
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_50

    .line 625
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 626
    iput-object v2, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 631
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    .line 632
    const-string v0, "UnifiedInbox"

    const-string v1, "onDestroy()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor is Close! Cursor Close count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorCloseCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    :cond_50
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 636
    .local v10, size:I
    const-string v0, "AccountQueryHandler"

    const-string v1, "onQuerycomplete()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cursor count is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :try_start_6e
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAccountList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    .line 642
    .local v8, activity:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;
    if-nez v10, :cond_82

    .line 644
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateViewmode(I)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_7c} :catch_7d

    goto :goto_22

    .line 664
    .end local v8           #activity:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;
    :catch_7d
    move-exception v9

    .line 666
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 648
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v8       #activity:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;
    :cond_82
    const/4 v0, 0x1

    :try_start_83
    invoke-virtual {v8, v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->updateViewmode(I)V

    .line 650
    const-string v0, "AccountQueryHandler"

    const-string v1, "onQuerycomplete()"

    const-string v2, "query end"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iput-object p3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mCursor:Landroid/database/Cursor;

    .line 654
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    if-eqz v0, :cond_9b

    .line 656
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_22

    .line 660
    :cond_9b
    const-string v0, "AccountQueryHandler"

    const-string v1, "onQueryComplete()"

    const-string v2, "adpater is null!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a4} :catch_7d

    goto/16 :goto_22
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .registers 2
    .parameter "adapter"

    .prologue
    .line 605
    check-cast p1, Landroid/widget/SimpleCursorAdapter;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 606
    return-void
.end method

.method public startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 597
    invoke-super/range {p0 .. p7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorOpenCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorOpenCount:I

    .line 600
    const-string v0, "UnifiedInbox"

    const-string v1, "startQuery()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cursor is Open! Cursor Open count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$AccountQueryHandler;->CursorOpenCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    return-void
.end method
