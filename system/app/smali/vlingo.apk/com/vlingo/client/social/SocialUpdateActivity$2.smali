.class Lcom/vlingo/client/social/SocialUpdateActivity$2;
.super Ljava/lang/Object;
.source "SocialUpdateActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 139
    iput-object p1, p0, Lcom/vlingo/client/social/SocialUpdateActivity$2;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 145
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 147
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$2;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->updateCharCounter()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$200(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    .line 142
    iget-object v0, p0, Lcom/vlingo/client/social/SocialUpdateActivity$2;->this$0:Lcom/vlingo/client/social/SocialUpdateActivity;

    #calls: Lcom/vlingo/client/social/SocialUpdateActivity;->updateShareButtonAndNetworksLabel()V
    invoke-static {v0}, Lcom/vlingo/client/social/SocialUpdateActivity;->access$300(Lcom/vlingo/client/social/SocialUpdateActivity;)V

    .line 143
    return-void
.end method
