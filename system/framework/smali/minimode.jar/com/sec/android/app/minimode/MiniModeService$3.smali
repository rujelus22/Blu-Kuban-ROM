.class Lcom/sec/android/app/minimode/MiniModeService$3;
.super Landroid/telephony/PhoneStateListener;
.source "MiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->initTelephonyEventListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 397
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/minimode/MiniModeService$3;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v1, 0x5

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 400
    :cond_9
    return-void
.end method
