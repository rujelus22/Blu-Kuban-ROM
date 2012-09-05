.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncConnectionThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    invoke-direct {p0, p1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 549
    const/4 v0, 0x1

    const-string v1, "SyncConnection thread started.."

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    #calls: Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->setSyncConnectionInfo()V
    invoke-static {v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->access$500(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    .line 551
    return-void
.end method
