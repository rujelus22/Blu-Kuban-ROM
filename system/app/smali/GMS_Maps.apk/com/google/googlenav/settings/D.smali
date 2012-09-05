.class Lcom/google/googlenav/settings/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LegalActivity;

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/googlenav/settings/D;->b:[B

    iput-object p2, p0, Lcom/google/googlenav/settings/D;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[BLcom/google/googlenav/settings/C;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/settings/D;-><init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/settings/D;->b:[B

    if-nez v0, :cond_29

    const-string v0, "FileCompleteHandler"

    iget-object v1, p0, Lcom/google/googlenav/settings/D;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_28
    return-void

    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/settings/D;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_32} :catch_5d

    :goto_32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/ui/bw;->e()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/googlenav/android/WebViewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, p0, Lcom/google/googlenav/settings/D;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v3}, Lcom/google/googlenav/settings/LegalActivity;->b(Lcom/google/googlenav/settings/LegalActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "html_string"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;)V

    goto :goto_28

    :catch_5d
    move-exception v0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/settings/D;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_32
.end method
