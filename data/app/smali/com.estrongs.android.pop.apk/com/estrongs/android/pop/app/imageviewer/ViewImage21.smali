.class public Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;
.super Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Lcom/estrongs/android/pop/app/imageviewer/ao;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private E:Lcom/estrongs/android/pop/app/imageviewer/l;

.field a:Z

.field final b:Lcom/estrongs/android/pop/app/imageviewer/k;

.field protected c:I

.field protected d:Z

.field e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

.field f:Landroid/view/GestureDetector;

.field protected g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

.field protected h:Landroid/view/View;

.field protected i:Landroid/view/View;

.field protected j:Landroid/view/View;

.field protected k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

.field protected l:Landroid/view/LayoutInflater;

.field protected m:Landroid/util/DisplayMetrics;

.field protected n:Ljava/lang/Runnable;

.field protected o:J

.field protected p:Landroid/view/ViewGroup$LayoutParams;

.field private q:Lcom/estrongs/android/pop/app/imageviewer/o;

.field private r:Landroid/net/Uri;

.field private s:Z

.field private t:I

.field private u:Z

.field private v:Landroid/content/SharedPreferences;

.field private w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;-><init>()V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/k;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/k;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iput v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    iput v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/s;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/imageviewer/s;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ay;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/ay;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bj;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bk;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->p:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method private a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;
    .registers 5

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->k()I

    move-result v1

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->l()I

    move-result v2

    const/4 v0, 0x1

    if-nez v1, :cond_16

    if-eqz v2, :cond_16

    const/4 v0, 0x2

    :cond_16
    const-string v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    :goto_2a
    return-object v0

    :cond_2b
    invoke-static {p0}, Lcom/estrongs/android/pop/d/n;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/d/n;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageManager;->a(Lcom/estrongs/android/pop/d/f;Ljava/lang/String;I)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v0

    goto :goto_2a
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/l;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Lcom/estrongs/android/pop/app/imageviewer/l;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Lcom/estrongs/android/pop/app/imageviewer/o;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/net/Uri;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/l;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Lcom/estrongs/android/pop/app/imageviewer/l;

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    move-result-object v1

    iput-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/ESGallery;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    return-object v0
.end method

.method private c(I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Landroid/widget/TextView;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3e
    return-void
.end method

.method private d(I)V
    .registers 4

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    if-ge v0, v1, :cond_14

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_14
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Z

    return v0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)I
    .registers 2

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    return v0
.end method

.method private f()V
    .registers 3

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->s:Z

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    if-nez v0, :cond_16

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    :cond_16
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    return v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)Lcom/estrongs/android/pop/app/imageviewer/o;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_d
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1b

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1b
    return-object p1
.end method

.method protected a()V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/k;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected a(I)V
    .registers 6

    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Landroid/view/LayoutInflater;

    const v2, 0x7f03003f

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v2, p1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    new-instance v3, Lcom/estrongs/android/pop/app/imageviewer/bo;

    invoke-direct {v3, p0, p1, v0}, Lcom/estrongs/android/pop/app/imageviewer/bo;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v1, v2, v3, p1}, Lcom/estrongs/android/pop/app/imageviewer/o;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;Lcom/estrongs/android/pop/app/imageviewer/p;I)V

    goto :goto_c
.end method

.method a(IZ)V
    .registers 6

    const/4 v2, 0x0

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->b(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(I)V

    :goto_1b
    if-eqz p2, :cond_20

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    :cond_20
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    return-void

    :cond_24
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v1, :cond_3b

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    goto :goto_1b

    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    goto :goto_1b
.end method

.method protected a(Landroid/view/View;)V
    .registers 4

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bs;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f:Landroid/view/GestureDetector;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bl;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bm;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/bm;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected a(Z)V
    .registers 6

    if-eqz p1, :cond_1a

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/k;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_19
    return-void

    :cond_1a
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/k;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method b(I)V
    .registers 6

    const/16 v3, 0x400

    const/16 v2, 0x80

    iput p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Z

    if-eqz v1, :cond_18

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_17

    :cond_1c
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_17
.end method

.method b()Z
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method protected c()V
    .registers 8

    const-wide/16 v5, 0x320

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const v2, 0x3dcccccd

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a()V

    :goto_1a
    return-void

    :cond_1b
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setAnimateFirstView(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->f()V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    goto :goto_1a
.end method

.method protected d()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->setAnimateFirstView(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b(I)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    :try_start_6
    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_b

    move-result v0

    goto :goto_5

    :catch_b
    move-exception v1

    goto :goto_5
.end method

.method protected e()Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;
    .registers 5

    const/4 v3, 0x5

    const/4 v2, 0x0

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->a(Z)V

    invoke-virtual {v0, v3, v2, v3, v2}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->setPadding(IIII)V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    packed-switch p1, :pswitch_data_32

    :cond_3
    :goto_3
    return-void

    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Landroid/net/Uri;)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->finish()V

    goto :goto_3

    :cond_23
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v1, v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(IZ)V

    goto :goto_3

    :pswitch_data_32
    .packed-switch 0x1ea
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    :goto_7
    return-void

    :pswitch_8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(I)V

    goto :goto_7

    :pswitch_d
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->d(I)V

    goto :goto_7

    :pswitch_data_12
    .packed-switch 0x7f07013b
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_e

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    :cond_e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->m:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->u:Z

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->v:Landroid/content/SharedPreferences;

    const-string v1, "slide_setting_interval"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->o:J

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->setContentView(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v0, -0x100

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    const v0, 0x7f07011c

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->G(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12d

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/a/d;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    :goto_76
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/bq;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/bq;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->a(Lcom/estrongs/android/pop/app/imageviewer/j;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setCallbackDuringFling(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    const/high16 v2, 0x3f00

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setUnselectedAlpha(F)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->w:Lcom/estrongs/android/pop/app/imageviewer/ESGallery;

    new-instance v2, Lcom/estrongs/android/pop/app/imageviewer/br;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/imageviewer/br;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/app/imageviewer/ESGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f070134

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(Z)V

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/az;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/az;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {v2, v0}, Lcom/estrongs/android/pop/view/RealViewSwitcher;->a(Lcom/estrongs/android/pop/view/ld;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->k:Lcom/estrongs/android/pop/view/RealViewSwitcher;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Landroid/view/View;)V

    const v0, 0x7f070137

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->x:Landroid/widget/TextView;

    const v0, 0x7f070136

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f07013a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/ba;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/ba;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/bd;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/bd;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070139

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->j:Landroid/view/View;

    new-instance v1, Lcom/estrongs/android/pop/app/imageviewer/be;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/imageviewer/be;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    if-eqz v0, :cond_11a

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->h:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->i:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_11a
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->l:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/estrongs/android/pop/app/imageviewer/bf;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/imageviewer/bf;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/bf;->start()V

    return-void

    :cond_12d
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->r:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->A:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->z:Z

    goto/16 :goto_76
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 8

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v1, -0x1

    iget-object v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    iget-object v4, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->n:Ljava/lang/Runnable;

    new-instance v5, Lcom/estrongs/android/pop/app/imageviewer/bn;

    invoke-direct {v5, p0}, Lcom/estrongs/android/pop/app/imageviewer/bn;-><init>(Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;)V

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/Menu;ILandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/estrongs/android/pop/app/imageviewer/an;)Lcom/estrongs/android/pop/app/imageviewer/ao;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Lcom/estrongs/android/pop/app/imageviewer/ao;

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->b:Lcom/estrongs/android/pop/app/imageviewer/k;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/k;->a()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    invoke-interface {v0}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a()V

    :cond_e
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Lcom/estrongs/android/pop/app/imageviewer/l;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->E:Lcom/estrongs/android/pop/app/imageviewer/l;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/l;->a()V

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->a()[I

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/o;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->q:Lcom/estrongs/android/pop/app/imageviewer/o;

    :cond_28
    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->g:Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/imageviewer/ImageViewTouch;->b()V

    :cond_31
    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onDestroy()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Lcom/estrongs/android/pop/app/imageviewer/ao;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->B:Lcom/estrongs/android/pop/app/imageviewer/ao;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v3, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/estrongs/android/pop/app/imageviewer/ao;->a(Landroid/view/MenuItem;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    :cond_15
    return v0
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_f
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/net/Uri;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/MenuItem;Z)V

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-static {v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/net/Uri;)Z

    move-result v1

    invoke-static {v2, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/view/MenuItem;Z)V

    goto :goto_e
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a:Z

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->a(Z)V

    :cond_f
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/app/imageviewer/NoSearchActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "uri"

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->e:Lcom/estrongs/android/pop/app/imageviewer/gallery/f;

    iget v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->c:I

    invoke-interface {v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/gallery/f;->a(I)Lcom/estrongs/android/pop/app/imageviewer/gallery/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/estrongs/android/pop/app/imageviewer/gallery/e;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "slideshow"

    iget v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ViewImage21;->t:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method
