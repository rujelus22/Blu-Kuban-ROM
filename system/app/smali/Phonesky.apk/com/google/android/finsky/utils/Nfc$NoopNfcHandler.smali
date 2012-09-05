.class Lcom/google/android/finsky/utils/Nfc$NoopNfcHandler;
.super Ljava/lang/Object;
.source "Nfc.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Nfc$NfcHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/Nfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoopNfcHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/utils/Nfc$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/android/finsky/utils/Nfc$NoopNfcHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChanged()V
    .registers 1

    .prologue
    .line 78
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method
