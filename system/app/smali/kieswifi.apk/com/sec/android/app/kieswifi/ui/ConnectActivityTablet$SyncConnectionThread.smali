.class Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;
.super Ljava/lang/Object;
.source "ConnectActivityTablet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 2
    .parameter

    .prologue
    .line 592
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 594
    const/4 v0, 0x1

    const-string v1, "SyncConnection thread started.."

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;

    #calls: Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->setSyncConnectionInfo()V
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->access$600(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    .line 596
    return-void
.end method
