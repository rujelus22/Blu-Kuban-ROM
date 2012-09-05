.class Lcom/google/android/apps/plus/phone/StreamsActivity$2;
.super Ljava/lang/Object;
.source "StreamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/StreamsActivity;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

.field final synthetic val$data:Landroid/database/Cursor;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/StreamsActivity;Landroid/database/Cursor;Landroid/os/Handler;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    iput-object p2, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->val$data:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/StreamsActivity;->mIsPaused:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$100(Lcom/google/android/apps/plus/phone/StreamsActivity;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->val$data:Landroid/database/Cursor;

    if-eqz v0, :cond_31

    .line 421
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2b

    .line 422
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    const v1, 0x7f0d0039

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_25

    .line 424
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->val$handler:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    :goto_24
    return-void

    .line 426
    :cond_25
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    #calls: Lcom/google/android/apps/plus/phone/StreamsActivity;->prepareFragments()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$200(Lcom/google/android/apps/plus/phone/StreamsActivity;)V

    goto :goto_24

    .line 429
    :cond_2b
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    #calls: Lcom/google/android/apps/plus/phone/StreamsActivity;->prepareFragments()V
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$200(Lcom/google/android/apps/plus/phone/StreamsActivity;)V

    goto :goto_24

    .line 432
    :cond_31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/phone/StreamsActivity;->mNeedToRestartLoaders:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$302(Lcom/google/android/apps/plus/phone/StreamsActivity;Z)Z

    goto :goto_24
.end method
