.class Lcom/google/android/apps/googlevoice/LoginActivity$11;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 380
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 381
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->loginServiceAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$300(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 382
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 386
    :goto_16
    return-void

    .line 384
    :cond_17
    iget-object v1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    iget-object v2, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->password:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$800(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/android/apps/googlevoice/LoginActivity;->submit(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v0, v2}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$500(Lcom/google/android/apps/googlevoice/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$11;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->account:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$700(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27
.end method
