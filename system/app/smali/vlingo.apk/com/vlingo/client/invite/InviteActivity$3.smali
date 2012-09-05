.class Lcom/vlingo/client/invite/InviteActivity$3;
.super Ljava/lang/Object;
.source "InviteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/invite/InviteActivity;->onURL(ZLcom/vlingo/client/invite/InviteAdaptor$ContactInfo;Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/invite/InviteActivity;

.field final synthetic val$params:Ljava/util/Hashtable;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/vlingo/client/invite/InviteActivity;ZLjava/util/Hashtable;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/vlingo/client/invite/InviteActivity$3;->this$0:Lcom/vlingo/client/invite/InviteActivity;

    iput-boolean p2, p0, Lcom/vlingo/client/invite/InviteActivity$3;->val$success:Z

    iput-object p3, p0, Lcom/vlingo/client/invite/InviteActivity$3;->val$params:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 299
    invoke-static {}, Lcom/vlingo/client/invite/InviteActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, url:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/vlingo/client/invite/InviteActivity$3;->val$success:Z

    if-eqz v1, :cond_12

    .line 301
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity$3;->val$params:Ljava/util/Hashtable;

    const-string v2, "url"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #url:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 305
    .restart local v0       #url:Ljava/lang/String;
    :cond_12
    iget-object v1, p0, Lcom/vlingo/client/invite/InviteActivity$3;->this$0:Lcom/vlingo/client/invite/InviteActivity;

    #calls: Lcom/vlingo/client/invite/InviteActivity;->sendSMSForCurrentContact(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/vlingo/client/invite/InviteActivity;->access$300(Lcom/vlingo/client/invite/InviteActivity;Ljava/lang/String;)V

    .line 306
    return-void
.end method
