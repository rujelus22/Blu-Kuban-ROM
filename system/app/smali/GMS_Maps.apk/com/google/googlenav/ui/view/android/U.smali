.class public Lcom/google/googlenav/ui/view/android/U;
.super Lcom/google/googlenav/ui/view/android/bj;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lcom/google/googlenav/android/U;

.field private final k:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tmpGmmPhoto.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/view/android/U;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;Lbb/o;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/bj;-><init>(Lcom/google/googlenav/ui/p;Lbb/o;)V

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    const/4 v1, 0x1

    new-instance v2, Lcom/google/googlenav/ui/view/android/W;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/W;-><init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/U;->a(ILcom/google/googlenav/android/V;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/googlenav/ui/view/android/X;

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/U;->a(ILcom/google/googlenav/android/V;)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/U;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/android/BaseMapsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->k:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/U;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/U;->y()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/view/android/U;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/U;->z()V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/view/android/U;)Lcom/google/googlenav/android/U;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/view/android/U;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->k:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/view/android/U;->c:Ljava/lang/String;

    return-object v0
.end method

.method private y()V
    .registers 6

    const/4 v4, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/U;->m()Lbb/s;

    move-result-object v0

    iget v0, v0, Lbb/s;->y:I

    if-nez v0, :cond_20

    const-string v0, "output"

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/google/googlenav/ui/view/android/U;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_20
    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/U;->m()Lbb/s;

    move-result-object v0

    iget v0, v0, Lbb/s;->y:I

    if-eqz v0, :cond_35

    new-instance v0, Lcom/google/googlenav/ui/view/android/W;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/W;-><init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V

    :goto_31
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void

    :cond_35
    new-instance v0, Lcom/google/googlenav/ui/view/android/X;

    invoke-direct {v0, p0, v4}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V

    goto :goto_31
.end method

.method private z()V
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/U;->m()Lbb/s;

    move-result-object v0

    iget v0, v0, Lbb/s;->y:I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v0, :cond_35

    const-string v2, "return-data"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "outputX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "outputY"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectX"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "aspectY"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    new-instance v2, Lcom/google/googlenav/ui/view/android/X;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/googlenav/ui/view/android/X;-><init>(Lcom/google/googlenav/ui/view/android/U;Lcom/google/googlenav/ui/view/android/V;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/U;->a(Landroid/content/Intent;Lcom/google/googlenav/android/V;)V

    return-void
.end method


# virtual methods
.method protected k()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/V;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/view/android/U;)V

    return-object v0
.end method

.method public l()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/U;->d:Lcom/google/googlenav/android/U;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/android/U;->a(I)V

    return-void
.end method

.method protected m()Lbb/s;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/U;->i()Lbb/f;

    move-result-object v0

    check-cast v0, Lbb/s;

    return-object v0
.end method
