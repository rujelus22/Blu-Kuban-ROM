.class public Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;
.super Ljava/lang/Object;
.source "FileOpenerIntentCreatorImpl.java"

# interfaces
.implements Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;


# instance fields
.field private final a:LFX;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;LFX;)V
    .registers 3
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LFX;",
            ")V"
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a:LFX;

    .line 225
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a:LanD;

    .line 226
    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .parameter

    .prologue
    .line 315
    const-string v0, "file:///data/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 316
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 399
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 400
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 401
    const/4 v0, 0x0

    .line 403
    :goto_a
    return-object v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 301
    .line 303
    invoke-static {p2}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    if-eqz v0, :cond_10

    .line 307
    invoke-static {v0}, LdW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a:LFX;

    invoke-interface {v1, v0, p1}, LFX;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    :cond_10
    return-object p1
.end method

.method private static a(Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 375
    iget v1, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 376
    const/high16 v4, 0x50

    and-int/2addr v1, v4

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    .line 377
    :goto_1d
    if-nez v1, :cond_2b

    .line 378
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 379
    if-eqz v4, :cond_2b

    .line 380
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->hasDataPath(Ljava/lang/String;)Z

    move-result v1

    .line 383
    :cond_2b
    if-eqz v1, :cond_9

    .line 384
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 376
    :cond_31
    const/4 v1, 0x0

    goto :goto_1d

    .line 388
    :cond_33
    return-object v2
.end method

.method public static synthetic a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;)LpZ;
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->b(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;)LpZ;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->b(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;

    move-result-object v0

    return-object v0
.end method

.method private a(LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 252
    invoke-direct {p0, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 257
    if-nez v3, :cond_41

    .line 258
    new-array v0, v6, [Lqb;

    sget-object v2, Lqb;->b:Lqb;

    aput-object v2, v0, v4

    sget-object v2, Lqb;->d:Lqb;

    aput-object v2, v0, v5

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 271
    :goto_1f
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqb;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 272
    invoke-virtual/range {v0 .. v5}, Lqb;->a(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;

    move-result-object v0

    .line 273
    invoke-interface {v0}, LpZ;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_23

    .line 277
    :goto_40
    return-object v0

    .line 262
    :cond_41
    const/4 v0, 0x4

    new-array v0, v0, [Lqb;

    sget-object v2, Lqb;->a:Lqb;

    aput-object v2, v0, v4

    sget-object v2, Lqb;->c:Lqb;

    aput-object v2, v0, v5

    sget-object v2, Lqb;->b:Lqb;

    aput-object v2, v0, v6

    const/4 v2, 0x3

    sget-object v4, Lqb;->d:Lqb;

    aput-object v4, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1f

    .line 277
    :cond_5a
    sget-object v0, Lqg;->a:Lqg;

    goto :goto_40
.end method

.method private static b(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;)LpZ;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 347
    invoke-static {p2}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    if-nez v1, :cond_d

    .line 349
    sget-object v0, Lqg;->a:Lqg;

    .line 358
    :goto_c
    return-object v0

    .line 352
    :cond_d
    invoke-static {p2}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 353
    invoke-virtual {p1, v1, p3, p2}, LeD;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 354
    const/high16 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 355
    if-nez p3, :cond_21

    .line 356
    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 358
    :cond_21
    new-instance v1, Lqg;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lqg;-><init>(Landroid/content/Intent;Ljava/util/List;Lqa;)V

    move-object v0, v1

    goto :goto_c
.end method

.method private static b(Landroid/content/Context;LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1, p4, p3, p2}, LeD;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 289
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 290
    if-nez p3, :cond_14

    .line 291
    invoke-static {v0, p4}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/util/List;Landroid/net/Uri;)Ljava/util/List;

    move-result-object v0

    .line 293
    :cond_14
    new-instance v2, Lqg;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lqg;-><init>(Landroid/content/Intent;Ljava/util/List;Lqa;)V

    return-object v2
.end method


# virtual methods
.method public a(LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;

    move-result-object v0

    .line 240
    invoke-interface {v0}, LpZ;->a()Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    move-result-object v0

    .line 243
    invoke-interface {v0, p4}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;->a(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final a(LeD;Ljava/lang/String;Ljava/lang/String;)LpZ;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    invoke-static {p3}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 232
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;->a(LeD;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)LpZ;

    move-result-object v0

    .line 233
    return-object v0
.end method
