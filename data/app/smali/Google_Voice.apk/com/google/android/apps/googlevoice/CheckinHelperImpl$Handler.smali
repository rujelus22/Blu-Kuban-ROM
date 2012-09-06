.class Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;
.super Landroid/os/Handler;
.source "CheckinHelperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/CheckinHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/CheckinHelperImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/googlevoice/CheckinHelperImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;->this$0:Lcom/google/android/apps/googlevoice/CheckinHelperImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/CheckinHelperImpl;Lcom/google/android/apps/googlevoice/CheckinHelperImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/googlevoice/CheckinHelperImpl$Handler;-><init>(Lcom/google/android/apps/googlevoice/CheckinHelperImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_e

    .line 51
    sget-boolean v0, Lcom/google/android/apps/googlevoice/util/logging/Logger;->LOGD:Z

    if-eqz v0, :cond_d

    .line 52
    const-string v0, "CheckinHelper: ApiCheckin succesful"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->d(Ljava/lang/String;)V

    .line 57
    :cond_d
    :goto_d
    return-void

    .line 55
    :cond_e
    const-string v0, "CheckinHelper: ApiCheckin failed"

    invoke-static {v0}, Lcom/google/android/apps/googlevoice/util/logging/Logger;->w(Ljava/lang/String;)V

    goto :goto_d
.end method
