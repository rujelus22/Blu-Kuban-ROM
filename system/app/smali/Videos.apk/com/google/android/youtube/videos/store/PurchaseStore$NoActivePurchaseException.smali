.class public Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;
.super Ljava/lang/Exception;
.source "PurchaseStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/store/PurchaseStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoActivePurchaseException"
.end annotation


# instance fields
.field public final inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Purchase;)V
    .registers 2
    .parameter "inactivePurchase"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/android/youtube/videos/store/PurchaseStore$NoActivePurchaseException;->inactivePurchase:Lcom/google/android/youtube/core/model/Purchase;

    .line 58
    return-void
.end method
