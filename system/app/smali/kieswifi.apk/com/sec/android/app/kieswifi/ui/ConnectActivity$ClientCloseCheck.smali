.class public Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;
.super Ljava/lang/Object;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientCloseCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;I)V
    .registers 9
    .parameter
    .parameter "seconds"

    .prologue
    .line 565
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 566
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->timer:Ljava/util/Timer;

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck$SocketCheck;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;)V

    const-wide/16 v2, 0x1f4

    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 568
    return-void
.end method
