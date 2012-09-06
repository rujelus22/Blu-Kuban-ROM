.class LrD;
.super Ljava/lang/Object;
.source "UrlLoadingWebViewClient.java"

# interfaces
.implements LnQ;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LrB;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(LrB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, LrD;->a:LrB;

    iput-object p2, p0, LrD;->a:Ljava/lang/String;

    iput-object p3, p0, LrD;->b:Ljava/lang/String;

    iput-object p4, p0, LrD;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)I
    .registers 9
    .parameter

    .prologue
    .line 436
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 437
    iget-object v2, p0, LrD;->a:LrB;

    invoke-static {v2}, LrB;->a(LrB;)LIG;

    move-result-object v2

    iget-object v3, p0, LrD;->a:Ljava/lang/String;

    iget-object v4, p0, LrD;->b:Ljava/lang/String;

    iget-object v5, p0, LrD;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, LIG;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    const-string v3, "UrlLoadingWebViewClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Secure url received time taken "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, LrD;->a:LrB;

    iget-object v1, p0, LrD;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LrB;->a(LrB;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_3d} :catch_3f
    .catch LJi; {:try_start_0 .. :try_end_3d} :catch_4d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_5b

    .line 456
    :goto_3d
    const/4 v0, -0x1

    return v0

    .line 442
    :catch_3f
    move-exception v0

    .line 445
    const-string v1, "UrlLoadingWebViewClient"

    const-string v2, "Error getting credential"

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    iget-object v1, p0, LrD;->a:LrB;

    invoke-static {v1, v0}, LrB;->a(LrB;Ljava/lang/Exception;)V

    goto :goto_3d

    .line 447
    :catch_4d
    move-exception v0

    .line 450
    const-string v1, "UrlLoadingWebViewClient"

    const-string v2, "Error getting credential"

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    iget-object v1, p0, LrD;->a:LrB;

    invoke-static {v1, v0}, LrB;->a(LrB;Ljava/lang/Exception;)V

    goto :goto_3d

    .line 452
    :catch_5b
    move-exception v0

    .line 453
    const-string v1, "UrlLoadingWebViewClient"

    const-string v2, "Error getting credential"

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    iget-object v1, p0, LrD;->a:LrB;

    invoke-static {v1, v0}, LrB;->a(LrB;Ljava/lang/Exception;)V

    goto :goto_3d
.end method

.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 428
    iget-object v0, p0, LrD;->a:LrB;

    invoke-static {v0}, LrB;->a(LrB;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->getting_authentication_information:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LrD;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LZN;)V
    .registers 2
    .parameter

    .prologue
    .line 467
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 461
    const/4 v0, 0x0

    return v0
.end method
