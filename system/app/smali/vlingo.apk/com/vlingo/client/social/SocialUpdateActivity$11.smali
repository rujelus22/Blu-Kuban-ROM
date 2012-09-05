.class Lcom/vlingo/client/social/SocialUpdateActivity$11;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;->onUpdateComplete(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

.field final synthetic val$errMessage:Ljava/lang/String;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 808
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    iput p2, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->val$result:I

    iput-object p3, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->val$errMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 810
    iget-object v1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    const/4 v2, 0x4

    iget v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->val$result:I

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    iget-object v3, p0, Lcom/vlingo/client/social/SocialUpdateActivity$11;->val$errMessage:Ljava/lang/String;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->onNetworkStatusUpdateComplete(IZLjava/lang/String;)V
    invoke-static {v1, v2, v0, v3}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$1000(Lcom/vlingo/client/social/SocialUpdateActivity;IZLjava/lang/String;)V

    .line 811
    return-void

    .line 810
    :cond_e
    const/4 v0, 0x0

    goto :goto_8
.end method
