.class Lcom/estrongs/android/pop/ftp/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/ftp/n;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

.field private final synthetic b:I

.field private final synthetic c:Lcom/estrongs/android/pop/ftp/l;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/ftp/ESFtpShortcut;ILcom/estrongs/android/pop/ftp/l;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    iput p2, p0, Lcom/estrongs/android/pop/ftp/k;->b:I

    iput-object p3, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    const/4 v5, 0x1

    :try_start_1
    iget v0, p0, Lcom/estrongs/android/pop/ftp/k;->b:I

    if-ne v0, v5, :cond_57

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->Y()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v1}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->aa()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v2}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/estrongs/android/pop/c;->Z()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-static {v3}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/estrongs/android/pop/c;->X()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v4, v0, v3, v1, v2}, Lcom/estrongs/android/pop/ftp/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/estrongs/android/pop/ftp/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/l;->d()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    iget-object v0, v0, Lcom/estrongs/android/pop/ftp/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_4f

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    const-class v2, Lcom/estrongs/android/pop/ftp/ESFtpService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/ftp/ESFtpShortcut;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4f
    :goto_4f
    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    iget-object v1, p0, Lcom/estrongs/android/pop/ftp/k;->a:Lcom/estrongs/android/pop/ftp/ESFtpShortcut;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;)V

    :goto_56
    return-void

    :cond_57
    iget v0, p0, Lcom/estrongs/android/pop/ftp/k;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_67

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/l;->c()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_61} :catch_62

    goto :goto_4f

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    :cond_67
    :try_start_67
    iget v0, p0, Lcom/estrongs/android/pop/ftp/k;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/l;->e()Z

    goto :goto_4f

    :cond_72
    iget v0, p0, Lcom/estrongs/android/pop/ftp/k;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4f

    iget-object v0, p0, Lcom/estrongs/android/pop/ftp/k;->c:Lcom/estrongs/android/pop/ftp/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/ftp/l;->f()Z
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_7c} :catch_62

    goto :goto_4f
.end method
