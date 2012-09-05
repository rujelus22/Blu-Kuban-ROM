.class public final Lcom/google/android/youtube/googlemobile/common/a/b;
.super Lcom/google/android/youtube/googlemobile/common/b;


# static fields
.field private static G:Ljava/lang/Thread;


# instance fields
.field protected A:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

.field protected B:Lcom/google/android/youtube/googlemobile/common/graphics/android/c;

.field protected C:Lcom/google/android/youtube/googlemobile/common/graphics/a;

.field protected final D:Landroid/content/Context;

.field private final E:I

.field private final F:Lcom/google/android/youtube/googlemobile/common/a;

.field protected z:Lcom/google/android/youtube/googlemobile/common/io/a/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/googlemobile/common/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/b;-><init>()V

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/a/a;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/a/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->F:Lcom/google/android/youtube/googlemobile/common/a;

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/googlemobile/common/a/b;->G:Ljava/lang/Thread;

    invoke-static {p0}, Lcom/google/android/youtube/googlemobile/common/a/b;->a(Lcom/google/android/youtube/googlemobile/common/b;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/a/b;->b()V

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/a/b;->t:Z

    sput-boolean v1, Lcom/google/android/youtube/googlemobile/common/a/b;->x:Z

    const/4 v0, 0x4

    sput v0, Lcom/google/android/youtube/googlemobile/common/a/b;->a:I

    if-eqz p1, :cond_6a

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->E:I

    :goto_2e
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    if-nez v1, :cond_6f

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/i;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/io/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->A:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    :goto_3a
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/a/g;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->z:Lcom/google/android/youtube/googlemobile/common/io/a/g;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/b;

    invoke-direct {v0}, Lcom/google/android/youtube/googlemobile/common/graphics/android/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->C:Lcom/google/android/youtube/googlemobile/common/graphics/a;

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/graphics/android/a;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/graphics/android/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->B:Lcom/google/android/youtube/googlemobile/common/graphics/android/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/a/b;->e()Lcom/google/android/youtube/googlemobile/common/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/common/d;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/a/b;->e()Lcom/google/android/youtube/googlemobile/common/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/googlemobile/common/d;->c(Ljava/lang/String;)V

    return-void

    :cond_6a
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->E:I

    goto :goto_2e

    :cond_6f
    if-eqz v0, :cond_79

    new-instance v1, Lcom/google/android/youtube/googlemobile/common/io/a/a;

    invoke-direct {v1, v0}, Lcom/google/android/youtube/googlemobile/common/io/a/a;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->A:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    goto :goto_3a

    :cond_79
    new-instance v0, Lcom/google/android/youtube/googlemobile/common/io/a/i;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->A:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    goto :goto_3a
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->D:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_45} :catch_47

    move-result-object v0

    :goto_46
    return-object v0

    :catch_47
    move-exception v0

    move-object v0, v6

    goto :goto_46

    :cond_4a
    move-object v0, v6

    goto :goto_46
.end method


# virtual methods
.method protected final c()V
    .registers 2

    new-instance v0, Lcom/google/android/youtube/googlemobile/common/a/c;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/googlemobile/common/a/c;-><init>(Lcom/google/android/youtube/googlemobile/common/a/b;)V

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/f;->a(Lcom/google/android/youtube/googlemobile/common/io/g;)V

    return-void
.end method

.method protected final d()Ljava/lang/String;
    .registers 4

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string v0, "client_id"

    invoke-direct {p0, v0}, Lcom/google/android/youtube/googlemobile/common/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v0, "Web"

    :cond_1a
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gmm-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/youtube/googlemobile/common/io/h;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->z:Lcom/google/android/youtube/googlemobile/common/io/a/g;

    return-object v0
.end method

.method public final h()Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->A:Lcom/google/android/youtube/googlemobile/common/io/PersistentStore;

    return-object v0
.end method

.method public final i()Lcom/google/android/youtube/googlemobile/common/a;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/a/b;->F:Lcom/google/android/youtube/googlemobile/common/a;

    return-object v0
.end method
