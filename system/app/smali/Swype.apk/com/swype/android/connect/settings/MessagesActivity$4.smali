.class Lcom/swype/android/connect/settings/MessagesActivity$4;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swype/android/connect/settings/MessagesActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/MessagesActivity;

.field final synthetic val$args:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/MessagesActivity;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/swype/android/connect/settings/MessagesActivity$4;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    iput-object p2, p0, Lcom/swype/android/connect/settings/MessagesActivity$4;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$4;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    iget-object v1, p0, Lcom/swype/android/connect/settings/MessagesActivity$4;->val$args:Landroid/os/Bundle;

    const-string v2, "messageId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/swype/android/connect/settings/MessagesActivity;->deleteMessage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/swype/android/connect/settings/MessagesActivity;->access$200(Lcom/swype/android/connect/settings/MessagesActivity;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$4;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    #calls: Lcom/swype/android/connect/settings/MessagesActivity;->loadMessages()V
    invoke-static {v0}, Lcom/swype/android/connect/settings/MessagesActivity;->access$000(Lcom/swype/android/connect/settings/MessagesActivity;)V

    .line 177
    return-void
.end method
