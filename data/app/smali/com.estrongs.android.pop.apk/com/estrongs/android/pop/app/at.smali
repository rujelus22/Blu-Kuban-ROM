.class Lcom/estrongs/android/pop/app/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/at;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Gionee"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/at;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/at;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Context;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/at;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/at;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->c(Lcom/estrongs/android/pop/app/ar;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.estrongs.android.pop.app.shortcut"

    const-string v3, "pname"

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method
