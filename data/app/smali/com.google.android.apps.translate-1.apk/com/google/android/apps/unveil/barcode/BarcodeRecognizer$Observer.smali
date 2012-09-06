.class public interface abstract Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Observer;
.super Ljava/lang/Object;
.source "BarcodeRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onDoneAnalyzing(JI)V
.end method

.method public abstract onEndStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V
.end method

.method public abstract onStartStage(Lcom/google/android/apps/unveil/barcode/BarcodeRecognizer$Stage;I)V
.end method
