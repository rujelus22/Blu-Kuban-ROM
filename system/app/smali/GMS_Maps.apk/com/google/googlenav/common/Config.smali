.class public Lcom/google/googlenav/common/Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/d;


# static fields
.field protected static final a:Ljava/lang/Object;

.field public static b:[Ljava/lang/String;

.field private static f:Lcom/google/googlenav/common/Config;

.field private static g:Ljava/lang/String;

.field private static volatile h:Ljava/lang/Boolean;

.field private static volatile i:Ljava/lang/Boolean;

.field private static j:Landroid/content/Context;

.field private static q:Ljava/lang/Thread;


# instance fields
.field protected c:Lcom/google/googlenav/common/io/g;

.field protected d:Landroid/content/Context;

.field protected e:I

.field private final k:Lcom/google/googlenav/common/io/j;

.field private final l:LS/h;

.field private final m:LS/b;

.field private n:F

.field private final o:F

.field private final p:F

.field private volatile r:Z

.field private s:Lcom/google/googlenav/common/e;

.field private final t:Lcom/google/googlenav/common/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/common/Config;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/high16 v2, 0x4320

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/Config;->r:Z

    .line 302
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/Config;->t:Lcom/google/googlenav/common/a;

    .line 172
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 173
    iput-object v1, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    .line 174
    iput-object v1, p0, Lcom/google/googlenav/common/Config;->k:Lcom/google/googlenav/common/io/j;

    .line 175
    iput-object v1, p0, Lcom/google/googlenav/common/Config;->l:LS/h;

    .line 176
    iput-object v1, p0, Lcom/google/googlenav/common/Config;->m:LS/b;

    .line 177
    iput-object v1, p0, Lcom/google/googlenav/common/Config;->c:Lcom/google/googlenav/common/io/g;

    .line 178
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/googlenav/common/Config;->e:I

    .line 179
    iput v2, p0, Lcom/google/googlenav/common/Config;->o:F

    .line 180
    iput v2, p0, Lcom/google/googlenav/common/Config;->p:F

    .line 181
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/googlenav/common/Config;->n:F

    .line 182
    invoke-direct {p0}, Lcom/google/googlenav/common/Config;->F()V

    .line 183
    invoke-static {p0}, Lcom/google/googlenav/common/Config;->a(Lcom/google/googlenav/common/Config;)V

    .line 184
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 187
    if-nez p1, :cond_10

    new-instance v0, Lcom/google/googlenav/common/io/h;

    invoke-direct {v0}, Lcom/google/googlenav/common/io/h;-><init>()V

    :goto_7
    new-instance v1, LT/a;

    invoke-direct {v1, p1}, LT/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/common/Config;-><init>(Landroid/content/Context;Lcom/google/googlenav/common/io/j;LS/h;)V

    .line 190
    return-void

    .line 187
    :cond_10
    new-instance v0, LV/d;

    invoke-direct {v0, p1}, LV/d;-><init>(Landroid/content/Context;)V

    goto :goto_7
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/googlenav/common/io/j;LS/h;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x3fd0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/common/Config;->r:Z

    .line 302
    new-instance v0, LR/a;

    invoke-direct {v0}, LR/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/Config;->t:Lcom/google/googlenav/common/a;

    .line 196
    iput-object p1, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    .line 197
    iput-object p2, p0, Lcom/google/googlenav/common/Config;->k:Lcom/google/googlenav/common/io/j;

    .line 198
    iput-object p3, p0, Lcom/google/googlenav/common/Config;->l:LS/h;

    .line 199
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/Config;->q:Ljava/lang/Thread;

    .line 201
    invoke-direct {p0}, Lcom/google/googlenav/common/Config;->F()V

    .line 203
    if-eqz p1, :cond_83

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/google/googlenav/common/Config;->e:I

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/googlenav/common/Config;->n:F

    .line 219
    :goto_3c
    iget v0, p0, Lcom/google/googlenav/common/Config;->e:I

    int-to-float v0, v0

    .line 220
    if-eqz p1, :cond_95

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 222
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_63

    iget v2, v1, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v2, v0

    float-to-double v2, v2

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8c

    .line 224
    :cond_63
    iput v0, p0, Lcom/google/googlenav/common/Config;->o:F

    .line 225
    iput v0, p0, Lcom/google/googlenav/common/Config;->p:F

    .line 235
    :goto_67
    new-instance v0, LT/d;

    invoke-direct {v0}, LT/d;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/Config;->m:LS/b;

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/Config;->a(Ljava/util/Locale;)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/Config;->a(Landroid/content/Context;)V

    .line 243
    invoke-static {p0}, Lcom/google/googlenav/common/Config;->a(Lcom/google/googlenav/common/Config;)V

    .line 244
    new-instance v0, LV/a;

    invoke-direct {v0, p1}, LV/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/common/Config;->c:Lcom/google/googlenav/common/io/g;

    .line 245
    return-void

    .line 211
    :cond_83
    const/16 v0, 0xa0

    iput v0, p0, Lcom/google/googlenav/common/Config;->e:I

    .line 212
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/googlenav/common/Config;->n:F

    goto :goto_3c

    .line 227
    :cond_8c
    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Lcom/google/googlenav/common/Config;->o:F

    .line 228
    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/googlenav/common/Config;->p:F

    goto :goto_67

    .line 231
    :cond_95
    iput v0, p0, Lcom/google/googlenav/common/Config;->o:F

    .line 232
    iput v0, p0, Lcom/google/googlenav/common/Config;->p:F

    goto :goto_67
.end method

.method public static E()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v6, 0x5f

    const/16 v5, 0x2d

    .line 930
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 931
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 932
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 935
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

.method private F()V
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    if-nez v0, :cond_b

    .line 313
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;)Lcom/google/googlenav/common/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    .line 316
    :cond_b
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/Config;->g:Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/google/googlenav/common/Config;->g:Ljava/lang/String;

    if-nez v0, :cond_19

    .line 318
    const-string v0, "unknown"

    sput-object v0, Lcom/google/googlenav/common/Config;->g:Ljava/lang/String;

    .line 321
    :cond_19
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->b()V

    .line 322
    return-void
.end method

.method private G()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 874
    sget-object v0, Lcom/google/googlenav/common/Config;->b:[Ljava/lang/String;

    if-nez v0, :cond_12

    .line 875
    const-string v0, "en ar bg ca cs da de el en_GB es es_MX fi fr hr hu it ja ko lt lv nl no pl pt_BR pt_PT ro ru sk sl sr sv tl tr uk vi zh_TW zh_CN"

    const-string v1, " "

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 876
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/Config;->b([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/Config;->b:[Ljava/lang/String;

    .line 878
    :cond_12
    sget-object v0, Lcom/google/googlenav/common/Config;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public static a()Lcom/google/googlenav/common/Config;
    .registers 2

    .prologue
    .line 287
    sget-object v1, Lcom/google/googlenav/common/Config;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_3
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    monitor-exit v1

    return-object v0

    .line 289
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static a(I)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 500
    sget-object v0, Lcom/google/googlenav/common/Config;->j:Landroid/content/Context;

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
    .parameter
    .parameter

    .prologue
    .line 896
    invoke-static {p0, p1}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    invoke-static {p0}, Lcom/google/googlenav/common/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 898
    invoke-static {v0}, Lcom/google/googlenav/common/e;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 901
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

    .line 903
    :cond_2f
    return-object v0
.end method

.method protected static a(Lcom/google/googlenav/common/Config;)V
    .registers 1
    .parameter

    .prologue
    .line 255
    sput-object p0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    .line 256
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 535
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    iget-object v0, v0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;Ljava/io/DataInput;Z)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 526
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    iget-object v0, v0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/e;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 373
    .line 384
    :try_start_1
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

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

    .line 387
    if-eqz v1, :cond_65

    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 388
    const-string v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_5d
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_45} :catch_60

    move-result-object v6

    move-object v0, v6

    .line 398
    :goto_47
    if-eqz v1, :cond_4c

    .line 399
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 402
    :cond_4c
    :goto_4c
    return-object v0

    .line 390
    :catch_4d
    move-exception v0

    move-object v0, v6

    .line 398
    :goto_4f
    if-eqz v0, :cond_63

    .line 399
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto :goto_4c

    .line 398
    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v6, :cond_5c

    .line 399
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5c
    throw v0

    .line 398
    :catchall_5d
    move-exception v0

    move-object v6, v1

    goto :goto_57

    .line 390
    :catch_60
    move-exception v0

    move-object v0, v1

    goto :goto_4f

    :cond_63
    move-object v0, v6

    goto :goto_4c

    :cond_65
    move-object v0, v6

    goto :goto_47
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    const-class v1, Lcom/google/googlenav/common/Config;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    iget-object v0, v0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e;->b()Ljava/lang/String;
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

.method public static declared-synchronized f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 449
    const-class v1, Lcom/google/googlenav/common/Config;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    iget-object v0, v0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e;->a()Ljava/lang/String;
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

.method public static getOrCreateInstance(Landroid/content/Context;)Lcom/google/googlenav/common/Config;
    .registers 3
    .parameter

    .prologue
    .line 274
    sget-object v1, Lcom/google/googlenav/common/Config;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_3
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    if-nez v0, :cond_c

    .line 276
    new-instance v0, Lcom/google/googlenav/common/Config;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/Config;-><init>(Landroid/content/Context;)V

    .line 278
    :cond_c
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    monitor-exit v1

    return-object v0

    .line 279
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    .prologue
    .line 541
    sget-object v0, Lcom/google/googlenav/common/Config;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static j()Z
    .registers 1

    .prologue
    .line 560
    sget-object v0, Lcom/google/googlenav/common/Config;->f:Lcom/google/googlenav/common/Config;

    iget-object v0, v0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e;->d()Z

    move-result v0

    return v0
.end method

.method public static v()Z
    .registers 2

    .prologue
    .line 705
    invoke-static {}, Lcom/google/googlenav/common/Config;->f()Ljava/lang/String;

    move-result-object v0

    .line 706
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
    .registers 3

    .prologue
    .line 825
    sget-object v0, Lcom/google/googlenav/common/Config;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 826
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 827
    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/Config;->h:Ljava/lang/Boolean;

    .line 830
    :cond_16
    sget-object v0, Lcom/google/googlenav/common/Config;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected B()Z
    .registers 3

    .prologue
    .line 846
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public C()Landroid/location/LocationManager;
    .registers 3

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public D()Landroid/content/Context;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    return-object v0
.end method

.method public a(D)I
    .registers 5
    .parameter

    .prologue
    .line 804
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/j;->a(D)I

    move-result v0

    return v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 5
    .parameter

    .prologue
    .line 693
    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public a(JJ)Ljava/lang/String;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 908
    const-wide/32 v4, 0xea60

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 484
    invoke-direct {p0}, Lcom/google/googlenav/common/Config;->G()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/googlenav/common/e;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 488
    sput-object p1, Lcom/google/googlenav/common/Config;->j:Landroid/content/Context;

    .line 489
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter

    .prologue
    .line 925
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/Config;->a(Ljava/util/Locale;)V

    .line 926
    return-void
.end method

.method public a(Ljava/util/Locale;)V
    .registers 5
    .parameter

    .prologue
    .line 836
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->g()Lcom/google/googlenav/common/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/e;->c(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->g()Lcom/google/googlenav/common/e;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/googlenav/common/Config;->G()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/common/Config;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/e;->d(Ljava/lang/String;)V

    .line 839
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 413
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/e;->a([Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 338
    new-instance v0, Lcom/google/googlenav/common/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/common/b;-><init>(Lcom/google/googlenav/common/Config;)V

    invoke-static {v0}, Lcom/google/googlenav/common/io/e;->a(Lcom/google/googlenav/common/io/f;)V

    .line 344
    return-void
.end method

.method public b([Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->B()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 858
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 859
    array-length v2, p1

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v2, :cond_1e

    aget-object v3, p1, v0

    .line 860
    invoke-static {v3}, Lcom/google/googlenav/common/e;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 861
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 864
    :cond_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 866
    :goto_2a
    return-object v0

    :cond_2b
    move-object v0, p1

    goto :goto_2a
.end method

.method public c(I)I
    .registers 6
    .parameter

    .prologue
    .line 797
    int-to-double v0, p1

    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->w()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/j;->a(D)I

    move-result v0

    return v0
.end method

.method protected c()Ljava/lang/String;
    .registers 4

    .prologue
    .line 354
    const-string v0, "Web"

    .line 355
    const-string v0, "maps_client_id"

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/Config;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 359
    const-string v0, "Web"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    :goto_18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    invoke-virtual {v0}, Lcom/google/googlenav/common/e;->c()Z

    move-result v0

    return v0
.end method

.method protected g()Lcom/google/googlenav/common/e;
    .registers 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->s:Lcom/google/googlenav/common/e;

    return-object v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 552
    const/16 v0, 0x22

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 568
    const-string v0, "6.11.1"

    return-object v0
.end method

.method public l()Lcom/google/googlenav/common/io/g;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->c:Lcom/google/googlenav/common/io/g;

    return-object v0
.end method

.method public m()Lcom/google/googlenav/common/io/j;
    .registers 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->k:Lcom/google/googlenav/common/io/j;

    return-object v0
.end method

.method public n()LS/h;
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->l:LS/h;

    return-object v0
.end method

.method public o()LS/b;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->m:LS/b;

    return-object v0
.end method

.method public p()Lcom/google/googlenav/common/d;
    .registers 1

    .prologue
    .line 613
    return-object p0
.end method

.method public q()Ljava/lang/String;
    .registers 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 623
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_17

    .line 625
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 643
    :cond_17
    :goto_17
    const-string v0, "Unknown"

    :goto_19
    return-object v0

    .line 627
    :pswitch_1a
    const-string v0, "WiFi"

    goto :goto_19

    .line 629
    :pswitch_1d
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 631
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    goto :goto_17

    .line 637
    :pswitch_2f
    const-string v0, "GPRS"

    goto :goto_19

    .line 633
    :pswitch_32
    const-string v0, "UMTS"

    goto :goto_19

    .line 635
    :pswitch_35
    const-string v0, "EDGE"

    goto :goto_19

    .line 625
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    .line 631
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_35
        :pswitch_32
    .end packed-switch
.end method

.method public r()I
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Lcom/google/googlenav/common/Config;->e:I

    return v0
.end method

.method public s()F
    .registers 2

    .prologue
    .line 656
    iget v0, p0, Lcom/google/googlenav/common/Config;->o:F

    return v0
.end method

.method public t()F
    .registers 2

    .prologue
    .line 660
    iget v0, p0, Lcom/google/googlenav/common/Config;->p:F

    return v0
.end method

.method public u()Lcom/google/googlenav/common/a;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->t:Lcom/google/googlenav/common/a;

    return-object v0
.end method

.method public w()D
    .registers 3

    .prologue
    .line 719
    iget v0, p0, Lcom/google/googlenav/common/Config;->n:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public x()Z
    .registers 3

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/google/googlenav/common/Config;->r()I

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

.method public y()Z
    .registers 3

    .prologue
    .line 770
    sget-object v0, Lcom/google/googlenav/common/Config;->q:Ljava/lang/Thread;

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

.method public z()Z
    .registers 3

    .prologue
    .line 811
    sget-object v0, Lcom/google/googlenav/common/Config;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    .line 812
    iget-object v0, p0, Lcom/google/googlenav/common/Config;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 813
    const-string v1, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/common/Config;->i:Ljava/lang/Boolean;

    .line 816
    :cond_16
    sget-object v0, Lcom/google/googlenav/common/Config;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
