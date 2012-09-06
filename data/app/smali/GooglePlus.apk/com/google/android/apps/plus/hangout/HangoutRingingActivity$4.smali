.class Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;
.super Ljava/lang/Object;
.source "HangoutRingingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 641
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->TIMED_OUT:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->exit(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$500(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;)V

    .line 642
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$4;->this$0:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;

    #calls: Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->createMissedHangoutNotification()V
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;->access$1300(Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;)V

    .line 643
    return-void
.end method
