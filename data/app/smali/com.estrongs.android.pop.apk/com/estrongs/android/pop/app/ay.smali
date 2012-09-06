.class Lcom/estrongs/android/pop/app/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ar;Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ay;->a:Lcom/estrongs/android/pop/app/ar;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ay;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/ay;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ay;->b:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_19
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ay;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->d(Lcom/estrongs/android/pop/app/ar;)Lcom/estrongs/android/pop/app/ba;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ay;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->d(Lcom/estrongs/android/pop/app/ar;)Lcom/estrongs/android/pop/app/ba;

    move-result-object v1

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/ay;->c:Landroid/view/View;

    invoke-interface {v1, v2, v3, v0}, Lcom/estrongs/android/pop/app/ba;->a(ILandroid/view/View;Ljava/lang/String;)V

    :goto_2d
    return-void

    :cond_2e
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ay;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ay;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Intent;)V

    goto :goto_2d
.end method
