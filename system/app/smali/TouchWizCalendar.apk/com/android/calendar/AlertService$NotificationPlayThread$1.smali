.class Lcom/android/calendar/AlertService$NotificationPlayThread$1;
.super Ljava/lang/Object;
.source "AlertService.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 701
    iput-object p1, p0, Lcom/android/calendar/AlertService$NotificationPlayThread$1;->this$0:Lcom/android/calendar/AlertService$NotificationPlayThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 703
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 704
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 706
    const/4 v0, 0x1

    return v0
.end method
