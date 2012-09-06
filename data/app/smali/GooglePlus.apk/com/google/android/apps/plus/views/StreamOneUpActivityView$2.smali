.class Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;
.super Ljava/lang/Object;
.source "StreamOneUpActivityView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamOneUpActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)V
    .registers 2
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 5
    .parameter "span"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mActivityId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$100(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$2;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mLocationData:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$200(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/StreamOneUpListener;->onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 254
    :cond_1d
    return-void
.end method
