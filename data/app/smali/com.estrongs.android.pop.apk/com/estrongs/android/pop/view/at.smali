.class Lcom/estrongs/android/pop/view/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->a(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    const v2, 0x7f09003d

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/at;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    const v2, 0x7f09003e

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9
.end method
