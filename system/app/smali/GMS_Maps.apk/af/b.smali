.class public Laf/b;
.super Ljava/lang/Object;

# interfaces
.implements Laf/e;


# static fields
.field public static a:[Ljava/lang/String;

.field private static g:Laf/b;

.field private static h:Ljava/lang/String;

.field private static volatile i:Ljava/lang/Boolean;

.field private static j:Landroid/content/Context;

.field private static o:Ljava/lang/Thread;


# instance fields
.field protected b:Lak/i;

.field protected c:Lak/m;

.field protected d:Lah/h;

.field protected e:Lah/b;

.field protected f:Landroid/content/Context;

.field private final k:I

.field private l:F

.field private final m:F

.field private final n:F

.field private volatile p:Z

.field private q:Laf/g;

.field private final r:Laf/a;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/high16 v1, 0x4320

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/b;->p:Z

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    iput-object v0, p0, Laf/b;->r:Laf/a;

    invoke-static {}, Lar/r;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Laf/b;->f:Landroid/content/Context;

    const/16 v0, 0xa0

    iput v0, p0, Laf/b;->k:I

    iput v1, p0, Laf/b;->m:F

    iput v1, p0, Laf/b;->n:F

    const/high16 v0, 0x3f80

    iput v0, p0, Laf/b;->l:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const-wide/high16 v4, 0x3fd0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laf/b;->p:Z

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    iput-object v0, p0, Laf/b;->r:Laf/a;

    iput-object p1, p0, Laf/b;->f:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Laf/b;->o:Ljava/lang/Thread;

    invoke-static {p0}, Laf/b;->a(Laf/b;)V

    invoke-virtual {p0}, Laf/b;->b()V

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Laf/b;->k:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Laf/b;->l:F

    :goto_3b
    iget v0, p0, Laf/b;->k:I

    int-to-float v0, v0

    if-eqz p1, :cond_84

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_62

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7b

    :cond_62
    iput v0, p0, Laf/b;->m:F

    iput v0, p0, Laf/b;->n:F

    :goto_66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Laf/b;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Laf/b;->a(Ljava/util/Locale;)V

    return-void

    :cond_72
    const/16 v0, 0xa0

    iput v0, p0, Laf/b;->k:I

    const/high16 v0, 0x3f80

    iput v0, p0, Laf/b;->l:F

    goto :goto_3b

    :cond_7b
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Laf/b;->m:F

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Laf/b;->n:F

    goto :goto_66

    :cond_84
    iput v0, p0, Laf/b;->m:F

    iput v0, p0, Laf/b;->n:F

    goto :goto_66
.end method

.method public static D()Ljava/lang/String;
    .registers 7

    const/16 v6, 0x5f

    const/16 v5, 0x2d

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private E()[Ljava/lang/String;
    .registers 3

    sget-object v0, Laf/b;->a:[Ljava/lang/String;

    if-nez v0, :cond_12

    const-string v0, "en bg ca cs da de el en_GB es es_MX fi fr hr hu it ja ko lt lv nl no pl pt_BR pt_PT ro ru sk sl sr sv tl tr uk vi zh_TW zh_CN"

    const-string v1, " "

    invoke-static {v0, v1}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laf/b;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laf/b;->a:[Ljava/lang/String;

    :cond_12
    sget-object v0, Laf/b;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public static a()Laf/b;
    .registers 1

    sget-object v0, Laf/b;->g:Laf/b;

    return-object v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4

    sget-object v0, Laf/b;->j:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1}, Laf/g;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Laf/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Laf/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2f
    return-object v0
.end method

.method public static a(Laf/b;)V
    .registers 1

    sput-object p0, Laf/b;->g:Laf/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .registers 4

    sget-object v0, Laf/b;->g:Laf/b;

    iget-object v0, v0, Laf/b;->q:Laf/g;

    invoke-virtual {v0, p0, p1, p2}, Laf/g;->a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2

    sget-object v0, Laf/b;->g:Laf/b;

    iget-object v0, v0, Laf/b;->q:Laf/g;

    invoke-virtual {v0, p0}, Laf/g;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

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
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_56
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_4d

    move-result-object v1

    if-eqz v1, :cond_63

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_63

    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_5d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_60

    move-result-object v6

    move-object v0, v6

    :goto_47
    if-eqz v1, :cond_4c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4c
    :goto_4c
    return-object v0

    :catch_4d
    move-exception v0

    move-object v0, v6

    :goto_4f
    if-eqz v0, :cond_54

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_54
    move-object v0, v6

    goto :goto_4c

    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v6, :cond_5c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    :catchall_5d
    move-exception v0

    move-object v6, v1

    goto :goto_57

    :catch_60
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    :cond_63
    move-object v0, v6

    goto :goto_47
.end method

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 2

    const-class v1, Laf/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Laf/b;->g:Laf/b;

    iget-object v0, v0, Laf/b;->q:Laf/g;

    invoke-virtual {v0}, Laf/g;->b()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g()Ljava/lang/String;
    .registers 2

    const-class v1, Laf/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Laf/b;->g:Laf/b;

    iget-object v0, v0, Laf/b;->q:Laf/g;

    invoke-virtual {v0}, Laf/g;->a()Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Laf/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Z
    .registers 1

    sget-object v0, Laf/b;->g:Laf/b;

    iget-object v0, v0, Laf/b;->q:Laf/g;

    invoke-virtual {v0}, Laf/g;->d()Z

    move-result v0

    return v0
.end method

.method public static w()Z
    .registers 2

    invoke-static {}, Laf/b;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public A()Z
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Laf/b;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_41

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Laf/b;->i:Ljava/lang/Boolean;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_41

    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasSystemFeature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Laf/b;->i:Ljava/lang/Boolean;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_41} :catch_48

    :cond_41
    sget-object v0, Laf/b;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catch_48
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public B()Landroid/location/LocationManager;
    .registers 3

    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public C()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    return-object v0
.end method

.method public a(D)I
    .registers 5

    invoke-virtual {p0}, Laf/b;->x()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lar/i;->a(D)I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .registers 11

    const-wide/32 v4, 0xea60

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    sput-object p1, Laf/b;->j:Landroid/content/Context;

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Laf/b;->a(Ljava/util/Locale;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    if-nez v0, :cond_25

    new-instance v0, Lak/j;

    invoke-direct {v0}, Lak/j;-><init>()V

    iput-object v0, p0, Laf/b;->c:Lak/m;

    :goto_b
    new-instance v0, Lal/g;

    iget-object v1, p0, Laf/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lal/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laf/b;->b:Lak/i;

    new-instance v0, Lai/d;

    invoke-direct {v0}, Lai/d;-><init>()V

    iput-object v0, p0, Laf/b;->e:Lah/b;

    new-instance v0, Lai/a;

    iget-object v1, p0, Laf/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lai/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laf/b;->d:Lah/h;

    return-void

    :cond_25
    if-eqz p1, :cond_2f

    new-instance v0, Lal/a;

    invoke-direct {v0, p1}, Lal/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Laf/b;->c:Lak/m;

    goto :goto_b

    :cond_2f
    new-instance v0, Lal/j;

    iget-object v1, p0, Laf/b;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lal/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laf/b;->c:Lak/m;

    goto :goto_b
.end method

.method public a(Ljava/util/Locale;)V
    .registers 5

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Laf/b;->h()Laf/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Laf/g;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Laf/b;->h()Laf/g;

    move-result-object v1

    invoke-direct {p0}, Laf/b;->E()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Laf/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Laf/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Laf/b;->q:Laf/g;

    invoke-virtual {v0, p1}, Laf/g;->a([Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Laf/b;->E()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Laf/g;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .registers 2

    iget-object v0, p0, Laf/b;->q:Laf/g;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Laf/g;->a(Ljava/lang/String;)Laf/g;

    move-result-object v0

    iput-object v0, p0, Laf/b;->q:Laf/g;

    :cond_b
    invoke-virtual {p0}, Laf/b;->d()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Laf/b;->h:Ljava/lang/String;

    sget-object v0, Laf/b;->h:Ljava/lang/String;

    if-nez v0, :cond_19

    const-string v0, "unknown"

    sput-object v0, Laf/b;->h:Ljava/lang/String;

    :cond_19
    invoke-virtual {p0}, Laf/b;->c()V

    return-void
.end method

.method public b([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_8
    if-ge v0, v2, :cond_18

    aget-object v3, p1, v0

    invoke-static {v3}, Laf/g;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public c(I)I
    .registers 6

    int-to-double v0, p1

    invoke-virtual {p0}, Laf/b;->x()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lar/i;->a(D)I

    move-result v0

    return v0
.end method

.method protected c()V
    .registers 2

    new-instance v0, Laf/c;

    invoke-direct {v0, p0}, Laf/c;-><init>(Laf/b;)V

    invoke-static {v0}, Lak/g;->a(Lak/h;)V

    return-void
.end method

.method protected d()Ljava/lang/String;
    .registers 4

    const-string v0, "Web"

    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Laf/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v0, "Web"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Laf/b;->q:Laf/g;

    invoke-virtual {v0}, Laf/g;->c()Z

    move-result v0

    return v0
.end method

.method protected h()Laf/g;
    .registers 2

    iget-object v0, p0, Laf/b;->q:Laf/g;

    return-object v0
.end method

.method public j()I
    .registers 2

    const/16 v0, 0x22

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    const-string v0, "6.3.0"

    return-object v0
.end method

.method public m()Lak/i;
    .registers 2

    iget-object v0, p0, Laf/b;->b:Lak/i;

    return-object v0
.end method

.method public n()Lak/m;
    .registers 2

    iget-object v0, p0, Laf/b;->c:Lak/m;

    return-object v0
.end method

.method public o()Lah/h;
    .registers 2

    iget-object v0, p0, Laf/b;->d:Lah/h;

    return-object v0
.end method

.method public p()Lah/b;
    .registers 2

    iget-object v0, p0, Laf/b;->e:Lah/b;

    return-object v0
.end method

.method public q()Laf/e;
    .registers 1

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    :cond_17
    :goto_17
    const-string v0, "Unknown"

    :goto_19
    return-object v0

    :pswitch_1a
    const-string v0, "WiFi"

    goto :goto_19

    :pswitch_1d
    iget-object v0, p0, Laf/b;->f:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    goto :goto_17

    :pswitch_2f
    const-string v0, "GPRS"

    goto :goto_19

    :pswitch_32
    const-string v0, "UMTS"

    goto :goto_19

    :pswitch_35
    const-string v0, "EDGE"

    goto :goto_19

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public s()I
    .registers 2

    iget v0, p0, Laf/b;->k:I

    return v0
.end method

.method public t()F
    .registers 2

    iget v0, p0, Laf/b;->m:F

    return v0
.end method

.method public u()F
    .registers 2

    iget v0, p0, Laf/b;->n:F

    return v0
.end method

.method public v()Laf/a;
    .registers 2

    iget-object v0, p0, Laf/b;->r:Laf/a;

    return-object v0
.end method

.method public x()D
    .registers 3

    iget v0, p0, Laf/b;->l:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public y()Z
    .registers 3

    invoke-virtual {p0}, Laf/b;->s()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public z()Z
    .registers 3

    sget-object v0, Laf/b;->o:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
