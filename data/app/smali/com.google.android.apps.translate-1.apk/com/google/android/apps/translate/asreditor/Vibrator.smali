.class public Lcom/google/android/apps/translate/asreditor/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# instance fields
.field private mVibrator:Landroid/os/Vibrator;

.field private mVibratorRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/google/android/apps/translate/asreditor/Vibrator$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/asreditor/Vibrator$1;-><init>(Lcom/google/android/apps/translate/asreditor/Vibrator;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibratorRunnable:Ljava/lang/Runnable;

    .line 23
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibrator:Landroid/os/Vibrator;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/asreditor/Vibrator;)Landroid/os/Vibrator;
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method


# virtual methods
.method public vibrate(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/apps/translate/asreditor/Vibrator;->mVibratorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_9
    return-void
.end method
