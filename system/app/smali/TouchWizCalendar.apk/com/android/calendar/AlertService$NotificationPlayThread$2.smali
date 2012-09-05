.class Lcom/android/calendar/AlertService$NotificationPlayThread$2;
.super Ljava/lang/Object;
.source "AlertService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AlertService$NotificationPlayThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AlertService$NotificationPlayThread;


# direct methods
.method constructor <init>(Lcom/android/calendar/AlertService$NotificationPlayThread;)V
    .registers 2
    .parameter

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/calendar/AlertService$NotificationPlayThread$2;->this$0:Lcom/android/calendar/AlertService$NotificationPlayThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "mp"

    .prologue
    .line 714
    const-string v0, "AlertService"

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 717
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 719
    return-void
.end method
