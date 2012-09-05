.class Lcom/sec/android/app/lcdtest/touch_firmware$5;
.super Ljava/lang/Object;
.source "touch_firmware.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/touch_firmware;->startNewThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/lcdtest/touch_firmware;


# direct methods
.method constructor <init>(Lcom/sec/android/app/lcdtest/touch_firmware;)V
    .registers 2
    .parameter

    .prologue
    .line 376
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$5;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware$5;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->updateFirmware(I)V

    .line 379
    return-void
.end method
