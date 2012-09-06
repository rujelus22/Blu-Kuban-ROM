.class Lcom/google/android/picasastore/PicasaStore$ImagePack;
.super Ljava/lang/Object;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasastore/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagePack"
.end annotation


# instance fields
.field public final data:[B

.field public final offset:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3
    .parameter "offset"
    .parameter "data"

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput p1, p0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->offset:I

    .line 644
    iput-object p2, p0, Lcom/google/android/picasastore/PicasaStore$ImagePack;->data:[B

    .line 645
    return-void
.end method
