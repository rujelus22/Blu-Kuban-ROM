.class public Lcom/google/googlenav/ui/view/android/I;
.super Lcom/google/googlenav/ui/view/android/bj;


# static fields
.field private static final c:Ljava/io/File;

.field private static final d:Ljava/io/File;


# instance fields
.field private final k:Lcom/google/googlenav/android/U;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const/16 v2, 0x2d7

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/I;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "download"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/google/googlenav/ui/view/android/I;->d:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/o;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/I;->k:Lcom/google/googlenav/android/U;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/I;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/I;->m()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/I;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/I;->n()V

    return-void
.end method

.method private m()V
    .registers 8

    const/16 v6, 0x2d6

    const/16 v5, 0xc

    const/4 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_d
    sget-object v1, Lcom/google/googlenav/ui/view/android/I;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1a

    sget-object v1, Lcom/google/googlenav/ui/view/android/I;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1a
    const-string v1, "gmm"

    const-string v2, ".jpg"

    sget-object v3, Lcom/google/googlenav/ui/view/android/I;->c:Ljava/io/File;

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v2, Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/I;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/google/googlenav/ui/view/android/L;-><init>(Lcom/google/googlenav/ui/view/android/I;Ljava/lang/String;Landroid/content/ContentResolver;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/I;->k:Lcom/google/googlenav/android/U;

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_43} :catch_44
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_43} :catch_4f

    :goto_43
    return-void

    :catch_44
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v4, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_43

    :catch_4f
    move-exception v0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    invoke-static {v6}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v5, v4, v1}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_43
.end method

.method private n()V
    .registers 5

    sget-object v0, Lcom/google/googlenav/ui/view/android/I;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lcom/google/googlenav/ui/view/android/I;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/I;->k:Lcom/google/googlenav/android/U;

    new-instance v2, Lcom/google/googlenav/ui/view/android/K;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/I;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/K;-><init>(Lcom/google/googlenav/ui/view/android/I;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void
.end method


# virtual methods
.method protected k()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/J;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/J;-><init>(Lcom/google/googlenav/ui/view/android/I;)V

    return-object v0
.end method
