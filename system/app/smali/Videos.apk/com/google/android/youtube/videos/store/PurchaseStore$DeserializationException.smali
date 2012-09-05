.class Lcom/google/android/youtube/videos/store/PurchaseStore$DeserializationException;
.super Ljava/lang/Exception;
.source "PurchaseStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeserializationException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .registers 2
    .parameter "wrapped"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 111
    return-void
.end method
