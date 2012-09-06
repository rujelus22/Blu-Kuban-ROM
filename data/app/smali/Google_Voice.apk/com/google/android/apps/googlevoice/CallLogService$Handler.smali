.class Lcom/google/android/apps/googlevoice/CallLogService$Handler;
.super Landroid/os/Handler;
.source "CallLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CallLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CallLogService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/CallLogService;)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CallLogService$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/CallLogService;Lcom/google/android/apps/googlevoice/CallLogService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/CallLogService$Handler;-><init>(Lcom/google/android/apps/googlevoice/CallLogService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "message"

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_15

    .line 360
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_f

    .line 361
    const-string v0, "Credentials ensured, Start getting access number"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 363
    :cond_f
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/CallLogService$Handler;->this$0:Lcom/google/android/apps/googlevoice/CallLogService;

    #calls: Lcom/google/android/apps/googlevoice/CallLogService;->startGetAccessNumber()V
    invoke-static {v0}, Lcom/google/android/apps/googlevoice/CallLogService;->access$300(Lcom/google/android/apps/googlevoice/CallLogService;)V

    .line 367
    :goto_14
    return-void

    .line 365
    :cond_15
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_14
.end method
