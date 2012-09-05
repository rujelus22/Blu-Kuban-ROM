.class Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;
.super Ljava/lang/Object;
.source "FeedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/feedslist/FeedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandMenuHandler"
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 458
    const-string v0, "ExpandMenuHandler"

    iput-object v0, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->Tag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;Lcom/sec/android/socialhub/feedslist/FeedListAdapter$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;-><init>(Lcom/sec/android/socialhub/feedslist/FeedListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "expand_view"

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 462
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    iput-object v2, v4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->expand:Ljava/lang/Boolean;

    .line 464
    sget-boolean v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    if-eqz v2, :cond_1c

    .line 465
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->expand:Ljava/lang/Boolean;

    .line 467
    :cond_1c
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->Tag:Ljava/lang/String;

    const-string v4, "onClick()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLikeFavoriteClicked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-boolean v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->bIsClick:Z

    if-ne v2, v7, :cond_85

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/socialhub/feedslist/FeedView;

    .line 472
    .local v1, view:Lcom/sec/android/socialhub/feedslist/FeedView;
    const/4 v0, 0x0

    .line 474
    .local v0, bExpanded:Z
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 476
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const/4 v0, 0x1

    .line 484
    :goto_5f
    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    if-eqz v0, :cond_82

    move v2, v3

    :goto_64
    invoke-virtual {v4, p1, v2}, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->drawExpandMenu(Landroid/view/View;I)V

    .line 486
    sget-boolean v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    if-eqz v2, :cond_6d

    .line 487
    sput-boolean v3, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->isLikeFavoriteClicked:Z

    .line 493
    .end local v0           #bExpanded:Z
    .end local v1           #view:Lcom/sec/android/socialhub/feedslist/FeedView;
    :cond_6d
    :goto_6d
    return-void

    .line 481
    .restart local v0       #bExpanded:Z
    .restart local v1       #view:Lcom/sec/android/socialhub/feedslist/FeedView;
    :cond_6e
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-object v2, v2, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->this$0:Lcom/sec/android/socialhub/feedslist/FeedListAdapter;

    iget-object v4, v4, Lcom/sec/android/socialhub/feedslist/FeedListAdapter;->mOpenedExpandMenuList:Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/sec/android/socialhub/feedslist/FeedView;->data:Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;

    iget-object v5, v5, Lcom/sec/android/socialhub/feedslist/FeedActivityWrapper;->mstrActivityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5f

    .line 484
    :cond_82
    const/16 v2, 0x8

    goto :goto_64

    .line 491
    .end local v0           #bExpanded:Z
    .end local v1           #view:Lcom/sec/android/socialhub/feedslist/FeedView;
    :cond_85
    iget-object v2, p0, Lcom/sec/android/socialhub/feedslist/FeedListAdapter$ExpandMenuHandler;->Tag:Ljava/lang/String;

    const-string v3, "onClick()"

    const-string v4, "Now can not fire event."

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d
.end method
