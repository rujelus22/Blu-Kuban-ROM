.class final Lcom/google/ads/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/n;-><init>(Landroid/app/Activity;B)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/n;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/n;->b:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    const/4 v8, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/ads/n;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v7, v0

    if-nez v7, :cond_13

    const-string v1, "Activity was null while making a doritos cookie request."

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    :goto_12
    return-void

    :cond_13
    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/ads/l;->b:Landroid/net/Uri;

    sget-object v3, Lcom/google/ads/l;->d:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_73

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_3f
    iget-object v1, p0, Lcom/google/ads/n;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_7a

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :goto_4f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "drt"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "drt_ts"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :goto_68
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6b} :catch_6c

    goto :goto_12

    :catch_6c
    move-exception v1

    const-string v2, "An unknown error occurred while sending a doritos request."

    invoke-static {v2, v1}, Lcom/google/ads/util/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    :cond_73
    :try_start_73
    const-string v1, "Google+ app not installed, not storing doritos cookie"

    invoke-static {v1}, Lcom/google/ads/util/d;->a(Ljava/lang/String;)V

    move-object v2, v8

    goto :goto_3f

    :cond_7a
    iget-object v1, p0, Lcom/google/ads/n;->b:Landroid/content/SharedPreferences$Editor;

    goto :goto_4f

    :cond_7d
    const-string v2, "drt"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "drt_ts"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_8b} :catch_6c

    goto :goto_68
.end method
