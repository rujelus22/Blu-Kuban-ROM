.class Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$5;
.super Ljava/lang/Object;
.source "SocialHubStatusUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity$5;->this$0:Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubStatusUpdateActivity;->onBackPressed()V

    .line 1010
    return-void
.end method
