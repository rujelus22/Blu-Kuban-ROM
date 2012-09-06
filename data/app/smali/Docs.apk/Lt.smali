.class public LLt;
.super Ldd;
.source "OpenUrlActivity.java"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LkG;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/String;LkG;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iput-object p2, p0, LLt;->a:Ljava/lang/String;

    iput-object p3, p0, LLt;->b:Ljava/lang/String;

    iput-object p4, p0, LLt;->a:LkG;

    iput-object p5, p0, LLt;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ldd;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 5

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v0, v0, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LRU;

    iget-object v1, p0, LLt;->a:Ljava/lang/String;

    iget-object v2, p0, LLt;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, LRU;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v0

    .line 239
    const-string v1, "OpenUrlActivity"

    const-string v2, "Got Entry!"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LTF;

    iget-object v2, p0, LLt;->a:LkG;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V

    .line 241
    invoke-virtual {v0}, LSs;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LkU;->h:LkU;

    invoke-virtual {v2}, LkU;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 244
    iget-object v1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a:LHW;

    iget-object v2, p0, LLt;->a:LkG;

    invoke-interface {v1, v2}, LHW;->a(LkG;)V

    .line 249
    :cond_3a
    iget-object v1, p0, LLt;->a:Landroid/content/Intent;

    const-string v2, "resourceId"

    invoke-virtual {v0}, LSs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v0, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LLu;

    invoke-direct {v1, p0}, LLu;-><init>(LLt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_53
    .catch LarL; {:try_start_0 .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_53} :catch_67
    .catch Lasn; {:try_start_0 .. :try_end_53} :catch_7a
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_53} :catch_8d

    .line 275
    :goto_53
    return-void

    .line 256
    :catch_54
    move-exception v0

    .line 257
    iget-object v1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v2, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcY;->open_url_authentication_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 258
    :catch_67
    move-exception v0

    .line 259
    iget-object v1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v2, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcY;->open_url_io_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 260
    :catch_7a
    move-exception v0

    .line 264
    iget-object v1, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    iget-object v2, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, LcY;->open_url_authentication_error:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 265
    :catch_8d
    move-exception v0

    .line 266
    const-string v1, "OpenUrlActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception processing entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, LLt;->a:Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-static {v0}, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;->a(Lcom/google/android/apps/docs/openurl/OpenUrlActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LLv;

    invoke-direct {v1, p0}, LLv;-><init>(LLt;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_53
.end method
