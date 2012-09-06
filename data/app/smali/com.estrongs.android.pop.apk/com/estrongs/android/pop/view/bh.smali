.class Lcom/estrongs/android/pop/view/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/bd;

.field private final synthetic b:Landroid/text/ClipboardManager;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/bd;Landroid/text/ClipboardManager;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/bd;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/bh;->b:Landroid/text/ClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->b:Landroid/text/ClipboardManager;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/bd;

    iget-object v1, v1, Lcom/estrongs/android/pop/view/bd;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090218

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/bh;->a:Lcom/estrongs/android/pop/view/bd;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/bd;->a(Lcom/estrongs/android/pop/view/bd;)Landroid/app/Activity;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "MD5"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
