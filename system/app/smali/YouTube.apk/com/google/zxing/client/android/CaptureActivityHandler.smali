.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/zxing/client/android/CaptureActivity;

.field private final c:Lcom/google/zxing/client/android/b;

.field private d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

.field private final e:Lcom/google/zxing/client/android/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/lang/String;Lcom/google/zxing/client/android/a/c;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    .line 55
    new-instance v0, Lcom/google/zxing/client/android/b;

    new-instance v1, Lcom/google/zxing/client/android/h;

    invoke-virtual {p1}, Lcom/google/zxing/client/android/CaptureActivity;->a()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/client/android/h;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/zxing/client/android/b;-><init>(Lcom/google/zxing/client/android/CaptureActivity;Ljava/lang/String;Lcom/google/zxing/k;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    .line 57
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/b;->start()V

    .line 58
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 61
    iput-object p3, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    .line 62
    invoke-virtual {p3}, Lcom/google/zxing/client/android/a/c;->b()V

    .line 63
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->b()V

    .line 64
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_25

    .line 121
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 122
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/b;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/c;->a(Landroid/os/Handler;I)V

    .line 123
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    const v1, 0x7f08000c

    invoke-virtual {v0, p0, v1}, Lcom/google/zxing/client/android/a/c;->b(Landroid/os/Handler;I)V

    .line 124
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->d()V

    .line 126
    :cond_25
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 103
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 104
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/a/c;->c()V

    .line 105
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/b;->a()Landroid/os/Handler;

    move-result-object v0

    const v1, 0x7f080011

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 109
    :try_start_19
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/b;->join(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_20} :catch_2d

    .line 115
    :goto_20
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 116
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 117
    return-void

    :catch_2d
    move-exception v0

    goto :goto_20
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f08000c

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_13

    .line 72
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v1, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_12

    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    invoke-virtual {v0, p0, v2}, Lcom/google/zxing/client/android/a/c;->b(Landroid/os/Handler;I)V

    .line 100
    :cond_12
    :goto_12
    return-void

    .line 75
    :cond_13
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f080012

    if-ne v0, v1, :cond_25

    .line 76
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got restart preview message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/google/zxing/client/android/CaptureActivityHandler;->b()V

    goto :goto_12

    .line 78
    :cond_25
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f08000f

    if-ne v0, v1, :cond_53

    .line 79
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got decode succeeded message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 81
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-nez v0, :cond_49

    const/4 v0, 0x0

    move-object v1, v0

    .line 84
    :goto_3f
    iget-object v2, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/zxing/h;

    invoke-virtual {v2, v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->a(Lcom/google/zxing/h;Landroid/graphics/Bitmap;)V

    goto :goto_12

    .line 82
    :cond_49
    const-string v1, "barcode_bitmap"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_3f

    .line 85
    :cond_53
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f08000e

    if-ne v0, v1, :cond_6d

    .line 87
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->d:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 88
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->e:Lcom/google/zxing/client/android/a/c;

    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->c:Lcom/google/zxing/client/android/b;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/b;->a()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v0, v1, v2}, Lcom/google/zxing/client/android/a/c;->a(Landroid/os/Handler;I)V

    goto :goto_12

    .line 89
    :cond_6d
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f080013

    if-ne v0, v1, :cond_8b

    .line 90
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got return scan result message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v1, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    const/4 v2, -0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/google/zxing/client/android/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0}, Lcom/google/zxing/client/android/CaptureActivity;->finish()V

    goto :goto_12

    .line 93
    :cond_8b
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x7f080010

    if-ne v0, v1, :cond_12

    .line 94
    sget-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->a:Ljava/lang/String;

    const-string v1, "Got product query message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    const/high16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/google/zxing/client/android/CaptureActivityHandler;->b:Lcom/google/zxing/client/android/CaptureActivity;

    invoke-virtual {v0, v1}, Lcom/google/zxing/client/android/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_12
.end method
