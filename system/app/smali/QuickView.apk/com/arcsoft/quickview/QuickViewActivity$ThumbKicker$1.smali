.class Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)V
    .registers 2
    .parameter

    .prologue
    .line 2255
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2257
    const-string v1, "QuickViewActivity:"

    const-string v2, "mThumbSuspendKicker.run()"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2259
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    iget-object v1, v1, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2260
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->access$3000(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;->this$1:Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->access$2900(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2261
    return-void
.end method
