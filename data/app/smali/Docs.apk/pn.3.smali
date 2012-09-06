.class Lpn;
.super Landroid/os/Handler;
.source "OperationDialogFragment.java"


# instance fields
.field final synthetic a:Lpm;


# direct methods
.method constructor <init>(Lpm;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lpn;->a:Lpm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lpn;->a:Lpm;

    iget-object v0, v0, Lpm;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_26

    .line 54
    iget-object v0, p0, Lpn;->a:Lpm;

    invoke-static {v0}, Lpm;->a(Lpm;)Ljava/util/Map;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    if-eqz v0, :cond_27

    .line 56
    iget-object v2, p0, Lpn;->a:Lpm;

    iget-object v2, v2, Lpm;->a:Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 61
    :cond_26
    :goto_26
    return-void

    .line 58
    :cond_27
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_26
.end method
