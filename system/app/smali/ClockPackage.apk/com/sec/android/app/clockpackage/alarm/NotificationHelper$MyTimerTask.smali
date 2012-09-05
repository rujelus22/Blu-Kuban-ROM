.class Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;
.super Ljava/util/TimerTask;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTimerTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mId:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;Landroid/content/Context;I)V
    .registers 4
    .parameter
    .parameter "context"
    .parameter "id"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;->this$0:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 356
    iput-object p2, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;->mContext:Landroid/content/Context;

    .line 358
    iput p3, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;->mId:I

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 365
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    invoke-static {v1}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->access$000(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 367
    .local v0, nm:Landroid/app/NotificationManager;
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper$MyTimerTask;->mId:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 369
    return-void
.end method
