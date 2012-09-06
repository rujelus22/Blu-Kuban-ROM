.class Lcom/estrongs/android/pop/view/ai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ai;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ai;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->a(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ai;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->s(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/ai;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->t(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/ai;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->u(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
