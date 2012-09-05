.class Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;
.super Ljava/lang/Object;
.source "QuickViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ThumbKicker"
.end annotation


# static fields
.field private static final THUMB_SUSPEND_KICK_TIME:I = 0x2710


# instance fields
.field private mThumbSuspendKicker:Ljava/lang/Runnable;

.field private mThumbSuspendKickerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 2252
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    .line 2255
    new-instance v0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;

    invoke-direct {v0, p0}, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker$1;-><init>(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)V

    iput-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$2900(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public stopKickThumbSuspend()V
    .registers 4

    .prologue
    .line 2272
    const-string v1, "QuickViewActivity:"

    const-string v2, "stopKickThumbSuspend"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2273
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2275
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2276
    return-void
.end method

.method public suspendThumbWork()V
    .registers 6

    .prologue
    .line 2265
    const-string v1, "QuickViewActivity:"

    const-string v2, "suspendThumbWork"

    invoke-static {v1, v2}, Lcom/arcsoft/android/camera/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2267
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-virtual {v1, v0}, Lcom/arcsoft/quickview/QuickViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2268
    iget-object v1, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKickerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/arcsoft/quickview/QuickViewActivity$ThumbKicker;->mThumbSuspendKicker:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2269
    return-void
.end method
