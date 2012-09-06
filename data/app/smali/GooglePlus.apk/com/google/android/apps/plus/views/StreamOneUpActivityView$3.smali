.class Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;
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
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 5
    .parameter "span"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 262
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, url:Ljava/lang/String;
    const-string v2, "skyjam:buy:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 264
    const-string v2, "skyjam:buy:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, realUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListener;->onSkyjamBuyClick(Ljava/lang/String;)V

    .line 271
    .end local v0           #realUrl:Ljava/lang/String;
    .end local v1           #url:Ljava/lang/String;
    :cond_27
    :goto_27
    return-void

    .line 266
    .restart local v1       #url:Ljava/lang/String;
    :cond_28
    const-string v2, "skyjam:listen:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 267
    const-string v2, "skyjam:listen:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0       #realUrl:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamOneUpActivityView$3;->this$0:Lcom/google/android/apps/plus/views/StreamOneUpActivityView;

    #getter for: Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->mOneUpListener:Lcom/google/android/apps/plus/views/StreamOneUpListener;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamOneUpActivityView;->access$000(Lcom/google/android/apps/plus/views/StreamOneUpActivityView;)Lcom/google/android/apps/plus/views/StreamOneUpListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/apps/plus/views/StreamOneUpListener;->onSkyjamListenClick(Ljava/lang/String;)V

    goto :goto_27
.end method
