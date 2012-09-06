.class final Lcom/google/android/apps/reader/widget/ItemViewUri;
.super Ljava/lang/Object;
.source "ItemViewUri.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ItemViewUri"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static open(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 120
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/android/apps/reader/widget/ItemViewUri;->parse(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_3} :catch_13

    move-result-object v0

    .line 122
    :try_start_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_7} :catch_13

    .line 127
    :goto_7
    const/4 v0, 0x1

    .line 130
    :goto_8
    return v0

    .line 125
    :catch_9
    move-exception v1

    const/4 v1, 0x0

    :try_start_b
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_12
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_12} :catch_13

    goto :goto_7

    .line 128
    :catch_13
    move-exception v0

    .line 129
    const-string v1, "ItemViewUri"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URL:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static parse(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 62
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v1, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v1, "content:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 76
    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_42

    .line 78
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 79
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 81
    const-string v5, "data"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 84
    invoke-static {v1}, Lcom/google/android/apps/reader/widget/ItemViewUri;->resolveBrowserComponent(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_42

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 109
    :cond_42
    :goto_42
    return-object v0

    .line 73
    :cond_43
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1b

    .line 90
    :cond_49
    const-string v1, "vnd.youtube"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 92
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://www.youtube.com/watch?v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_42

    .line 94
    :cond_70
    if-eqz v2, :cond_7e

    const-string v1, "application/x-shockwave-flash"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 99
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_42

    .line 100
    :cond_7e
    if-eqz v2, :cond_42

    if-eqz v4, :cond_42

    const-string v1, "image/"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 105
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_42
.end method

.method private static resolveBrowserComponent(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
    .registers 9
    .parameter "pm"

    .prologue
    .line 49
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    const-string v6, "http://www.example.com/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
    .local v3, intent:Landroid/content/Intent;
    const/high16 v2, 0x1

    .line 51
    .local v2, flags:I
    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 52
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 53
    const/4 v5, 0x0

    .line 57
    :goto_1a
    return-object v5

    .line 55
    :cond_1b
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 56
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 57
    .local v1, activityInfo:Landroid/content/pm/PackageItemInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method
