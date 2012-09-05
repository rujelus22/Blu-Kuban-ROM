.class Lcom/google/android/picasasync/PicasaStore$ImagePack;
.super Ljava/lang/Object;
.source "PicasaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/picasasync/PicasaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImagePack"
.end annotation


# instance fields
.field public data:[B

.field public offset:I


# direct methods
.method constructor <init>(I[B)V
    .registers 3
    .parameter "offset"
    .parameter "data"

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput p1, p0, Lcom/google/android/picasasync/PicasaStore$ImagePack;->offset:I

    .line 714
    iput-object p2, p0, Lcom/google/android/picasasync/PicasaStore$ImagePack;->data:[B

    .line 715
    return-void
.end method
