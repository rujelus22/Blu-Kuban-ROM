.class Lcom/vlingo/client/social/SocialUpdateActivity$1;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/social/SocialUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/SocialUpdateActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/social/SocialUpdateActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$1;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$1;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->updateStatuses()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$100(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    .line 136
    return-void
.end method
