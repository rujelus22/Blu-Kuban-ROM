.class Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;
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
    .line 238
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 6
    .parameter "span"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 242
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v0

    new-instance v1, Landroid/text/style/URLSpan;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$1;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$100(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/google/android/apps/plus/views/StreamOneUpListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 244
    :cond_2f
    return-void
.end method
