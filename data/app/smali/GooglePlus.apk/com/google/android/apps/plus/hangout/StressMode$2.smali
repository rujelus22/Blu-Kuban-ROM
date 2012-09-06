.class Lcom/google/android/apps/plus/hangout/StressMode$2;
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
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/StressMode$2;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 96
    const-string v0, "StressMode: enterHangout"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/StressMode$2;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->gcommApp:Lcom/google/android/apps/plus/hangout/GCommApp;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/StressMode;->access$600(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/hangout/GCommApp;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/StressMode$2;->this$0:Lcom/google/android/apps/plus/hangout/StressMode;

    #getter for: Lcom/google/android/apps/plus/hangout/StressMode;->hangoutInfo:Lcom/google/android/apps/plus/service/Hangout$Info;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/StressMode;->access$700(Lcom/google/android/apps/plus/hangout/StressMode;)Lcom/google/android/apps/plus/service/Hangout$Info;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommApp;->enterHangout(Lcom/google/android/apps/plus/service/Hangout$Info;ZLjava/util/List;Z)V

    .line 98
    return-void
.end method
