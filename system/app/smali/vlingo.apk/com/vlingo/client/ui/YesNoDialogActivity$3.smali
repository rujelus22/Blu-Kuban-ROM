.class Lcom/vlingo/client/ui/YesNoDialogActivity$3;
.super Ljava/lang/Object;
.source "YesNoDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/vlingo/client/ui/YesNoDialogActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$3;->this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vlingo/client/ui/YesNoDialogActivity$3;->this$0:Lcom/vlingo/client/ui/YesNoDialogActivity;

    invoke-virtual {v0}, Lcom/vlingo/client/ui/YesNoDialogActivity;->finish()V

    .line 80
    return-void
.end method
