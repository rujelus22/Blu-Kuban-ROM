.class public LrB;
.super Landroid/webkit/WebViewClient;
.source "UrlLoadingWebViewClient.java"


# static fields
.field static final synthetic a:Z


# instance fields
.field private final a:LIG;

.field private final a:LLz;

.field private final a:Landroid/content/Context;

.field private final a:Landroid/content/SharedPreferences;

.field private final a:Landroid/os/Handler;

.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/regex/Pattern;

.field private final a:Lrz;

.field private b:Ljava/lang/String;

.field private final b:Ljava/util/regex/Pattern;

.field private b:Z

.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;

.field private final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, LrB;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, LrB;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Lrz;Ljava/lang/String;LFX;Ljava/lang/Class;LLz;Landroid/content/SharedPreferences;LIG;Landroid/os/Handler;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrz;",
            "Ljava/lang/String;",
            "LFX;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "LLz;",
            "Landroid/content/SharedPreferences;",
            "LIG;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, LrB;->b:Z

    .line 137
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-static {p6}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p7}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {p8}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p9}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iput-object p1, p0, LrB;->a:Landroid/content/Context;

    .line 146
    iput-object p2, p0, LrB;->a:Lrz;

    .line 147
    const-string v0, "whitelistUrl"

    const-string v1, "https://accounts\\.google(\\.co(m?))?(\\.\\w{2})?/.*"

    invoke-interface {p4, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LrB;->a:Ljava/util/regex/Pattern;

    .line 149
    const-string v0, "whitelistPath"

    const-string v1, "(/TokenAuth|/accounts(?:/.+)?)"

    invoke-interface {p4, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LrB;->b:Ljava/util/regex/Pattern;

    .line 151
    const-string v0, "homePath"

    const-string v1, "/(m?|(fe/m)?)"

    invoke-interface {p4, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LrB;->c:Ljava/util/regex/Pattern;

    .line 153
    const-string v0, "gaiaLoginPathPattern"

    const-string v1, ".*/ServiceLogin$"

    invoke-interface {p4, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LrB;->d:Ljava/util/regex/Pattern;

    .line 155
    const-string v0, "gaiaLogoutPathPattern"

    const-string v1, ".*/logout$"

    invoke-interface {p4, v0, v1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, LrB;->e:Ljava/util/regex/Pattern;

    .line 157
    iput-object p3, p0, LrB;->a:Ljava/lang/String;

    .line 158
    iput-object p5, p0, LrB;->a:Ljava/lang/Class;

    .line 159
    iput-object p6, p0, LrB;->a:LLz;

    .line 160
    iput-object p7, p0, LrB;->a:Landroid/content/SharedPreferences;

    .line 161
    iput-object p8, p0, LrB;->a:LIG;

    .line 162
    iput-object p9, p0, LrB;->a:Landroid/os/Handler;

    .line 163
    invoke-direct {p0}, LrB;->c()V

    .line 164
    return-void
.end method

.method static synthetic a(LrB;)LIG;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LrB;->a:LIG;

    return-object v0
.end method

.method static synthetic a(LrB;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LrB;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(LrB;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, LrB;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(LrB;)Lrz;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, LrB;->a:Lrz;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 374
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 375
    const-string v1, "ncl"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 376
    iget-object v1, p0, LrB;->a:Lrz;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lrz;->a(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 473
    const-string v0, "UrlLoadingWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in showAuthenticationError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, LrB;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->authentication_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, LrB;->a:Landroid/os/Handler;

    new-instance v2, LrE;

    invoke-direct {v2, p0, v0}, LrE;-><init>(LrB;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 486
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 404
    const-string v0, "UrlLoadingWebViewClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in loadSecureUrl accountName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, LrB;->a:Landroid/os/Handler;

    new-instance v1, LrC;

    invoke-direct {v1, p0, p1, p2}, LrC;-><init>(LrB;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    const-string v0, "UrlLoadingWebViewClient"

    const-string v1, "in loginUser"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v0, LrD;

    invoke-direct {v0, p0, p1, p2, p4}, LrD;-><init>(LrB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, LrB;->a:Lrz;

    invoke-interface {v1, v0}, Lrz;->a(LnQ;)V

    .line 470
    return-void
.end method

.method static synthetic a(LrB;)V
    .registers 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, LrB;->d()V

    return-void
.end method

.method static synthetic a(LrB;Ljava/lang/Exception;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, LrB;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(LrB;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, LrB;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 319
    iget-object v2, p0, LrB;->a:LLz;

    iget-object v3, p0, LrB;->a:Landroid/content/Context;

    invoke-interface {v2, v3, p2}, LLz;->a(Landroid/content/Context;Landroid/net/Uri;)LLC;

    move-result-object v2

    .line 321
    iget-object v3, p0, LrB;->a:Lrz;

    invoke-interface {v3}, Lrz;->a()LrA;

    move-result-object v3

    .line 322
    invoke-virtual {v2}, LLC;->a()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-interface {v3}, LrA;->a()LLC;

    move-result-object v5

    invoke-virtual {v5}, LLC;->a()Ljava/lang/String;

    move-result-object v5

    .line 324
    const-string v6, "UrlLoadingWebViewClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current resource id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " new uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " parsed resource id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    if-eqz v4, :cond_f0

    .line 328
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c0

    .line 335
    invoke-virtual {v2}, LLC;->a()LkU;

    move-result-object v6

    sget-object v7, LkU;->c:LkU;

    invoke-virtual {v6, v7}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v3}, LrA;->a()LLC;

    move-result-object v6

    invoke-virtual {v6}, LLC;->a()LkU;

    move-result-object v6

    sget-object v7, LkU;->c:LkU;

    invoke-virtual {v6, v7}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    if-ge v4, v5, :cond_7c

    .line 338
    invoke-direct {p0, p2}, LrB;->a(Landroid/net/Uri;)V

    .line 369
    :goto_7b
    return v0

    .line 340
    :cond_7c
    invoke-virtual {v2}, LLC;->a()LkU;

    move-result-object v2

    sget-object v4, LkU;->d:LkU;

    invoke-virtual {v2, v4}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v3}, LrA;->a()LLC;

    move-result-object v2

    invoke-virtual {v2}, LLC;->a()LkU;

    move-result-object v2

    sget-object v3, LkU;->d:LkU;

    invoke-virtual {v2, v3}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    move v0, v1

    .line 344
    goto :goto_7b

    .line 347
    :cond_9a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 348
    iget-object v3, p0, LrB;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/apps/docs/openurl/OpenUrlActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 349
    const-string v3, "accountName"

    iget-object v4, p0, LrB;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    :try_start_af
    iget-object v3, p0, LrB;->a:Lrz;

    invoke-interface {v3, v2}, Lrz;->a(Landroid/content/Intent;)V
    :try_end_b4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_af .. :try_end_b4} :catch_b5

    goto :goto_7b

    .line 353
    :catch_b5
    move-exception v0

    .line 355
    sget-boolean v0, LrB;->a:Z

    if-nez v0, :cond_f0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 358
    :cond_c0
    invoke-virtual {v2}, LLC;->a()LkU;

    move-result-object v3

    sget-object v4, LkU;->c:LkU;

    invoke-virtual {v3, v4}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d8

    const-string v3, "ncl=true"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d8

    .line 361
    invoke-direct {p0, p2}, LrB;->a(Landroid/net/Uri;)V

    goto :goto_7b

    .line 363
    :cond_d8
    invoke-virtual {v2}, LLC;->a()LkU;

    move-result-object v2

    sget-object v3, LkU;->a:LkU;

    invoke-virtual {v2, v3}, LkU;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f0

    const-string v2, "source=cm"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f0

    .line 364
    invoke-direct {p0, p2}, LrB;->b(Landroid/net/Uri;)V

    goto :goto_7b

    :cond_f0
    move v0, v1

    .line 369
    goto :goto_7b
.end method

.method static synthetic a(LrB;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 49
    iput-boolean p1, p0, LrB;->b:Z

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, LrB;->a:Landroid/content/Context;

    iget-object v2, p0, LrB;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x2408

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 311
    const-string v1, "preserveOriginalIntent"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    const-string v1, "accountName"

    iget-object v2, p0, LrB;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    iget-object v1, p0, LrB;->a:Lrz;

    invoke-interface {v1, v0}, Lrz;->a(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .registers 5
    .parameter

    .prologue
    .line 382
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 383
    const-string v1, "source"

    const-string v2, "cm"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 389
    const-string v1, "viewopt"

    const-string v2, "33"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 390
    iget-object v1, p0, LrB;->a:Lrz;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lrz;->a(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 394
    iget-object v0, p0, LrB;->a:Landroid/content/SharedPreferences;

    const-string v1, "currentAccount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LrB;->b:Ljava/lang/String;

    .line 395
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 294
    :try_start_10
    iget-object v1, p0, LrB;->a:Lrz;

    invoke-interface {v1, v0}, Lrz;->a(Landroid/content/Intent;)V
    :try_end_15
    .catch Landroid/content/ActivityNotFoundException; {:try_start_10 .. :try_end_15} :catch_16

    .line 299
    :goto_15
    return-void

    .line 295
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method private d()V
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, LrB;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    const-string v1, "currentAccount"

    iget-object v2, p0, LrB;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, LrB;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, LrB;->b:Z

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, LrB;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, LrB;->a:Ljava/lang/String;

    iget-object v1, p0, LrB;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 183
    :cond_e
    iget-object v0, p0, LrB;->a:Lrz;

    invoke-interface {v0, p1}, Lrz;->a(Ljava/lang/String;)V

    .line 187
    :goto_13
    return-void

    .line 185
    :cond_14
    invoke-virtual {p0, p1}, LrB;->b(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 194
    const-string v0, "UrlLoadingWebViewClient"

    const-string v1, "in loginUserAndLoadUrl"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, LrB;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 202
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 203
    iget-object v0, p0, LrB;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p1, v1}, LrB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 208
    iget-object v2, p0, LrB;->a:Lrz;

    invoke-interface {v2}, Lrz;->a()LrA;

    move-result-object v2

    if-nez v2, :cond_b

    .line 282
    :cond_a
    :goto_a
    return v0

    .line 212
    :cond_b
    const-string v2, "UrlLoadingWebViewClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 216
    invoke-static {v2}, LpN;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 217
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 218
    if-eqz v4, :cond_f7

    invoke-static {v2}, LpN;->d(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_f7

    if-eqz v3, :cond_f7

    .line 221
    const-string v4, "/url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 222
    const-string v0, "q"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {p0, p1, v0}, LrB;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_a

    .line 224
    :cond_4c
    iget-object v4, p0, LrB;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 226
    iget-object v0, p0, LrB;->a:Lrz;

    invoke-interface {v0}, Lrz;->a()V

    move v0, v1

    .line 227
    goto :goto_a

    .line 228
    :cond_5f
    iget-object v4, p0, LrB;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 229
    iget-object v3, p0, LrB;->a:Ljava/lang/String;

    if-eqz v3, :cond_a

    iget-boolean v3, p0, LrB;->b:Z

    if-eqz v3, :cond_a

    .line 231
    iput-boolean v0, p0, LrB;->b:Z

    .line 234
    iget-object v0, p0, LrB;->a:Ljava/lang/String;

    const-string v3, "continue"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "service"

    invoke-virtual {v2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v3, v4, v2}, LrB;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 237
    goto/16 :goto_a

    .line 240
    :cond_8d
    const-string v4, "/cloudprint/client/mobile.html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_af

    .line 242
    const-string v1, "UrlLoadingWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisted cloud print "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 244
    :cond_af
    const-string v4, "/fusiontables"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    .line 246
    const-string v1, "UrlLoadingWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisted fusion table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 248
    :cond_d1
    iget-object v4, p0, LrB;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_f7

    .line 250
    const-string v1, "UrlLoadingWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisted path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 255
    :cond_f7
    iget-object v4, p0, LrB;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_11d

    .line 256
    const-string v1, "UrlLoadingWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Whitelisted URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 260
    :cond_11d
    sget-object v4, Lcom/google/android/apps/docs/sync/filemanager/FileProvider;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_143

    .line 261
    const-string v1, "UrlLoadingWebViewClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileProvider URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 265
    :cond_143
    if-eqz v3, :cond_169

    invoke-static {v2}, LpN;->a(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_151

    invoke-static {v2}, LpN;->c(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 269
    :cond_151
    iget-object v0, p0, LrB;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 271
    invoke-direct {p0}, LrB;->b()V

    move v0, v1

    .line 272
    goto/16 :goto_a

    .line 275
    :cond_163
    invoke-direct {p0, p2, v2}, LrB;->a(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto/16 :goto_a

    .line 279
    :cond_169
    invoke-direct {p0, p2}, LrB;->c(Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    move v0, v1

    .line 282
    goto/16 :goto_a
.end method
