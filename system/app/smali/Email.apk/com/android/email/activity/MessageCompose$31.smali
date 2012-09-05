.class Lcom/android/email/activity/MessageCompose$31;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 9111
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 9116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9118
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/email/activity/FindLocationActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9120
    if-nez p2, :cond_37

    .line 9122
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->isEnabledGPS()Z
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$11900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 9124
    const-string v1, "com.android.email.intent.extra.is_from_map"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9126
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLocationMode:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$12000(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9128
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 9146
    :cond_2f
    :goto_2f
    return-void

    .line 9132
    :cond_30
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageCompose;->showDialog(I)V

    goto :goto_2f

    .line 9136
    :cond_37
    if-ne p2, v3, :cond_2f

    .line 9138
    const-string v1, "com.android.email.intent.extra.is_from_map"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9140
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$31;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mLocationMode:I
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$12000(Lcom/android/email/activity/MessageCompose;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/MessageCompose;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9142
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_2f
.end method
