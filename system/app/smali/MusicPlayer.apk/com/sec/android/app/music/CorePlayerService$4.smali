.class Lcom/sec/android/app/music/CorePlayerService$4;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/CorePlayerService;)V
    .registers 2
    .parameter

    .prologue
    .line 772
    iput-object p1, p0, Lcom/sec/android/app/music/CorePlayerService$4;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/sec/android/app/music/CorePlayerService$4;->this$0:Lcom/sec/android/app/music/CorePlayerService;

    #calls: Lcom/sec/android/app/music/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V
    invoke-static {v0, p2}, Lcom/sec/android/app/music/CorePlayerService;->access$1300(Lcom/sec/android/app/music/CorePlayerService;Landroid/content/Intent;)V

    .line 776
    return-void
.end method
