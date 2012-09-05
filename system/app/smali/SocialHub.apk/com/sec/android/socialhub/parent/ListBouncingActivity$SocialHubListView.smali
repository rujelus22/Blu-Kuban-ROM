.class public Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;
.super Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;
.source "ListBouncingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/parent/ListBouncingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocialHubListView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/parent/ListBouncingActivity;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-object p1, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    .line 168
    invoke-direct {p0, p2}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useFlickDown(Z)V

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->useFlickUp(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->onDisableFooter()V

    .line 172
    invoke-virtual {p0, v1}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setUseEmptyView(Z)V

    .line 173
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->setEmptyMessage(I)V

    .line 174
    return-void
.end method


# virtual methods
.method public onFlickUp()V
    .registers 2

    .prologue
    .line 179
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onFlickUp()V

    .line 180
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onFlickUp()V

    .line 181
    return-void
.end method

.method public onLoadMore()V
    .registers 2

    .prologue
    .line 187
    invoke-super {p0}, Lcom/sec/android/socialhub/parent/AbstractListBouncingListView;->onLoadMore()V

    .line 188
    iget-object v0, p0, Lcom/sec/android/socialhub/parent/ListBouncingActivity$SocialHubListView;->this$0:Lcom/sec/android/socialhub/parent/ListBouncingActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/parent/ListBouncingActivity;->onLoadMore()V

    .line 189
    return-void
.end method
