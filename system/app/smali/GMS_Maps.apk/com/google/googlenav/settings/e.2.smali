.class Lcom/google/googlenav/settings/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LegalActivity;

.field private b:[B

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p3, p0, Lcom/google/googlenav/settings/E;->b:[B

    .line 176
    iput-object p2, p0, Lcom/google/googlenav/settings/E;->c:Ljava/lang/String;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[BLcom/google/googlenav/settings/D;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/settings/E;-><init>(Lcom/google/googlenav/settings/LegalActivity;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LegalActivity;->a(Lcom/google/googlenav/settings/LegalActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 187
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/settings/E;->b:[B

    if-nez v0, :cond_29

    .line 188
    const-string v0, "FileCompleteHandler"

    iget-object v1, p0, Lcom/google/googlenav/settings/E;->c:Ljava/lang/String;

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_28
    return-void

    .line 194
    :cond_29
    :try_start_29
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/settings/E;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_32
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_29 .. :try_end_32} :catch_65

    .line 203
    :goto_32
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/googlenav/android/WebViewActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "title"

    iget-object v3, p0, Lcom/google/googlenav/settings/E;->a:Lcom/google/googlenav/settings/LegalActivity;

    invoke-static {v3}, Lcom/google/googlenav/settings/LegalActivity;->b(Lcom/google/googlenav/settings/LegalActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "html_string"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "base_url"

    iget-object v2, p0, Lcom/google/googlenav/settings/E;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 209
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/android/Q;->a(Landroid/content/Intent;)V

    goto :goto_28

    .line 195
    :catch_65
    move-exception v0

    .line 198
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/googlenav/settings/E;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_32
.end method
