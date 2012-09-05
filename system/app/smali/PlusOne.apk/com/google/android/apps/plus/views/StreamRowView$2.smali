.class Lcom/google/android/apps/plus/views/StreamRowView$2;
.super Ljava/lang/Object;
.source "StreamRowView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/StreamRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/views/StreamRowView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/views/StreamRowView;)V
    .registers 2
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/google/android/apps/plus/views/StreamRowView$2;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 5
    .parameter "span"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$2;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->access$400(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/views/ItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 505
    iget-object v0, p0, Lcom/google/android/apps/plus/views/StreamRowView$2;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/StreamRowView;->access$400(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/android/apps/plus/views/ItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/StreamRowView$2;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mActivityId:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/plus/views/StreamRowView;->access$300(Lcom/google/android/apps/plus/views/StreamRowView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/StreamRowView$2;->this$0:Lcom/google/android/apps/plus/views/StreamRowView;

    #getter for: Lcom/google/android/apps/plus/views/StreamRowView;->mLocation:Lcom/google/wireless/tacotruck/proto/Data$Location;
    invoke-static {v2}, Lcom/google/android/apps/plus/views/StreamRowView;->access$500(Lcom/google/android/apps/plus/views/StreamRowView;)Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/plus/views/ItemClickListener;->onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 507
    :cond_1d
    return-void
.end method
