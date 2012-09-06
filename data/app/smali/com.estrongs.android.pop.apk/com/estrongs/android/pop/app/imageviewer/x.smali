.class public Lcom/estrongs/android/pop/app/imageviewer/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "Unknown"

    sput-object v0, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_26

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x48c35000

    div-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_7

    :catch_26
    move-exception v0

    const/4 v0, -0x2

    goto :goto_7
.end method

.method public static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)J
    .registers 5

    const-wide/16 v0, -0x1

    invoke-interface {p0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->e()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_8
    return-wide v0

    :cond_9
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_12

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Ljava/io/Closeable;)V

    goto :goto_8

    :catch_12
    move-exception v3

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Ljava/io/Closeable;)V

    goto :goto_8

    :catchall_17
    move-exception v0

    invoke-static {v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static a(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/estrongs/android/pop/app/imageviewer/an;)Lcom/estrongs/android/pop/app/imageviewer/ao;
    .registers 13

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_33

    const/16 v3, 0xa

    const v4, 0x7f09018e

    invoke-interface {p0, v6, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080051

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/ak;

    invoke-direct {v4, p5, p2}, Lcom/estrongs/android/pop/app/imageviewer/ak;-><init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_4f

    const/4 v3, 0x1

    const/4 v4, 0x6

    const v5, 0x7f090004

    invoke-interface {p0, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/al;

    invoke-direct {v4, p5, p2}, Lcom/estrongs/android/pop/app/imageviewer/al;-><init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x1080052

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4f
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_72

    const/4 v3, 0x3

    const/16 v4, 0x8

    const v5, 0x7f090009

    invoke-interface {p0, v6, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/ad;

    invoke-direct {v4, p5, p2, p4}, Lcom/estrongs/android/pop/app/imageviewer/ad;-><init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x64

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02008c

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_72
    and-int/lit8 v3, p1, 0x40

    if-eqz v3, :cond_8e

    const/16 v3, 0xb

    const v4, 0x7f090044

    invoke-interface {p0, v6, v6, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    new-instance v4, Lcom/estrongs/android/pop/app/imageviewer/ae;

    invoke-direct {v4, p5, p3, p2}, Lcom/estrongs/android/pop/app/imageviewer/ae;-><init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/os/Handler;Landroid/app/Activity;)V

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020095

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_8e
    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/af;

    invoke-direct {v3, v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/af;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static a(Landroid/app/Activity;)V
    .registers 2

    invoke-static {}, Lcom/estrongs/android/pop/app/imageviewer/x;->a()I

    move-result v0

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public static a(Landroid/app/Activity;I)V
    .registers 5

    const v2, 0x7f0900a7

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_24

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checking"

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_13
    :goto_13
    if-eqz v0, :cond_1e

    const/16 v1, 0x1388

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1e
    return-void

    :cond_1f
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_24
    const/4 v1, 0x1

    if-ge p1, v1, :cond_13

    const v0, 0x7f0901a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method static a(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .registers 4

    invoke-static {p2}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static a(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 6

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_gallery_confirm_delete_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f09002e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_12
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 7

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ag;

    invoke-direct {v0, p3}, Lcom/estrongs/android/pop/app/imageviewer/ag;-><init>(Ljava/lang/Runnable;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/view/MenuItem;Z)V
    .registers 2

    if-eqz p0, :cond_8

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_8
    return-void
.end method

.method private static a(Landroid/view/View;)V
    .registers 2

    const v0, 0x7f070127

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;I)V

    const v0, 0x7f07012a

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;I)V

    const v0, 0x7f07012d

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;I)V

    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->b(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V

    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/String;I)V
    .registers 4

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/view/View;Landroid/app/Activity;)V
    .registers 5

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    const v1, 0x7f07012c

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Ljava/lang/String;I)V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    const v1, 0x7f07012f

    invoke-static {p1, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/net/Uri;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const-string v4, "media"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_45
    move v0, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/x;->c(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->b(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/os/Handler;Landroid/app/Activity;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->b(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/os/Handler;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/view/View;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/app/Activity;)V
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->k()I

    move-result v2

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->j()I

    move-result v0

    :goto_f
    sget-object v3, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    if-lez v2, :cond_6e

    if-lez v0, :cond_6e

    const v3, 0x7f0902e7

    invoke-virtual {p2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_30
    const v1, 0x7f070129

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Ljava/lang/String;I)V

    sget-object v0, Lcom/estrongs/android/pop/app/imageviewer/x;->a:Ljava/lang/String;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->m()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_54

    new-instance v0, Ljava/util/Date;

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->m()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1}, Ljava/text/SimpleDateFormat;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :cond_54
    const v1, 0x7f070126

    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;Ljava/lang/String;I)V

    const-string v0, "image/jpeg"

    invoke-interface {p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-static {p1, p0, p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Landroid/view/View;Landroid/app/Activity;)V

    :goto_69
    return-void

    :cond_6a
    invoke-static {p0}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/View;)V

    goto :goto_69

    :cond_6e
    move-object v0, v3

    goto :goto_30

    :cond_70
    move v0, v1

    move v2, v1

    goto :goto_f
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/x;->d(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)Z
    .registers 4

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/aj;

    invoke-direct {v0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/aj;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-interface {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(Lcom/estrongs/android/pop/app/imageviewer/am;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static b(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/os/Handler;Landroid/app/Activity;)Z
    .registers 4

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/y;

    invoke-direct {v0, p2, p1}, Lcom/estrongs/android/pop/app/imageviewer/y;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-interface {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(Lcom/estrongs/android/pop/app/imageviewer/am;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static c(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z
    .registers 3

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ah;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ah;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(Lcom/estrongs/android/pop/app/imageviewer/am;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static d(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z
    .registers 3

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ai;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ai;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/an;->a(Lcom/estrongs/android/pop/app/imageviewer/am;)V

    const/4 v0, 0x1

    return v0
.end method
