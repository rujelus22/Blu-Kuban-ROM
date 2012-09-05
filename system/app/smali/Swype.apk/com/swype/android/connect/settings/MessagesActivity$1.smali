.class Lcom/swype/android/connect/settings/MessagesActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MessagesActivity.java"


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
    .line 78
    iput-object p1, p0, Lcom/swype/android/connect/settings/MessagesActivity$1;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/swype/android/connect/settings/MessagesActivity$1;->this$0:Lcom/swype/android/connect/settings/MessagesActivity;

    #calls: Lcom/swype/android/connect/settings/MessagesActivity;->loadMessages()V
    invoke-static {v0}, Lcom/swype/android/connect/settings/MessagesActivity;->access$000(Lcom/swype/android/connect/settings/MessagesActivity;)V

    .line 82
    return-void
.end method
