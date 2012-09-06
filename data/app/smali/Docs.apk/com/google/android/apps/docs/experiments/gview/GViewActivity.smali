.class public Lcom/google/android/apps/docs/experiments/gview/GViewActivity;
.super Lcom/google/android/apps/docs/app/BaseActivity;
.source "GViewActivity.java"

# interfaces
.implements LFW;


# instance fields
.field private a:LFV;

.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LIL;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXP;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Landroid/accounts/Account;

.field private a:Landroid/webkit/WebView;

.field private a:Landroid/widget/TextView;

.field private a:Lcg;

.field private a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

.field public a:LdE;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseActivity;-><init>()V

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b:Landroid/os/Handler;

    .line 110
    return-void
.end method

.method private a(Lorg/apache/http/HttpEntity;)Lamh;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 342
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 343
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v0, v3

    .line 344
    if-gez v0, :cond_c

    .line 347
    :cond_c
    invoke-static {p1}, Lorg/apache/http/util/EntityUtils;->getContentCharSet(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 348
    if-nez v0, :cond_14

    .line 349
    const-string v0, "ISO-8859-1"

    .line 351
    :cond_14
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    const/16 v2, 0x1000

    :try_start_20
    new-array v2, v2, [C

    .line 356
    :cond_22
    invoke-virtual {v3, v2}, Ljava/io/Reader;->read([C)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_a4

    .line 357
    invoke-static {}, Lcg;->b()Z
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_b6

    move-result v5

    if-eqz v5, :cond_41

    .line 384
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_37

    move-object v0, v1

    .line 400
    :goto_36
    return-object v0

    .line 389
    :cond_37
    new-instance v0, LFA;

    invoke-direct {v0, p0, p1, v3}, LFA;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lorg/apache/http/HttpEntity;Ljava/io/Reader;)V

    invoke-virtual {v0}, LFA;->start()V

    move-object v0, v1

    goto :goto_36

    .line 363
    :cond_41
    :try_start_41
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 365
    const-string v5, "gviewApp.setDisplayData(\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 366
    if-ltz v5, :cond_22

    .line 369
    const-string v6, "\n"

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 370
    if-ltz v5, :cond_22

    .line 373
    const-string v6, "\n"

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 374
    if-lez v6, :cond_22

    .line 375
    add-int/lit8 v0, v6, -0x2

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v2, "\\\\75"

    const-string v4, "="

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    const-string v2, "\\\\075"

    const-string v4, "="

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 379
    const-string v2, "\\\\46"

    const-string v4, "&"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v2, Lamj;

    invoke-direct {v2}, Lamj;-><init>()V

    invoke-virtual {v2, v0}, Lamj;->a(Ljava/lang/String;)Lame;

    move-result-object v0

    check-cast v0, Lamh;
    :try_end_93
    .catchall {:try_start_41 .. :try_end_93} :catchall_b6

    .line 384
    invoke-static {}, Lcg;->b()Z

    move-result v2

    if-eqz v2, :cond_9b

    move-object v0, v1

    .line 385
    goto :goto_36

    .line 389
    :cond_9b
    new-instance v1, LFA;

    invoke-direct {v1, p0, p1, v3}, LFA;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lorg/apache/http/HttpEntity;Ljava/io/Reader;)V

    invoke-virtual {v1}, LFA;->start()V

    goto :goto_36

    .line 384
    :cond_a4
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_ac

    move-object v0, v1

    .line 385
    goto :goto_36

    .line 389
    :cond_ac
    new-instance v0, LFA;

    invoke-direct {v0, p0, p1, v3}, LFA;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lorg/apache/http/HttpEntity;Ljava/io/Reader;)V

    invoke-virtual {v0}, LFA;->start()V

    move-object v0, v1

    .line 400
    goto :goto_36

    .line 384
    :catchall_b6
    move-exception v0

    invoke-static {}, Lcg;->b()Z

    move-result v2

    if-eqz v2, :cond_c0

    move-object v0, v1

    .line 385
    goto/16 :goto_36

    .line 389
    :cond_c0
    new-instance v1, LFA;

    invoke-direct {v1, p0, p1, v3}, LFA;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lorg/apache/http/HttpEntity;Ljava/io/Reader;)V

    invoke-virtual {v1}, LFA;->start()V

    throw v0
.end method

.method private a(Landroid/accounts/AccountManager;)Landroid/accounts/Account;
    .registers 4
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v0

    .line 423
    array-length v1, v0

    if-lez v1, :cond_d

    .line 424
    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 426
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;)Landroid/util/Pair;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpGet;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, LJj;->a(LIL;Ljava/lang/String;Lorg/apache/http/client/methods/HttpRequestBase;ILjava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_b} :catch_26
    .catch LJk; {:try_start_0 .. :try_end_b} :catch_2f

    move-result-object v0

    .line 313
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_38

    .line 314
    new-instance v1, Ljava/io/IOException;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :catch_26
    move-exception v0

    .line 309
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid URI in redirection."

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 310
    :catch_2f
    move-exception v0

    .line 311
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Redirect error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 316
    :cond_38
    new-instance v1, Landroid/util/Pair;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/webkit/WebView;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Lcg;)Lcg;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    return-object p1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;)Lcom/google/android/apps/docs/experiments/gview/TouchImageView;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    return-object v0
.end method

.method private a(Lamh;Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "biUrl"

    invoke-virtual {p1, v1}, Lamh;->a(Ljava/lang/String;)Lame;

    move-result-object v1

    invoke-virtual {v1}, Lame;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 5
    .parameter

    .prologue
    .line 174
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 175
    const-string v1, "accountName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_14

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LHW;

    invoke-static {v2, v1}, LXl;->a(LHW;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    .line 179
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    if-nez v1, :cond_1e

    .line 180
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Landroid/accounts/AccountManager;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    .line 182
    :cond_1e
    const-string v0, "GViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching with account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 186
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    if-nez v0, :cond_5f

    const/4 v0, 0x1

    :goto_4f
    invoke-static {v0}, LafQ;->b(Z)V

    .line 187
    new-instance v0, LFz;

    invoke-direct {v0, p0, v1}, LFz;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V

    .line 205
    :goto_5e
    return-void

    .line 186
    :cond_5f
    const/4 v0, 0x0

    goto :goto_4f

    .line 203
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->finish()V

    goto :goto_5e
.end method

.method private a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 208
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 211
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 212
    const-string v1, "output"

    const-string v2, "json"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 213
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 218
    :try_start_1b
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lorg/apache/http/client/methods/HttpGet;)Landroid/util/Pair;

    move-result-object v1

    .line 219
    invoke-static {}, Lcg;->b()Z
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1b .. :try_end_22} :catch_8d
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1b .. :try_end_22} :catch_a6
    .catch LJi; {:try_start_1b .. :try_end_22} :catch_b2

    move-result v0

    if-eqz v0, :cond_2b

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    .line 259
    :goto_2a
    return-void

    .line 223
    :cond_2b
    :try_start_2b
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 224
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/apache/http/HttpResponse;

    .line 226
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 227
    const-string v2, ")]}\'\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 228
    const-string v0, "Server returned invalid response"

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2b .. :try_end_48} :catch_8d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_48} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2b .. :try_end_48} :catch_a6
    .catch LJi; {:try_start_2b .. :try_end_48} :catch_b2

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 231
    :cond_4e
    :try_start_4e
    const-string v2, ")]}\'\""

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Lamj;

    invoke-direct {v2}, Lamj;-><init>()V

    invoke-virtual {v2, v1}, Lamj;->a(Ljava/lang/String;)Lame;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Lame;->c()Z

    move-result v2

    if-eqz v2, :cond_80

    .line 236
    invoke-static {}, Lcg;->b()Z
    :try_end_6a
    .catchall {:try_start_4e .. :try_end_6a} :catchall_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4e .. :try_end_6a} :catch_8d
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_6a} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_4e .. :try_end_6a} :catch_a6
    .catch LJi; {:try_start_4e .. :try_end_6a} :catch_b2

    move-result v2

    if-eqz v2, :cond_73

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 240
    :cond_73
    :try_start_73
    invoke-virtual {v1}, Lame;->a()Lamh;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Ljava/lang/String;Lamh;)V
    :try_end_7a
    .catchall {:try_start_73 .. :try_end_7a} :catchall_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_73 .. :try_end_7a} :catch_8d
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_7a} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_73 .. :try_end_7a} :catch_a6
    .catch LJi; {:try_start_73 .. :try_end_7a} :catch_b2

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 243
    :cond_80
    :try_start_80
    invoke-virtual {v1}, Lame;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_80 .. :try_end_87} :catchall_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_80 .. :try_end_87} :catch_8d
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_87} :catch_98
    .catch Landroid/accounts/AuthenticatorException; {:try_start_80 .. :try_end_87} :catch_a6
    .catch LJi; {:try_start_80 .. :try_end_87} :catch_b2

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 247
    :catch_8d
    move-exception v0

    .line 248
    const/4 v0, 0x0

    :try_start_8f
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_be

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 249
    :catch_98
    move-exception v0

    .line 250
    const/4 v0, 0x0

    :try_start_9a
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V

    .line 251
    invoke-static {}, Lcg;->b()V
    :try_end_a0
    .catchall {:try_start_9a .. :try_end_a0} :catchall_be

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_2a

    .line 252
    :catch_a6
    move-exception v0

    .line 253
    const/4 v0, 0x0

    :try_start_a8
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_be

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_2a

    .line 254
    :catch_b2
    move-exception v0

    .line 255
    const/4 v0, 0x0

    :try_start_b4
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_be

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_2a

    :catchall_be
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 262
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 264
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 267
    :try_start_8
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lorg/apache/http/client/methods/HttpGet;)Landroid/util/Pair;

    move-result-object v1

    .line 268
    invoke-static {}, Lcg;->b()Z
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_79
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_f} :catch_4a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_f} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_8 .. :try_end_f} :catch_63
    .catch LJi; {:try_start_8 .. :try_end_f} :catch_6e

    move-result v0

    if-eqz v0, :cond_18

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    .line 299
    :goto_17
    return-void

    .line 272
    :cond_18
    :try_start_18
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 273
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lorg/apache/http/HttpResponse;

    .line 275
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lorg/apache/http/HttpEntity;)Lamh;

    move-result-object v1

    .line 277
    invoke-static {}, Lcg;->b()Z
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_79
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18 .. :try_end_2b} :catch_4a
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_18 .. :try_end_2b} :catch_63
    .catch LJi; {:try_start_18 .. :try_end_2b} :catch_6e

    move-result v2

    if-eqz v2, :cond_34

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 281
    :cond_34
    if-nez v1, :cond_41

    .line 282
    :try_start_36
    const-string v0, "Server returned invalid response"

    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_79
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_36 .. :try_end_3b} :catch_4a
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3b} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_36 .. :try_end_3b} :catch_63
    .catch LJi; {:try_start_36 .. :try_end_3b} :catch_6e

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 286
    :cond_41
    :try_start_41
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Ljava/lang/String;Lamh;)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_79
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_41 .. :try_end_44} :catch_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_41 .. :try_end_44} :catch_63
    .catch LJi; {:try_start_41 .. :try_end_44} :catch_6e

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 287
    :catch_4a
    move-exception v0

    .line 288
    const/4 v0, 0x0

    :try_start_4c
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_79

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 289
    :catch_55
    move-exception v0

    .line 290
    const/4 v0, 0x0

    :try_start_57
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcg;->b()V
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_79

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 292
    :catch_63
    move-exception v0

    .line 293
    const/4 v0, 0x0

    :try_start_65
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_79

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    .line 294
    :catch_6e
    move-exception v0

    .line 295
    const/4 v0, 0x0

    :try_start_70
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_79

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v0}, LIL;->b()V

    goto :goto_17

    :catchall_79
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    invoke-interface {v1}, LIL;->b()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lamh;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 320
    const-string v0, "numPages"

    invoke-virtual {p2, v0}, Lamh;->a(Ljava/lang/String;)Lame;

    move-result-object v0

    invoke-virtual {v0}, Lame;->b()I

    move-result v1

    .line 321
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Lamh;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 323
    new-instance v0, LFV;

    iget-object v3, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/accounts/Account;

    iget-object v6, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LIL;

    iget-object v7, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LXP;

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, LFV;-><init>(ILandroid/content/Context;Landroid/accounts/Account;LFW;Ljava/lang/String;LIL;LXP;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    .line 326
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->setHelper(LFT;)V

    .line 327
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 404
    const-string v0, "GViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->b:Landroid/os/Handler;

    new-instance v1, LFB;

    invoke-direct {v1, p0, p1}, LFB;-><init>(Lcom/google/android/apps/docs/experiments/gview/GViewActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 419
    return-void
.end method

.method private f()V
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    if-eqz v0, :cond_e

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 166
    :try_start_9
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcg;

    invoke-virtual {v0}, Lcg;->join()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f

    .line 171
    :cond_e
    :goto_e
    return-void

    .line 167
    :catch_f
    move-exception v0

    goto :goto_e
.end method


# virtual methods
.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 438
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 125
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->c()V

    .line 127
    sget v0, LcS;->imageview:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    .line 128
    sget v0, LcS;->title:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/widget/TextView;

    .line 129
    sget v0, LcS;->error_message:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Landroid/webkit/WebView;

    .line 130
    return-void
.end method

.method public e()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 432
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()V

    .line 433
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LdE;

    invoke-virtual {v1}, LdE;->a()V

    .line 117
    iget-object v1, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LdE;

    const-string v2, "/gviewOpen"

    invoke-virtual {v1, v2, v0}, LdE;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 118
    sget v1, LcU;->gview:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->setContentView(I)V

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LdE;

    invoke-virtual {v0}, LdE;->b()V

    .line 154
    invoke-direct {p0}, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->f()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    if-eqz v0, :cond_16

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    invoke-virtual {v0}, LFV;->b()V

    .line 158
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    .line 159
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onDestroy()V

    .line 160
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lck;

    invoke-interface {v0, p0}, Lck;->a(Landroid/content/Context;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LdE;

    const-string v1, "/gviewOpen"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->a()V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    if-eqz v0, :cond_1a

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LFV;

    invoke-virtual {v0}, LFV;->a()V

    .line 147
    :cond_1a
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onPause()V

    .line 148
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseActivity;->onResume()V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:Lcom/google/android/apps/docs/experiments/gview/TouchImageView;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/experiments/gview/TouchImageView;->b()V

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/docs/experiments/gview/GViewActivity;->a:LdE;

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 137
    return-void
.end method
