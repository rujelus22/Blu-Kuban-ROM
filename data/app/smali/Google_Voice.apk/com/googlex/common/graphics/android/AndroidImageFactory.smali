.class public Lcom/googlex/common/graphics/android/AndroidImageFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/common/graphics/ImageFactory;


# instance fields
.field private final context:Landroid/content/Context;

.field private stringIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createImage(II)Lcom/googlex/common/graphics/GoogleImage;
    .registers 4

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(II)V

    return-object v0
.end method

.method public createImage(IIZ)Lcom/googlex/common/graphics/GoogleImage;
    .registers 5

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(IIZ)V

    return-object v0
.end method

.method public createImage(Ljava/lang/String;)Lcom/googlex/common/graphics/GoogleImage;
    .registers 6

    iget-object v0, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    if-nez v0, :cond_4

    :cond_4
    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    iget-object v1, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    sget-object v3, Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_ENABLED:Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;)V

    return-object v0
.end method

.method public createImage([BII)Lcom/googlex/common/graphics/GoogleImage;
    .registers 5

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>([BII)V

    return-object v0
.end method

.method public createRGBImage([IIIZ)Lcom/googlex/common/graphics/GoogleImage;
    .registers 6

    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>([IIIZ)V

    return-object v0
.end method

.method public createScaledJpeg([BII)[B
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public createSquareImage([BI)Lcom/googlex/common/graphics/GoogleImage;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlex/common/graphics/android/AndroidImageFactory;->createImage([BII)Lcom/googlex/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/googlex/common/graphics/ImageUtil;->createSquareImage(Lcom/googlex/common/graphics/GoogleImage;I)Lcom/googlex/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public createUnscaledImage(Ljava/lang/String;)Lcom/googlex/common/graphics/GoogleImage;
    .registers 6

    iget-object v0, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    if-nez v0, :cond_4

    :cond_4
    new-instance v0, Lcom/googlex/common/graphics/android/AndroidImage;

    iget-object v1, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    sget-object v3, Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;->AUTO_SCALE_DISABLED:Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/googlex/common/graphics/android/AndroidImage;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Lcom/googlex/common/graphics/android/AndroidImage$AutoScale;)V

    return-object v0
.end method

.method public setStringIdMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/googlex/common/graphics/android/AndroidImageFactory;->stringIdMap:Ljava/util/Map;

    return-void
.end method
