.class final Lcom/google/zxing/client/android/a;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/zxing/client/android/CaptureActivity;

.field private final c:Lcom/google/zxing/f;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/google/zxing/client/android/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/util/Hashtable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/client/android/a;->d:Z

    .line 43
    new-instance v0, Lcom/google/zxing/f;

    invoke-direct {v0}, Lcom/google/zxing/f;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    .line 44
    iget-object v0, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    invoke-virtual {v0, p2}, Lcom/google/zxing/f;->a(Ljava/util/Hashtable;)V

    .line 45
    iput-object p1, p0, Lcom/google/zxing/client/android/a;->b:Lcom/google/zxing/client/android/CaptureActivity;

    .line 46
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/zxing/client/android/a;->d:Z

    if-nez v0, :cond_5

    .line 59
    :cond_4
    :goto_4
    return-void

    .line 53
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f08000d

    if-ne v0, v1, :cond_9d

    .line 54
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/google/zxing/client/android/a;->b:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/CaptureActivity;->c()Lcom/google/zxing/client/android/a/c;

    move-result-object v6

    invoke-virtual {v6, v0, v2, v3}, Lcom/google/zxing/client/android/a/c;->a([BII)Lcom/google/zxing/client/android/g;

    move-result-object v2

    if-eqz v2, :cond_b0

    new-instance v0, Lcom/google/zxing/c;

    new-instance v3, Lcom/google/zxing/common/m;

    invoke-direct {v3, v2}, Lcom/google/zxing/common/m;-><init>(Lcom/google/zxing/e;)V

    invoke-direct {v0, v3}, Lcom/google/zxing/c;-><init>(Lcom/google/zxing/b;)V

    :try_start_2f
    iget-object v3, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    invoke-virtual {v3, v0}, Lcom/google/zxing/f;->a(Lcom/google/zxing/c;)Lcom/google/zxing/h;
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_88
    .catch Lcom/google/zxing/ReaderException; {:try_start_2f .. :try_end_34} :catch_80

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    invoke-virtual {v1}, Lcom/google/zxing/f;->a()V

    :goto_3a
    iget-object v1, p0, Lcom/google/zxing/client/android/a;->b:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/CaptureActivity;->b()Landroid/os/Handler;

    move-result-object v1

    if-eqz v0, :cond_8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v3, Lcom/google/zxing/client/android/a;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Found barcode in "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v4, v6, v4

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    const v3, 0x7f08000f

    invoke-static {v1, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "barcode_bitmap"

    invoke-virtual {v2}, Lcom/google/zxing/client/android/g;->d()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :catch_80
    move-exception v0

    iget-object v0, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    invoke-virtual {v0}, Lcom/google/zxing/f;->a()V

    move-object v0, v1

    goto :goto_3a

    :catchall_88
    move-exception v0

    iget-object v1, p0, Lcom/google/zxing/client/android/a;->c:Lcom/google/zxing/f;

    invoke-virtual {v1}, Lcom/google/zxing/f;->a()V

    throw v0

    :cond_8f
    if-eqz v1, :cond_4

    const v0, 0x7f08000e

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    .line 55
    :cond_9d
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f080011

    if-ne v0, v1, :cond_4

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/client/android/a;->d:Z

    .line 57
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_4

    :cond_b0
    move-object v0, v1

    goto :goto_3a
.end method
