.class Lcom/google/android/apps/googlevoice/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 334
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$7;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 337
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 339
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$7;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->handler:Lcom/google/android/apps/googlevoice/activity/MessageSender;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$100(Lcom/google/android/apps/googlevoice/LoginActivity;)Lcom/google/android/apps/googlevoice/activity/MessageSender;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/apps/googlevoice/LoginActivity$7;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    #getter for: Lcom/google/android/apps/googlevoice/LoginActivity;->existingAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/LoginActivity;->access$200(Lcom/google/android/apps/googlevoice/LoginActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const/16 v0, 0x12c

    :goto_13
    invoke-interface {v1, v0}, Lcom/google/android/apps/googlevoice/activity/MessageSender;->sendEmptyMessage(I)Z

    .line 340
    return-void

    .line 339
    :cond_17
    const/4 v0, 0x1

    goto :goto_13
.end method
