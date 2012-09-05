.class Lcom/google/android/music/dl/RingtoneScheduler$1;
.super Ljava/lang/Object;
.source "RingtoneScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/dl/RingtoneScheduler;-><init>(Landroid/app/Service;Lcom/google/android/music/dl/BufferProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/dl/RingtoneScheduler;


# direct methods
.method constructor <init>(Lcom/google/android/music/dl/RingtoneScheduler;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/music/dl/RingtoneScheduler$1;->this$0:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/music/dl/RingtoneScheduler$1;->this$0:Lcom/google/android/music/dl/RingtoneScheduler;

    invoke-virtual {v0}, Lcom/google/android/music/dl/RingtoneScheduler;->refreshEnabledState()V

    .line 64
    return-void
.end method
