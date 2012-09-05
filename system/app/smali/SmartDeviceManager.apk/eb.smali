.class public final Leb;
.super Lef;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lef",
        "<[B>;"
    }
.end annotation


# instance fields
.field public a:[B

.field private c:Leg;


# direct methods
.method public constructor <init>([B)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0, v0}, Leb;-><init>([BLjava/lang/String;Leg;)V

    .line 25
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Leg;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p2}, Lef;-><init>(Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Leb;->a:[B

    .line 19
    iput-object p3, p0, Leb;->c:Leg;

    .line 20
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 32
    iget-object v0, p0, Leb;->a:[B

    if-nez v0, :cond_7

    move-object v0, v1

    .line 47
    :goto_6
    return-object v0

    .line 35
    :cond_7
    iget-object v0, p0, Leb;->a:[B

    if-eqz v0, :cond_10

    iget-object v0, p0, Leb;->a:[B

    array-length v0, v0

    if-nez v0, :cond_12

    :cond_10
    move-object v0, v1

    .line 36
    goto :goto_6

    .line 38
    :cond_12
    iget-object v0, p0, Leb;->a:[B

    const/4 v1, 0x0

    iget-object v2, p0, Leb;->a:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    iget-object v1, p0, Leb;->c:Leg;

    sget-object v2, Leg;->a:Leg;

    if-ne v1, v2, :cond_2f

    .line 40
    invoke-static {}, Lah;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_2f

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 46
    :cond_2f
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 47
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v2

    goto :goto_6
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Leb;->a:[B

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
