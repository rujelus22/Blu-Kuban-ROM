.class Lcom/vlingo/client/tos/DisclaimerActivity$2;
.super Ljava/lang/Object;
.source "DisclaimerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 224
    iput-object p1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$2;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity$2;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vlingo/client/tos/DisclaimerActivity$2;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    const v2, 0x7f090429

    invoke-virtual {v1, v2}, Lcom/vlingo/client/tos/DisclaimerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 231
    iget-object v0, p0, Lcom/vlingo/client/tos/DisclaimerActivity$2;->this$0:Lcom/vlingo/client/tos/DisclaimerActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/tos/DisclaimerActivity;->finish()V

    .line 232
    return-void
.end method
