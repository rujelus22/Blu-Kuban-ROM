.class Lcom/estrongs/android/pop/view/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/au;)Lcom/estrongs/android/pop/view/CreateSmbServerActivity;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->e(Lcom/estrongs/android/pop/view/CreateSmbServerActivity;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    const v2, 0x7f09003b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/CreateSmbServerActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/estrongs/android/pop/view/au;->a:Lcom/estrongs/android/pop/view/CreateSmbServerActivity;

    const v2, 0x7f090059

    const v3, 0x7f09005a

    invoke-static {v1, v2, v3}, Lcom/estrongs/android/pop/view/mh;->a(Landroid/content/Context;II)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/pop/view/av;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/view/av;-><init>(Lcom/estrongs/android/pop/view/au;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1b
.end method
