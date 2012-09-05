.class Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;
.super Ljava/lang/Object;
.source "PhotoRetouching.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->saveBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/os/Message;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$filename:Ljava/lang/String;

.field private final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/os/Message;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$filename:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$msg:Landroid/os/Message;

    .line 2714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$filename:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/common/Image;->save(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    #setter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;
    invoke-static {v0, v1}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$51(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;Landroid/net/Uri;)V

    .line 2717
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->muri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$45(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 2718
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->bEdit:Z

    .line 2720
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->this$0:Lcom/sec/android/mimage/photoretouching/PhotoRetouching;

    #getter for: Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/PhotoRetouching;->access$52(Lcom/sec/android/mimage/photoretouching/PhotoRetouching;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/PhotoRetouching$25;->val$msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2721
    return-void
.end method
