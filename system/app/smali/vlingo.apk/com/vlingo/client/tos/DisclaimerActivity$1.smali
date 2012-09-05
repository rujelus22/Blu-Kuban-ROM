.class Lcom/vlingo/client/tos/DisclaimerActivity$1;
.super Ljava/lang/Object;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/tos/DisclaimerActivity;->switchToVlingoTOS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/tos/DisclaimerActivity;


# direct methods
.method constructor <init>(Lcom/vlingo/client/tos/DisclaimerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$1;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 240
    const/16 v1, 0x54

    if-eq p2, v1, :cond_9

    const/16 v1, 0x52

    if-ne p2, v1, :cond_a

    .line 253
    :cond_9
    :goto_9
    return v0

    .line 244
    :cond_a
    const/4 v1, 0x4

    if-ne p2, v1, :cond_29

    .line 245
    iget-object v1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$1;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vlingo/client/tos/DisclaimerActivity$1;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    const v3, 0x7f090429

    invoke-virtual {v2, v3}, Lcom/vlingo/client/tos/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 249
    iget-object v1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$1;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v1}, Lcom/vlingo/client/tos/DisclaimerActivity;->finish()V

    goto :goto_9

    .line 253
    :cond_29
    const/4 v0, 0x0

    goto :goto_9
.end method
