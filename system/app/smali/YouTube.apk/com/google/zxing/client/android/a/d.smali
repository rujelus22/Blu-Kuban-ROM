.class final Lcom/google/zxing/client/android/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/zxing/client/android/a/b;

.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/zxing/client/android/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/a/b;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/zxing/client/android/a/d;->b:Lcom/google/zxing/client/android/a/b;

    .line 35
    return-void
.end method


# virtual methods
.method final a(Landroid/os/Handler;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/zxing/client/android/a/d;->c:Landroid/os/Handler;

    .line 39
    iput p2, p0, Lcom/google/zxing/client/android/a/d;->d:I

    .line 40
    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/zxing/client/android/a/d;->b:Lcom/google/zxing/client/android/a/b;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/b;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/zxing/client/android/a/d;->c:Landroid/os/Handler;

    .line 45
    if-eqz v1, :cond_1b

    .line 46
    iget v2, p0, Lcom/google/zxing/client/android/a/d;->d:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/zxing/client/android/a/d;->c:Landroid/os/Handler;

    .line 53
    :goto_1a
    return-void

    .line 51
    :cond_1b
    sget-object v0, Lcom/google/zxing/client/android/a/d;->a:Ljava/lang/String;

    const-string v1, "Got preview callback, but no handler for it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method
