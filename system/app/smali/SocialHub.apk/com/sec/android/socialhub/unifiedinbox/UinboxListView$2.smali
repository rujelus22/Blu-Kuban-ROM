.class Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;
.super Ljava/lang/Object;
.source "UinboxListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/UinboxGatewayLayout;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/socialhub/activity/SocialHubAddAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->mSocialHubMain:Lcom/sec/android/socialhub/activity/SocialHubMainActivity;
    invoke-static {v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;->access$000(Lcom/sec/android/socialhub/unifiedinbox/UinboxListView;)Lcom/sec/android/socialhub/activity/SocialHubMainActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/socialhub/activity/SocialHubMainActivity;->startActivity(Landroid/content/Intent;)V

    .line 141
    return-void
.end method
