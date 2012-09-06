.class Lcom/estrongs/android/pop/view/fq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/ff;

.field private final synthetic b:Ljava/util/Vector;

.field private final synthetic c:Z

.field private final synthetic d:Z

.field private final synthetic e:Z


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/ff;Ljava/util/Vector;ZZZ)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/fq;->b:Ljava/util/Vector;

    iput-boolean p3, p0, Lcom/estrongs/android/pop/view/fq;->c:Z

    iput-boolean p4, p0, Lcom/estrongs/android/pop/view/fq;->d:Z

    iput-boolean p5, p0, Lcom/estrongs/android/pop/view/fq;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fq;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_12

    iget-boolean v0, p0, Lcom/estrongs/android/pop/view/fq;->e:Z

    if-nez v0, :cond_11

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/fq;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v3, v0}, Lcom/estrongs/android/pop/view/ff;->c(Lcom/estrongs/android/pop/view/ff;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-nez v3, :cond_26

    :cond_22
    :goto_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_26
    const-string v4, "/system/app/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8e

    iget-boolean v4, p0, Lcom/estrongs/android/pop/view/fq;->c:Z

    if-eqz v4, :cond_62

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/ff;->n(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/estrongs/android/pop/d/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_62
    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_68
    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "package:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_22

    :cond_8e
    iget-boolean v4, p0, Lcom/estrongs/android/pop/view/fq;->d:Z

    if-eqz v4, :cond_68

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/ff;->n(Lcom/estrongs/android/pop/view/ff;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/view/ff;->a(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-virtual {v5, v3}, Lcom/estrongs/android/pop/view/ff;->b(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, p0, Lcom/estrongs/android/pop/view/fq;->a:Lcom/estrongs/android/pop/view/ff;

    invoke-static {v5}, Lcom/estrongs/android/pop/view/ff;->h(Lcom/estrongs/android/pop/view/ff;)Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/estrongs/android/pop/d/p;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/p;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/estrongs/android/pop/d/p;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    goto :goto_68
.end method
