.class Lcom/google/android/apps/plus/phone/StreamsActivity$1;
.super Ljava/lang/Object;
.source "StreamsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/StreamsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/StreamsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$000(Lcom/google/android/apps/plus/phone/StreamsActivity;)Lcom/google/android/apps/plus/views/SlidingPanel;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/StreamsActivity$1;->this$0:Lcom/google/android/apps/plus/phone/StreamsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/StreamsActivity;->mSlidingPanel:Lcom/google/android/apps/plus/views/SlidingPanel;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/StreamsActivity;->access$000(Lcom/google/android/apps/plus/phone/StreamsActivity;)Lcom/google/android/apps/plus/views/SlidingPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/SlidingPanel;->requestLayout()V

    .line 108
    :cond_11
    return-void
.end method
