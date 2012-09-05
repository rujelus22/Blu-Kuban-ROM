.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->responseEncodeCompleted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1606
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->loadImageFiles()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2700(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 1607
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updateSettingButton()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2800(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 1608
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback$1;->this$1:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$EncoderCallback;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #calls: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->updatePrintButton()V
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$2900(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V

    .line 1609
    return-void
.end method
