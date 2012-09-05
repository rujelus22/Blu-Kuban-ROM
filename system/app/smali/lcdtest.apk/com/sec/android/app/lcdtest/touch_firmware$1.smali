.class Lcom/sec/android/app/lcdtest/touch_firmware$1;
.super Ljava/lang/Object;
.source "touch_firmware.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/lcdtest/touch_firmware;->init()V
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
    .line 60
    iput-object p1, p0, Lcom/sec/android/app/lcdtest/touch_firmware$1;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware$1;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    iget-object v0, v0, Lcom/sec/android/app/lcdtest/touch_firmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/lcdtest/touch_firmware$1;->this$0:Lcom/sec/android/app/lcdtest/touch_firmware;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/lcdtest/touch_firmware;->startNewThread(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/lcdtest/touch_firmware;->access$000(Lcom/sec/android/app/lcdtest/touch_firmware;I)V

    .line 64
    return-void
.end method
