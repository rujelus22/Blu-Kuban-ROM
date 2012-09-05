.class Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$3;
.super Ljava/lang/Object;
.source "SocialHubAccountListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->setOnClickLintener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubAccountListActivity;->onBackPressed()V

    .line 227
    return-void
.end method
