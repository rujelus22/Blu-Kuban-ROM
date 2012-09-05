.class Lcom/vlingo/client/ui/YesNoDialogActivity$2;
.super Ljava/lang/Object;
.source "YesNoDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vlingo/client/ui/YesNoDialogActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

.field final synthetic val$noButtonAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/YesNoDialogActivity;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$2;->this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

    iput-object p2, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$2;->val$noButtonAction:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$2;->this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

    iget-object v1, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$2;->val$noButtonAction:Ljava/lang/String;

    #calls: Lcom/vlingo/client/ui/YesNoDialogActivity;->runAction(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/vlingo/client/ui/YesNoDialogActivity;->access$000(Lcom/vlingo/client/ui/YesNoDialogActivity;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$2;->this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/YesNoDialogActivity;->finish()V

    .line 74
    return-void
.end method
