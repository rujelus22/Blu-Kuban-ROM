.class public final Lcom/twitter/android/dc;
.super Lcom/twitter/android/dd;


# instance fields
.field a:Ljava/lang/String;

.field public b:Landroid/net/Uri;

.field public c:I

.field public d:Landroid/graphics/Bitmap;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/twitter/android/dd;-><init>(Ljava/lang/String;II)V

    iput-object p2, p0, Lcom/twitter/android/dc;->b:Landroid/net/Uri;

    iput v1, p0, Lcom/twitter/android/dc;->c:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/dc;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/dc;->i:Ljava/lang/String;

    return-void
.end method
