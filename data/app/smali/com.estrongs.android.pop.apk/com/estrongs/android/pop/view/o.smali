.class Lcom/estrongs/android/pop/view/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/n;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/n;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const v2, 0x7f09019d

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->f(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z

    move-result v0

    if-eqz v0, :cond_74

    sget-object v1, Lcom/estrongs/android/pop/fs/SFtpFileSystem;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SFTP("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/o;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_49
    if-eqz v1, :cond_62

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_62
    iget-object v1, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v1}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_74
    iget-object v0, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->g(Lcom/estrongs/android/pop/view/CreateFtpServerActivity;)Z

    move-result v0

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Webdav("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/o;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_49

    :cond_b6
    iget-object v0, p0, Lcom/estrongs/android/pop/view/o;->a:Lcom/estrongs/android/pop/view/n;

    invoke-static {v0}, Lcom/estrongs/android/pop/view/n;->a(Lcom/estrongs/android/pop/view/n;)Lcom/estrongs/android/pop/view/m;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/m;->a(Lcom/estrongs/android/pop/view/m;)Lcom/estrongs/android/pop/view/CreateFtpServerActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/CreateFtpServerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FTP("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/estrongs/android/pop/view/o;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/estrongs/android/pop/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49
.end method
