.class final Lcom/google/zxing/client/android/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/zxing/client/android/d;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/d;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/d;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/f;-><init>(Lcom/google/zxing/client/android/d;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 98
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 101
    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    if-lez v0, :cond_1a

    .line 103
    iget-object v0, p0, Lcom/google/zxing/client/android/f;->a:Lcom/google/zxing/client/android/d;

    invoke-static {v0}, Lcom/google/zxing/client/android/d;->a(Lcom/google/zxing/client/android/d;)V

    .line 106
    :cond_1a
    return-void
.end method
