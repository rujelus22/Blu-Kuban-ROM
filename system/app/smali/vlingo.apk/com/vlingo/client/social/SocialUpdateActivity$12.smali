.class Lcom/vlingo/client/social/SocialUpdateActivity$12;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;->onCheckinResult(ZLjava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 825
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$12;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    iput-boolean p2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$12;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 827
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$12;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$12;->val$success:Z

    const/4 v3, 0x0

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->onNetworkStatusUpdateComplete(IZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$1000(Lcom/vlingo/client/social/SocialUpdateActivity;IZLjava/lang/String;)V

    .line 828
    return-void
.end method
