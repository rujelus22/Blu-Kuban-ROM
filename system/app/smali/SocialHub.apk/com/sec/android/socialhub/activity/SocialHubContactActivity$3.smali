.class Lcom/sec/android/socialhub/activity/SocialHubContactActivity$3;
.super Ljava/lang/Object;
.source "SocialHubContactActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/activity/SocialHubContactActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/socialhub/activity/SocialHubContactActivity$3;->this$0:Lcom/sec/android/socialhub/activity/SocialHubContactActivity;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/activity/SocialHubContactActivity;->returnRecipients()V

    .line 208
    return-void
.end method
