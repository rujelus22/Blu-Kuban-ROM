.class Lcom/google/googlenav/ui/view/android/L;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/I;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/android/I;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/L;->a:Lcom/google/googlenav/ui/view/android/I;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/L;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/L;->c:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/L;)Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->c:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Ljava/io/File;)V
    .registers 4

    new-instance v0, Lcom/google/googlenav/ui/view/android/M;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/view/android/M;-><init>(Lcom/google/googlenav/ui/view/android/L;Landroid/net/Uri;)V

    invoke-static {v0, p2}, LL/c;->a(LL/e;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/content/Intent;)V
    .registers 12

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-ne p2, v5, :cond_45

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/L;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_24

    :cond_1d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/L;->a(Landroid/net/Uri;Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_24} :catch_37

    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->a:Lcom/google/googlenav/ui/view/android/I;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0xb

    new-instance v2, Lcom/google/googlenav/ui/wizard/bx;

    const-string v3, "image/jpeg"

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/L;->b:Ljava/lang/String;

    invoke-direct {v2, v6, v3, v4}, Lcom/google/googlenav/ui/wizard/bx;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    const-string v1, "MAPS"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->a:Lcom/google/googlenav/ui/view/android/I;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v7, v5, v6}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_24

    :cond_45
    if-nez p2, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->a:Lcom/google/googlenav/ui/view/android/I;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/I;->f:Lcom/google/googlenav/ui/p;

    invoke-interface {v0, v7, v5, v6}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    goto :goto_36
.end method

.method public ab_()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
