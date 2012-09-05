.class Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;
.super Ljava/lang/Object;
.source "CommonSnsEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 531
    iput-object p1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter "view"

    .prologue
    .line 536
    const/4 v11, 0x0

    .line 538
    .local v11, href:Ljava/lang/String;
    const/4 v8, 0x0

    .line 542
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 543
    .local v7, activity_id:Ljava/lang/String;
    const/4 v10, 0x0

    .line 545
    .local v10, feed:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;
    :try_start_4
    instance-of v1, p1, Lcom/sec/android/socialhub/view/HubFrameLayout;

    if-eqz v1, :cond_47

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-object v10, v0

    .line 555
    :goto_14
    iget-object v7, v10, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    .line 557
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sns/db/SnsDB$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "href"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 565
    if-eqz v8, :cond_40

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3d} :catch_73

    move-result v1

    if-nez v1, :cond_50

    .line 584
    :cond_40
    if-eqz v8, :cond_46

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    const/4 v8, 0x0

    .line 590
    :cond_46
    :goto_46
    return-void

    .line 551
    :cond_47
    :try_start_47
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    move-object v10, v0

    goto :goto_14

    .line 568
    :cond_50
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 570
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 572
    if-eqz v11, :cond_6c

    .line 574
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 575
    .local v12, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$11;->this$0:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6c
    .catchall {:try_start_47 .. :try_end_6c} :catchall_7e
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_6c} :catch_73

    .line 584
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6c
    if-eqz v8, :cond_46

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    const/4 v8, 0x0

    goto :goto_46

    .line 578
    :catch_73
    move-exception v9

    .line 580
    .local v9, e:Ljava/lang/Exception;
    :try_start_74
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_7e

    .line 584
    if-eqz v8, :cond_46

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    const/4 v8, 0x0

    goto :goto_46

    .line 584
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_7e
    move-exception v1

    if-eqz v8, :cond_85

    .line 586
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 587
    const/4 v8, 0x0

    :cond_85
    throw v1
.end method
