.class public abstract Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;
.super Ljava/lang/Object;
.source "AbstractServiceProvider.java"

# interfaces
.implements Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
.implements Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;


# instance fields
.field protected bOptionHandled:Z

.field protected mActivityID:Ljava/lang/String;

.field protected mActorID:Ljava/lang/String;

.field protected mAdapter:Landroid/widget/Adapter;

.field protected mApplicationContext:Landroid/content/Context;

.field protected mCommentType:Ljava/lang/String;

.field protected mContent:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field public mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

.field protected mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

.field protected mIspType:I

.field protected mMenu:Landroid/view/Menu;

.field private mProfileRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequest:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

.field public mSnsPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    .line 82
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mAdapter:Landroid/widget/Adapter;

    .line 84
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    .line 85
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    .line 106
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mMenu:Landroid/view/Menu;

    .line 116
    iput-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    .line 623
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$2;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$2;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    .line 835
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$4;

    invoke-direct {v0, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$4;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;)V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    .line 127
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    .line 128
    new-instance v0, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    invoke-direct {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    .line 129
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/Adapter;)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "adapter"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->changeContext(Landroid/content/Context;Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$ISnsEventCallback;)V

    .line 173
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;

    invoke-direct {v1, p0, p4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$1;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;Landroid/widget/Adapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->setOnExpandMenuClickListener(Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler$IExpandMenuClick;)V

    .line 181
    iput-object p2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    .line 182
    iput-object p4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mAdapter:Landroid/widget/Adapter;

    .line 184
    const v0, 0x7f0b008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 186
    .local v7, background:Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 190
    .local v3, wrapper:Lcom/sec/android/socialhub/feedslist/FeedView;
    const/4 v8, 0x0

    .line 191
    .local v8, queryBuilder:Lcom/sec/android/socialhub/SocialHubQueryBuilder;
    const/4 v6, 0x0

    .line 193
    .local v6, bSearchMode:Z
    instance-of v0, p4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_3c

    move-object v0, p4

    .line 195
    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getCurrentQueryBuilder()Lcom/sec/android/socialhub/SocialHubQueryBuilder;

    move-result-object v8

    move-object v0, p4

    .line 196
    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isSearchMode()Z

    move-result v6

    .line 199
    :cond_3c
    invoke-virtual {v3, v6, v8}, Lcom/sec/android/socialhub/feedslist/FeedView;->setSearchedMode(ZLcom/sec/android/socialhub/SocialHubQueryBuilder;)V

    .line 201
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->drawView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/widget/Adapter;Z)V

    .line 203
    invoke-virtual {p0, v3, p1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContextMenu:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 206
    return-void
.end method

.method public checkPossibleUploadPhotoVideo(Landroid/content/Context;Ljava/lang/StringBuffer;Ljava/io/File;Z)Z
    .registers 11
    .parameter "context"
    .parameter "errorStr"
    .parameter "file"
    .parameter "isPhoto"

    .prologue
    const/4 v2, 0x1

    .line 723
    const/4 v1, 0x1

    .line 725
    .local v1, ret:Z
    if-ne p4, v2, :cond_32

    .line 729
    const/16 v2, 0x10

    :try_start_6
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupport(I)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 731
    const/4 v1, 0x0

    .line 733
    if-eqz p2, :cond_2c

    .line 735
    const v2, 0x7f0800f6

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getStringResource(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2c
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_6 .. :try_end_2c} :catch_2d

    .line 762
    :cond_2c
    :goto_2c
    return v1

    .line 742
    :catch_2d
    move-exception v0

    .line 744
    .local v0, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_2c

    .line 751
    .end local v0           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_32
    const/16 v2, 0x11

    :try_start_34
    invoke-virtual {p0, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupport(I)Z
    :try_end_37
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_34 .. :try_end_37} :catch_3c

    move-result v2

    if-nez v2, :cond_2c

    .line 753
    const/4 v1, 0x0

    goto :goto_2c

    .line 756
    :catch_3c
    move-exception v0

    .line 758
    .restart local v0       #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v0}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto :goto_2c
.end method

.method public drawExpandMenu(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 603
    return-void
.end method

.method public drawView(Landroid/view/View;Landroid/content/Context;Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/widget/Adapter;Z)V
    .registers 12
    .parameter "view"
    .parameter "context"
    .parameter "wrapper"
    .parameter "adapter"
    .parameter "bListView"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->inflateMediaView(Landroid/content/Context;Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;)V

    .line 221
    invoke-virtual {p3, p2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawProfile(Landroid/content/Context;)V

    .line 222
    invoke-virtual {p3, p2, p5}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawName(Landroid/content/Context;Z)V

    .line 223
    invoke-virtual {p3, p2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawMood(Landroid/content/Context;)V

    .line 224
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getVideoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawMedia(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p3, p2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawAttacmentContent(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v3

    if-ne p5, v5, :cond_5c

    move v0, v1

    :goto_29
    invoke-virtual {p3, p2, v3, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawComment(Landroid/content/Context;II)V

    .line 227
    invoke-virtual {p3, p2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawRetweetedBy(Landroid/content/Context;)V

    .line 228
    invoke-virtual {p3, p2}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawMixiLink(Landroid/content/Context;)V

    .line 230
    if-ne p5, v5, :cond_60

    .line 232
    instance-of v0, p4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_4e

    move-object v0, p4

    .line 234
    check-cast v0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    check-cast p4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    .end local p4
    invoke-virtual {p4}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->getOpenedExpandMenuList()Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    :goto_4b
    invoke-virtual {v0, p1, v1}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->drawExpandMenu(Landroid/view/View;I)V

    .line 242
    :cond_4e
    :goto_4e
    if-ne p5, v5, :cond_70

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getFeedTextClickListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    :goto_58
    invoke-virtual {p3, p2, v0}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawContent(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    .line 244
    return-void

    .restart local p4
    :cond_5c
    move v0, v2

    .line 226
    goto :goto_29

    .end local p4
    :cond_5e
    move v1, v2

    .line 234
    goto :goto_4b

    .line 239
    .restart local p4
    :cond_60
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getFavoriteListener()Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p3, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v1, v1, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedView;->drawExtendLikeButtonEx(Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    goto :goto_4e

    .line 242
    .end local p4
    :cond_70
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public getAddAccountPage(Landroid/content/Context;Z)Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    .registers 11
    .parameter "context"
    .parameter "is_first"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupportedSnsAccount(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 817
    new-instance v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;

    const/4 v3, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getStringResource(I)I

    move-result v5

    invoke-virtual {p0, v4}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getImageResource(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v7

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;-><init>(ZZZIIII)V

    .line 828
    .local v0, item:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    iput-object v1, v0, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;->mPage:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem$IAccountPage;

    .line 832
    .end local v0           #item:Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity$AddAccountItem;
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getApiConstrain()Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContsrain:Lcom/sec/android/socialhub/sns/adapter/sp/constrain/APIConstrain;

    return-object v0
.end method

.method public getDrawable(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 672
    const/4 v0, -0x1

    .line 674
    .local v0, resource:I
    sparse-switch p1, :sswitch_data_16

    .line 693
    :goto_4
    return v0

    .line 677
    :sswitch_5
    const v0, 0x7f02004f

    .line 678
    goto :goto_4

    .line 681
    :sswitch_9
    const v0, 0x7f020050

    .line 682
    goto :goto_4

    .line 685
    :sswitch_d
    const v0, 0x7f02004a

    .line 686
    goto :goto_4

    .line 689
    :sswitch_11
    const v0, 0x7f0200f5

    goto :goto_4

    .line 674
    nop

    :sswitch_data_16
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_9
        0x3 -> :sswitch_d
        0x14 -> :sswitch_11
    .end sparse-switch
.end method

.method public getErrorString(Landroid/content/Context;IIILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "context"
    .parameter "httpStatus"
    .parameter "errCode"
    .parameter "subErrorCode"
    .parameter "reason"

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, str:Ljava/lang/String;
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/socialhub/sns/SnsErrorCode;->getErrorString(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method

.method public abstract getImageResource(I)I
.end method

.method public abstract getLimitation(I)I
.end method

.method public getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;
    .registers 3
    .parameter "context"

    .prologue
    .line 166
    invoke-static {p1}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/socialhub/sns/SocialHubSnsServiceManager;->getConnector()Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSnsAction()Ljava/lang/String;
.end method

.method public getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mSnsEventHandler:Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    return-object v0
.end method

.method public abstract getSpType()I
.end method

.method public getString(I)I
    .registers 3
    .parameter "type"

    .prologue
    .line 633
    const/4 v0, -0x1

    .line 635
    .local v0, resource:I
    packed-switch p1, :pswitch_data_20

    .line 667
    :goto_4
    return v0

    .line 638
    :pswitch_5
    const v0, 0x7f080058

    .line 640
    goto :goto_4

    .line 643
    :pswitch_9
    const v0, 0x7f080057

    .line 644
    goto :goto_4

    .line 647
    :pswitch_d
    const/high16 v0, 0x7f08

    .line 648
    goto :goto_4

    .line 651
    :pswitch_10
    const v0, 0x7f0800ca

    .line 652
    goto :goto_4

    .line 655
    :pswitch_14
    const v0, 0x7f080081

    .line 656
    goto :goto_4

    .line 659
    :pswitch_18
    const v0, 0x7f0800cb

    .line 660
    goto :goto_4

    .line 663
    :pswitch_1c
    const v0, 0x7f0800cc

    goto :goto_4

    .line 635
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_10
        :pswitch_14
        :pswitch_18
        :pswitch_1c
    .end packed-switch
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "type"
    .parameter "str"

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getStringResource(I)I
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    .line 134
    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mAdapter:Landroid/widget/Adapter;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public invokeHandleSnsCallback(Landroid/content/Context;IZ)V
    .registers 6
    .parameter "context"
    .parameter "reqType"
    .parameter "bSuccess"

    .prologue
    .line 699
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_f

    move-object v0, p1

    .line 701
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider$3;-><init>(Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 711
    :cond_f
    return-void
.end method

.method public isLikeOrFavorite(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    .line 607
    if-eqz p1, :cond_c

    const-string v0, "done"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 609
    const/4 v0, 0x1

    .line 613
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public abstract isSupport(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
        }
    .end annotation
.end method

.method public isSupportedSnsAccount(Landroid/content/Context;I)Z
    .registers 12
    .parameter "context"
    .parameter "spType"

    .prologue
    const/4 v5, 0x0

    .line 774
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 776
    .local v1, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, -0x1

    .line 778
    .local v3, index_registered_sp:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    array-length v6, v6

    if-ge v2, v6, :cond_17

    .line 780
    sget-object v6, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP_TYPE_ID:[I

    aget v6, v6, v2

    if-ne v6, p2, :cond_24

    .line 782
    move v3, v2

    .line 787
    :cond_17
    const/4 v6, -0x1

    if-ne v3, v6, :cond_27

    .line 789
    const-string v6, "AbstractServiceProvider"

    const-string v7, "isSupportedSnsAccount()"

    const-string v8, "index_registered_sp is -1"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_23
    :goto_23
    return v5

    .line 778
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 793
    :cond_27
    const-string v6, "com.sec.android.app.snsaccountACNT_TYPE.account_type"

    const-string v7, "ACNT_TYPE"

    sget-object v8, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->REGISTERED_ISP:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 795
    .local v4, sp_accountType:Ljava/lang/String;
    if-nez v4, :cond_43

    .line 797
    const-string v6, "AbstractServiceProvider"

    const-string v7, "isSupportedSnsAccount()"

    const-string v8, "sp_accountType is null"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 801
    :cond_43
    const/4 v2, 0x0

    :goto_44
    array-length v6, v1

    if-ge v2, v6, :cond_23

    .line 803
    aget-object v6, v1, v2

    iget-object v0, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 805
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 807
    const/4 v5, 0x1

    goto :goto_23

    .line 801
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_44
.end method

.method public onAction(Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;Landroid/content/Context;Landroid/content/Intent;I)I
    .registers 15
    .parameter "service"
    .parameter "context"
    .parameter "intent"
    .parameter "type"

    .prologue
    .line 561
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 562
    .local v8, bundle:Landroid/os/Bundle;
    const/4 v9, -0x1

    .line 564
    .local v9, ret:I
    packed-switch p4, :pswitch_data_54

    :goto_8
    move v0, v9

    .line 587
    :goto_9
    return v0

    .line 568
    :pswitch_a
    const-string v0, "taISpType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    .line 569
    const-string v0, "taActivityId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActivityID:Ljava/lang/String;

    .line 570
    const-string v0, "taActorId"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    .line 571
    const-string v0, "taCommnetType"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    .line 572
    const-string v0, "taContent"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    .line 574
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getLimitation(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 576
    const/4 v0, -0x1

    goto :goto_9

    .line 579
    :cond_41
    iget v2, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mIspType:I

    iget-object v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActivityID:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mActorID:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mCommentType:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContent:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentPost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    goto :goto_8

    .line 564
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_a
    .end packed-switch
.end method

.method public onCreateOptionMenu(Landroid/content/Context;Landroid/view/MenuInflater;Landroid/view/Menu;I)V
    .registers 6
    .parameter "context"
    .parameter "inflator"
    .parameter "menu"
    .parameter "what"

    .prologue
    .line 282
    const v0, 0x7f0a0005

    invoke-virtual {p2, v0, p3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 283
    iput-object p3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mMenu:Landroid/view/Menu;

    .line 284
    return-void
.end method

.method public onGetDeepLink(I)V
    .registers 13
    .parameter "req_id"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 369
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onGetDeepLink()"

    const-string v2, "attached image deep link"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v7, 0x0

    .line 375
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_16
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DeepLink;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 378
    if-eqz v7, :cond_7c

    .line 380
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 381
    const-string v0, "url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, deepLinkUrl:Ljava/lang/String;
    const-string v0, "target_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, attachPhotoTargetId:Ljava/lang/String;
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onGetDeepLink()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "target = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    invoke-virtual {v0, v6, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->putDeeplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 388
    .local v10, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7c
    .catchall {:try_start_16 .. :try_end_7c} :catchall_125
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_7c} :catch_f5

    .line 397
    .end local v6           #attachPhotoTargetId:Ljava/lang/String;
    .end local v8           #deepLinkUrl:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_7c
    if-eqz v7, :cond_82

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    const/4 v7, 0x0

    .line 403
    :cond_82
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 409
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onGetDeepLink()"

    const-string v2, "profile image deep link"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v7, 0x0

    .line 413
    .restart local v7       #cursor:Landroid/database/Cursor;
    :try_start_a1
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sns/db/SnsDB$DeepLink;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 416
    if-eqz v7, :cond_e5

    .line 418
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 419
    const-string v0, "url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 420
    .restart local v8       #deepLinkUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v8}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->putDeeplink(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 422
    .restart local v10       #intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_e5
    .catchall {:try_start_a1 .. :try_end_e5} :catchall_165
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e5} :catch_136

    .line 431
    .end local v8           #deepLinkUrl:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_e5
    if-eqz v7, :cond_eb

    .line 433
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v7, 0x0

    .line 436
    :cond_eb
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_f4
    :goto_f4
    return-void

    .line 391
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_f5
    move-exception v9

    .line 393
    .local v9, e:Ljava/lang/Exception;
    :try_start_f6
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onGetDeepLink()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_114
    .catchall {:try_start_f6 .. :try_end_114} :catchall_125

    .line 397
    if-eqz v7, :cond_11a

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    const/4 v7, 0x0

    .line 403
    :cond_11a
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8b

    .line 397
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_125
    move-exception v0

    if-eqz v7, :cond_12c

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 400
    const/4 v7, 0x0

    .line 403
    :cond_12c
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0

    .line 425
    :catch_136
    move-exception v9

    .line 427
    .restart local v9       #e:Ljava/lang/Exception;
    :try_start_137
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onGetDeepLink()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catchall {:try_start_137 .. :try_end_155} :catchall_165

    .line 431
    if-eqz v7, :cond_15b

    .line 433
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v7, 0x0

    .line 436
    :cond_15b
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f4

    .line 431
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_165
    move-exception v0

    if-eqz v7, :cond_16c

    .line 433
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 434
    const/4 v7, 0x0

    .line 436
    :cond_16c
    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method protected onHandleSnsCallback(Landroid/content/Context;IZ)V
    .registers 4
    .parameter "context"
    .parameter "reqType"
    .parameter "bSuccess"

    .prologue
    .line 717
    return-void
.end method

.method public onOptionItemSelected(Landroid/content/Context;Landroid/view/MenuItem;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 289
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    .line 294
    sparse-switch v0, :sswitch_data_36

    .line 319
    :cond_b
    :goto_b
    return-void

    .line 297
    :sswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 299
    iput-boolean v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    goto :goto_b

    .line 304
    :sswitch_19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    const-string v1, "taSelectedSP"

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 308
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    iput-boolean v3, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->bOptionHandled:Z

    goto :goto_b

    .line 294
    nop

    :sswitch_data_36
    .sparse-switch
        0x7f0b0133 -> :sswitch_19
        0x7f0b013f -> :sswitch_c
    .end sparse-switch
.end method

.method public onPreCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 11
    .parameter "menu"
    .parameter "view"
    .parameter "arg2"

    .prologue
    .line 619
    const v0, 0x7f0b008b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 620
    .local v6, layout:Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/socialhub/SocialHubBaseContextMenu;->onCreateContextMenu(Landroid/content/Context;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Lcom/sec/android/socialhub/SocialHubBaseContextMenu$IContextMenuInfo;I)V

    .line 621
    return-void
.end method

.method public requestCommentFavoritePost(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 14
    .parameter "info"

    .prologue
    .line 443
    const/4 v11, -0x1

    .line 445
    .local v11, isSuccess:I
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v2, v2, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    iget-object v3, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    iget-object v5, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrCommentType:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v8, v8, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrIsFavorite:Ljava/lang/String;

    iget-object v9, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v9, v9, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrRecommendable:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->commentFavoritePost(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v11

    .line 459
    if-gez v11, :cond_3b

    .line 461
    const-string v0, "AbstractServiceProvider"

    const-string v1, "onClick()"

    const-string v2, "isSuccess is -1!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_3b
    return-void
.end method

.method public requestMediaUrl(Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;)V
    .registers 19
    .parameter "info"
    .parameter "data"

    .prologue
    .line 512
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    monitor-enter v15

    .line 514
    :try_start_5
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_5a

    move-result-object v14

    .line 518
    .local v14, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/4 v1, 0x0

    :try_start_e
    invoke-interface {v14, v1}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 520
    const-string v1, "AbstractServiceProvider"

    const-string v2, "onClick()"

    const-string v3, "photodeeplink is not supported"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_5a
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_e .. :try_end_1d} :catch_1f

    .line 521
    :try_start_1d
    monitor-exit v15

    .line 557
    :goto_1e
    return-void

    .line 524
    :catch_1f
    move-exception v12

    .line 526
    .local v12, e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v12}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    .line 531
    .end local v12           #e1:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mAdapter:Landroid/widget/Adapter;

    move-object/from16 v0, p2

    iget v4, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->serviceProviderDeepLinkGet(Landroid/content/Context;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 546
    .local v13, req_id:I
    if-gez v13, :cond_5d

    .line 548
    const-string v1, "AbstractServiceProvider"

    const-string v2, "onClick()"

    const-string v3, "photo deeplink req_id is -1!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    monitor-exit v15

    goto :goto_1e

    .line 556
    .end local v13           #req_id:I
    .end local v14           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :catchall_5a
    move-exception v1

    monitor-exit v15
    :try_end_5c
    .catchall {:try_start_1d .. :try_end_5c} :catchall_5a

    throw v1

    .line 553
    .restart local v13       #req_id:I
    .restart local v14       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_5d
    :try_start_5d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mRequest:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/socialhub/feedslist/FeedMediaInfo;->getMediaWapPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    monitor-exit v15
    :try_end_6d
    .catchall {:try_start_5d .. :try_end_6d} :catchall_5a

    goto :goto_1e
.end method

.method public requestProfileUrl(Lcom/sec/android/socialhub/feedslist/FeedView;)V
    .registers 18
    .parameter "wrapper"

    .prologue
    .line 467
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    monitor-enter v14

    .line 469
    const/4 v13, -0x1

    .line 473
    .local v13, req_id:I
    const/4 v1, 0x0

    :try_start_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->isSupport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6f

    .line 476
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getServiceConnector(Landroid/content/Context;)Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mAdapter:Landroid/widget/Adapter;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->miSpType:I

    const-string v5, "profile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v7, v7, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "@"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v15, v15, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v1 .. v11}, Lcom/sec/android/socialhub/sns/AbstractSocialHubSnsConnector;->serviceProviderDeepLinkGet(Landroid/content/Context;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 491
    if-gez v13, :cond_5e

    .line 493
    const-string v1, "AbstractServiceProvider"

    const-string v2, "onClick()"

    const-string v3, "deeplink req_id is -1!!!!!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_71
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7 .. :try_end_5c} :catch_74

    .line 494
    :try_start_5c
    monitor-exit v14
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_71

    .line 508
    :goto_5d
    return-void

    .line 498
    :cond_5e
    :try_start_5e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mProfileRequest:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v3, v3, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_71
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_5e .. :try_end_6f} :catch_74

    .line 507
    :cond_6f
    :goto_6f
    :try_start_6f
    monitor-exit v14

    goto :goto_5d

    :catchall_71
    move-exception v1

    monitor-exit v14
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_71

    throw v1

    .line 503
    :catch_74
    move-exception v12

    .line 505
    .local v12, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    :try_start_75
    invoke-virtual {v12}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_71

    goto :goto_6f
.end method

.method public setExpandResource(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/content/res/Resources;)V
    .registers 4
    .parameter "view"
    .parameter "resource"

    .prologue
    .line 593
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 594
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->changeResource(Lcom/sec/android/socialhub/feedslist/FeedView;)V

    .line 595
    return-void
.end method

.method protected setListener(Lcom/sec/android/socialhub/feedslist/FeedView;Landroid/view/View;)V
    .registers 7
    .parameter "view"
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    .line 248
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickExpand:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 252
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 254
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    if-eqz v0, :cond_bf

    .line 256
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getFeedClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    :goto_44
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getReplyClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getReplyClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandMessage:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getMessageClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutProfile:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getActorPhotoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandLike:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getFavoriteListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandComment:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSnsEventHandler()Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/sns/adapter/sp/listener/CommonSnsEventHandler;->getCommentListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mExpandReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 276
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mExpandLayout:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper;->mQuickReply:Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedExpandViewWrapper$ExpandButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 278
    return-void

    .line 260
    :cond_bf
    iget-object v0, p1, Lcom/sec/android/socialhub/feedslist/FeedView;->view:Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;

    iget-object v0, v0, Lcom/sec/android/socialhub/feedslist/FeedViewWrapper;->mLayoutAllArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const-string v0, "AbstractServiceProvider"

    const-string v1, "setListner()"

    const-string v2, "activityID is null!!! or commentable is false"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_44
.end method

.method public updateNotification(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 161
    const-string v0, "AbstractServiceProvider"

    const-string v1, "updateNotification()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification update. spType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public updateNotificationCount()V
    .registers 11

    .prologue
    .line 323
    const/4 v6, 0x0

    .line 325
    .local v6, count:I
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_68

    .line 327
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0b0138

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 329
    .local v9, notification:Landroid/view/MenuItem;
    if-eqz v9, :cond_68

    .line 331
    const/4 v7, 0x0

    .line 334
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_11
    sget-object v0, Lcom/sec/android/app/sns/db/SnsDB$Notification;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->getSpType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 335
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "name=\'notice\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 337
    if-eqz v7, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_41

    .line 339
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 342
    :cond_41
    if-lez v6, :cond_83

    .line 343
    const-string v0, "%1$s(%2$d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/socialhub/sns/adapter/sp/AbstractServiceProvider;->mApplicationContext:Landroid/content/Context;

    const v5, 0x7f0800cd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    :try_end_62
    .catchall {:try_start_11 .. :try_end_62} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_62} :catch_8a

    .line 353
    :goto_62
    if-eqz v7, :cond_68

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 v7, 0x0

    .line 362
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #notification:Landroid/view/MenuItem;
    :cond_68
    :goto_68
    const-string v0, "AbstractServiceProvider"

    const-string v2, "updateNotificationCount()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void

    .line 345
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #notification:Landroid/view/MenuItem;
    :cond_83
    const v0, 0x7f0800cd

    :try_start_86
    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_62

    .line 347
    .end local v1           #uri:Landroid/net/Uri;
    :catch_8a
    move-exception v8

    .line 349
    .local v8, e:Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_95

    .line 353
    if-eqz v7, :cond_68

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 v7, 0x0

    goto :goto_68

    .line 353
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_95
    move-exception v0

    if-eqz v7, :cond_9c

    .line 355
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 356
    const/4 v7, 0x0

    :cond_9c
    throw v0
.end method
