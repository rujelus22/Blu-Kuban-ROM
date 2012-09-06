.class Lcom/estrongs/android/pop/app/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ar;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ar;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ax;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/ar;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/shortcut/ShortcutFormat;->targetLocation:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    const/high16 v2, 0x7f09

    invoke-static {v1, v2}, Lcom/estrongs/android/pop/app/ar;->a(Lcom/estrongs/android/pop/app/ar;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_21
    return-void

    :cond_22
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_39
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->d(Lcom/estrongs/android/pop/app/ar;)Lcom/estrongs/android/pop/app/ba;

    move-result-object v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/ar;->d(Lcom/estrongs/android/pop/app/ar;)Lcom/estrongs/android/pop/app/ba;

    move-result-object v1

    invoke-interface {v1, p3, p2, v0}, Lcom/estrongs/android/pop/app/ba;->a(ILandroid/view/View;Ljava/lang/String;)V
    :try_end_4a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_69

    goto :goto_21

    :catch_4b
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ax;->b:Landroid/app/Activity;

    const v1, 0x7f090051

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_21

    :cond_59
    :try_start_59
    iget-object v1, p0, Lcom/estrongs/android/pop/app/ax;->a:Lcom/estrongs/android/pop/app/ar;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/ax;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/estrongs/android/pop/view/a/l;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/app/ar;->a(Landroid/content/Intent;)V
    :try_end_68
    .catch Landroid/content/ActivityNotFoundException; {:try_start_59 .. :try_end_68} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_68} :catch_69

    goto :goto_21

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method
