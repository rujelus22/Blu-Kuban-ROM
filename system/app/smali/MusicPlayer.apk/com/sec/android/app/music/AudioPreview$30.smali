.class Lcom/sec/android/app/music/AudioPreview$30;
.super Landroid/content/BroadcastReceiver;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/AudioPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 4430
    iput-object p1, p0, Lcom/sec/android/app/music/AudioPreview$30;->this$0:Lcom/sec/android/app/music/AudioPreview;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 4434
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4435
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 4436
    const-string v3, "level"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4437
    .local v2, mBattScale:I
    const-string v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4440
    .local v1, battStatus:I
    if-gt v2, v6, :cond_34

    const/4 v3, 0x2

    if-eq v1, v3, :cond_34

    .line 4447
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$30;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const v4, 0x7f090126

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4449
    iget-object v3, p0, Lcom/sec/android/app/music/AudioPreview$30;->this$0:Lcom/sec/android/app/music/AudioPreview;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v6, v4, v5}, Lcom/sec/android/app/music/AudioPreview;->queueUpdate(IJ)V

    .line 4452
    .end local v1           #battStatus:I
    .end local v2           #mBattScale:I
    :cond_34
    return-void
.end method
