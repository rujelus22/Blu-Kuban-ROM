.class Lcom/estrongs/android/pop/view/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/p;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/p;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/q;->a:Lcom/estrongs/android/pop/view/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/q;->a:Lcom/estrongs/android/pop/view/p;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/p;->a(Lcom/estrongs/android/pop/view/p;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->a(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
