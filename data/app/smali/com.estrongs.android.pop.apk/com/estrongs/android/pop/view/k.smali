.class Lcom/estrongs/android/pop/view/k;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/k;->a:Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/ConfirmTaskCancelDialog;->a()Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method
