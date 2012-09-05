.class Lcom/sec/android/socialhub/view/SearchBaseLayout$1;
.super Landroid/os/Handler;
.source "SearchBaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/view/SearchBaseLayout;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/view/SearchBaseLayout;)V
    .registers 2
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 100
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_26

    .line 113
    :cond_8
    :goto_8
    return-void

    .line 104
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, v1, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    if-eqz v1, :cond_8

    .line 105
    iget-object v2, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/socialhub/view/SearchBaseLayout$1;->this$0:Lcom/sec/android/socialhub/view/SearchBaseLayout;

    iget-object v3, v3, Lcom/sec/android/socialhub/view/SearchBaseLayout;->mSearchBar:Lcom/sec/android/socialhub/view/SocialHubSearchBar;

    invoke-virtual {v3}, Lcom/sec/android/socialhub/view/SocialHubSearchBar;->getSearchModel()Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/socialhub/view/SearchBaseLayout;->onSearchText(Ljava/lang/String;Lcom/sec/android/socialhub/view/SearchBaseLayout$SearchModel;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_21

    goto :goto_8

    .line 109
    :catch_21
    move-exception v0

    .line 111
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 100
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
