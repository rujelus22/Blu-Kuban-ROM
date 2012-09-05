.class Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "VolumeCarouselFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/VolumeCarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/VolumeCarouselFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/apps/books/app/VolumeCarouselFragment$2;->this$0:Lcom/google/android/apps/books/app/VolumeCarouselFragment;

    #calls: Lcom/google/android/apps/books/app/VolumeCarouselFragment;->updateDeviceConnected(Landroid/content/Context;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/books/app/VolumeCarouselFragment;->access$200(Lcom/google/android/apps/books/app/VolumeCarouselFragment;Landroid/content/Context;)V

    .line 221
    return-void
.end method
