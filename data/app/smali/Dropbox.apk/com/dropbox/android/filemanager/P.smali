.class abstract Lcom/dropbox/android/filemanager/P;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field protected final b:Lcom/dropbox/android/filemanager/O;

.field protected final c:I

.field protected final d:I


# direct methods
.method private constructor <init>(Lcom/dropbox/android/filemanager/O;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    iput-object p1, p0, Lcom/dropbox/android/filemanager/P;->b:Lcom/dropbox/android/filemanager/O;

    .line 626
    iput p2, p0, Lcom/dropbox/android/filemanager/P;->c:I

    .line 627
    iput p3, p0, Lcom/dropbox/android/filemanager/P;->d:I

    .line 628
    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/filemanager/O;IILcom/dropbox/android/filemanager/G;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-direct {p0, p1, p2, p3}, Lcom/dropbox/android/filemanager/P;-><init>(Lcom/dropbox/android/filemanager/O;II)V

    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/filemanager/P;Landroid/content/Context;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/P;->b(Landroid/content/Context;)V

    return-void
.end method

.method private final b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 633
    invoke-virtual {p0, p1}, Lcom/dropbox/android/filemanager/P;->a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/dropbox/android/filemanager/P;->b:Lcom/dropbox/android/filemanager/O;

    if-nez v1, :cond_10

    .line 637
    if-eqz v0, :cond_f

    .line 638
    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 643
    :cond_f
    :goto_f
    return-void

    .line 641
    :cond_10
    iget-object v1, p0, Lcom/dropbox/android/filemanager/P;->b:Lcom/dropbox/android/filemanager/O;

    iget v2, p0, Lcom/dropbox/android/filemanager/P;->c:I

    invoke-interface {v1, v2, v0}, Lcom/dropbox/android/filemanager/O;->a(ILcom/dropbox/android/filemanager/Q;)V

    goto :goto_f
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
.end method
