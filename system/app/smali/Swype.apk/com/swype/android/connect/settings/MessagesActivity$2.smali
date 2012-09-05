.class Lcom/swype/android/connect/settings/MessagesActivity$2;
.super Ljava/lang/Object;
.source "MessagesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swype/android/connect/settings/MessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/swype/android/connect/settings/MessagesActivity;


# direct methods
.method constructor <init>(Lcom/swype/android/connect/settings/MessagesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/swype/android/connect/settings/MessagesActivity$2;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemClick() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 90
    if-nez p3, :cond_40

    .line 91
    const-string v0, "position 0"

    invoke-static {v0}, Lcom/swype/android/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$2;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    #getter for: Lcom/swype/android/connect/settings/MessagesActivity;->handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;
    invoke-static {v0}, Lcom/swype/android/connect/settings/MessagesActivity;->access$100(Lcom/swype/android/connect/settings/MessagesActivity;)Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/connect/settings/MessagesActivity$2;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    #getter for: Lcom/swype/android/connect/settings/MessagesActivity;->handler:Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;
    invoke-static {v1}, Lcom/swype/android/connect/settings/MessagesActivity;->access$100(Lcom/swype/android/connect/settings/MessagesActivity;)Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/connect/settings/MessagesActivity$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    :goto_3f
    return-void

    .line 96
    :cond_40
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 97
    const-string v1, "messageId"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 100
    const-string v3, "messageId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "subject"

    const-string v1, "subject"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "body"

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v1, "timestamp"

    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$2;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-virtual {v0, v4}, Lcom/swype/android/connect/settings/MessagesActivity;->removeDialog(I)V

    .line 105
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$2;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-virtual {v0, v4, v2}, Lcom/swype/android/connect/settings/MessagesActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_3f
.end method
