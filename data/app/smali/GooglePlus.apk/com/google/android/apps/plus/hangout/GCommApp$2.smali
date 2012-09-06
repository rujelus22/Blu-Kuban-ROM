.class Lcom/google/android/apps/plus/hangout/GCommApp$2;
.super Landroid/os/AsyncTask;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;-><init>(Lcom/google/android/apps/plus/phone/EsApplication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/GCommApp;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/GCommApp;)V
    .registers 2
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/GCommApp$2;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/GCommApp$2;->this$0:Lcom/google/android/apps/plus/hangout/GCommApp;

    #calls: Lcom/google/android/apps/plus/hangout/GCommApp;->getCaptureSessionType()Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->access$2000(Lcom/google/android/apps/plus/hangout/GCommApp;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$2;->doInBackground([Ljava/lang/Void;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;)V
    .registers 5
    .parameter "result"

    .prologue
    .line 373
    invoke-virtual {p1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;->ordinal()I

    move-result v0

    .line 374
    .local v0, resultInt:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device capture type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 375
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->nativeStaticSetDeviceCaptureType(I)V

    .line 376
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 370
    check-cast p1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/hangout/GCommApp$2;->onPostExecute(Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$DeviceCaptureType;)V

    return-void
.end method
