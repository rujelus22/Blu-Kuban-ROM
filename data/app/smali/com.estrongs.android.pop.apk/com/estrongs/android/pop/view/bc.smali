.class Lcom/estrongs/android/pop/view/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bc;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bc;->a:Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/ESFtpStopConfirmDialog;->finish()V

    return-void
.end method
