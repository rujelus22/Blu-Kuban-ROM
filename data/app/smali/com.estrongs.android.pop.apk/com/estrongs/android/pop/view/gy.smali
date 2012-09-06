.class Lcom/estrongs/android/pop/view/gy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/gx;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/gx;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/gy;->a:Lcom/estrongs/android/pop/view/gx;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/gy;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/gy;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gy;->a:Lcom/estrongs/android/pop/view/gx;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/gx;->a(Lcom/estrongs/android/pop/view/gx;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->i(Lcom/estrongs/android/pop/view/ff;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gy;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/pop/view/gy;->a:Lcom/estrongs/android/pop/view/gx;

    invoke-static {v2}, Lcom/estrongs/android/pop/view/gx;->a(Lcom/estrongs/android/pop/view/gx;)Lcom/estrongs/android/pop/view/ff;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/view/ff;->a(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gy;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2a
    return-void
.end method
