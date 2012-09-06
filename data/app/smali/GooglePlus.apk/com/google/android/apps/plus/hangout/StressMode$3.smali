.class Lcom/google/android/apps/plus/hangout/StressMode$3;
.super Ljava/lang/Object;
.source "StressMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/StressMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/StressMode;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/hangout/StressMode;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode$3;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 104
    const-string v0, "StressMode: disconnect"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$3;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$600(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/hangout/GCommApp;->exitMeeting()V

    .line 106
    return-void
.end method
