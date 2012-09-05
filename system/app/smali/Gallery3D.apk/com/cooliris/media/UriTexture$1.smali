.class final Lcom/cooliris/media/UriTexture$1;
.super Ljava/lang/Thread;
.source "UriTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/UriTexture;->createFromUri(Landroid/content/Context;Ljava/lang/String;IIJLorg/apache/http/conn/ClientConnectionManager;Z)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$options:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)V
    .registers 3
    .parameter "x0"
    .parameter

    .prologue
    .line 284
    iput-object p2, p0, Lcom/cooliris/media/UriTexture$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, sleepCnt:I
    :cond_1
    const-wide/16 v2, 0x1f4

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    invoke-static {}, Lcom/cooliris/media/UriTexture;->access$000()Z

    move-result v2

    if-nez v2, :cond_12

    const/16 v2, 0x28

    if-lt v1, v2, :cond_1

    .line 295
    :cond_12
    invoke-static {}, Lcom/cooliris/media/UriTexture;->access$000()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 296
    iget-object v2, p0, Lcom/cooliris/media/UriTexture$1;->val$options:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v2}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_1d} :catch_1e

    .line 300
    :cond_1d
    :goto_1d
    return-void

    .line 297
    :catch_1e
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d
.end method
