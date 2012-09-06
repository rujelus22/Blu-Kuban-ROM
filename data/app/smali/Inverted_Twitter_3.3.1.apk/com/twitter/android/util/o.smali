.class public Lcom/twitter/android/util/o;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/Object;

.field private d:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/util/o;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/twitter/android/util/o;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/twitter/android/util/o;->b:I

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/util/o;->d:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/util/o;->d:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/twitter/android/util/o;->d:Ljava/lang/ref/SoftReference;

    return-void
.end method
