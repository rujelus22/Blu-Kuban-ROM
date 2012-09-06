.class public LZE;
.super Ljava/lang/Object;
.source "OcrImageEvaluator.java"


# instance fields
.field a:LZy;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field a:LtI;
    .annotation runtime Lanr;
    .end annotation
.end field

.field b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LXP;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private a(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 74
    new-instance v0, LtD;

    iget-object v2, p0, LZE;->a:LanD;

    iget-object v3, p0, LZE;->b:LanD;

    invoke-direct {v0, v2, v3}, LtD;-><init>(LanD;LanD;)V

    invoke-virtual {v0, p1}, LtD;->a(Landroid/net/Uri;)LtD;

    move-result-object v0

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, LtD;->b(Ljava/lang/String;)LtD;

    move-result-object v0

    invoke-virtual {v0, v4}, LtD;->a(Z)LtD;

    move-result-object v0

    invoke-virtual {v0}, LtD;->a()LtB;

    move-result-object v0

    .line 81
    :try_start_1d
    invoke-virtual {v0}, LtB;->a()LtB;
    :try_end_20
    .catch LsZ; {:try_start_1d .. :try_end_20} :catch_40
    .catch LtH; {:try_start_1d .. :try_end_20} :catch_49

    move-result-object v2

    .line 94
    :try_start_21
    iget-object v0, p0, LZE;->a:LtI;

    invoke-interface {v0, v2}, LtI;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LtB;
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_5c

    .line 97
    :try_start_29
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v0}, LtB;->a()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_62
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_32} :catch_51

    .line 102
    const/4 v1, 0x1

    :try_start_33
    invoke-static {v2, v1}, LXs;->a(Ljava/io/InputStream;I)LXs;

    move-result-object v1

    invoke-virtual {v1}, LXs;->a()Landroid/graphics/Bitmap;
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_62

    move-result-object v1

    .line 104
    invoke-virtual {v0}, LtB;->a()V

    move-object v0, v1

    :goto_3f
    return-object v0

    .line 82
    :catch_40
    move-exception v0

    .line 83
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "ItemToUpload hasn\'t been published, so how can it be canceled?"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 84
    :catch_49
    move-exception v0

    .line 85
    const-string v2, "OcrImageEvaluator"

    invoke-static {v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 86
    goto :goto_3f

    .line 98
    :catch_51
    move-exception v2

    .line 99
    :try_start_52
    const-string v3, "OcrImageEvaluator"

    invoke-static {v3, v2}, LZA;->a(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_62

    .line 104
    invoke-virtual {v0}, LtB;->a()V

    move-object v0, v1

    goto :goto_3f

    :catchall_5c
    move-exception v0

    move-object v1, v2

    :goto_5e
    invoke-virtual {v1}, LtB;->a()V

    throw v0

    :catchall_62
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5e
.end method


# virtual methods
.method public a(Landroid/net/Uri;)LZF;
    .registers 7
    .parameter

    .prologue
    .line 54
    new-instance v0, LafX;

    invoke-direct {v0}, LafX;-><init>()V

    .line 56
    sget-object v1, LZF;->a:LZF;

    .line 57
    invoke-virtual {v0}, LafX;->a()LafX;

    .line 58
    invoke-direct {p0, p1}, LZE;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, LafX;->b()LafX;

    .line 60
    const-string v2, "OcrImageEvaluator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toBitmap took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v1, :cond_58

    .line 62
    invoke-virtual {v0}, LafX;->c()LafX;

    move-result-object v2

    invoke-virtual {v2}, LafX;->a()LafX;

    .line 63
    iget-object v2, p0, LZE;->a:LZy;

    invoke-virtual {v2, v1}, LZy;->a(Landroid/graphics/Bitmap;)Z

    move-result v1

    .line 64
    invoke-virtual {v0}, LafX;->b()LafX;

    .line 65
    const-string v2, "OcrImageEvaluator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlurred took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    if-eqz v1, :cond_58

    .line 67
    sget-object v0, LZF;->b:LZF;

    .line 70
    :goto_57
    return-object v0

    :cond_58
    sget-object v0, LZF;->a:LZF;

    goto :goto_57
.end method
