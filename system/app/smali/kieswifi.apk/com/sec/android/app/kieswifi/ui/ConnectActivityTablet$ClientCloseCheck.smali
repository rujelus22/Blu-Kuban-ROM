.class public Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientCloseCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;I)V
    .registers 9
    .parameter
    .parameter "seconds"

    .prologue
    .line 610
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->timer:Ljava/util/Timer;

    .line 612
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck$SocketCheck;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;)V

    const-wide/16 v2, 0x1f4

    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 613
    return-void
.end method
