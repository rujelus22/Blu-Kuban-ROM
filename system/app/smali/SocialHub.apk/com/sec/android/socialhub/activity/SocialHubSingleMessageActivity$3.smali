.class Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$3;
.super Ljava/lang/Object;
.source "SocialHubSingleMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;

    invoke-virtual {v0, p1}, Lcom/sec/android/socialhub/activity/SocialHubSingleMessageActivity;->onDeleteCheckedItem(Landroid/view/View;)V

    .line 488
    return-void
.end method
