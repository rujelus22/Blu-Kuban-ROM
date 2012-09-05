.class Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;
.super Ljava/lang/Object;
.source "FacebookAPI.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/social/api/FacebookAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/social/api/FacebookAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/social/api/FacebookAPI;)V
    .registers 2
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/social/api/FacebookAPI;Lcom/vlingo/client/social/api/FacebookAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;-><init>(Lcom/vlingo/client/social/api/FacebookAPI;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 5

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v2, 0x387

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V

    .line 151
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .registers 6
    .parameter "values"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    invoke-virtual {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->save()V

    .line 134
    iget-object v0, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v0}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v2, 0x385

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V

    .line 135
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v3, 0x386

    invoke-interface {v1, v2, v3, v0}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 139
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    #getter for: Lcom/vlingo/client/social/api/FacebookAPI;->callback:Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;
    invoke-static {v1}, Lcom/vlingo/client/social/api/FacebookAPI;->access$200(Lcom/vlingo/client/social/api/FacebookAPI;)Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/social/api/FacebookAPI$LoginDialogListener;->this$0:Lcom/vlingo/client/social/api/FacebookAPI;

    const/16 v3, 0x386

    invoke-interface {v1, v2, v3, v0}, Lcom/vlingo/client/social/api/FacebookAPI$FacebookAPICallback;->onFacebookAPILogin(Lcom/vlingo/client/social/api/FacebookAPI;ILandroid/os/Bundle;)V

    .line 141
    return-void
.end method
