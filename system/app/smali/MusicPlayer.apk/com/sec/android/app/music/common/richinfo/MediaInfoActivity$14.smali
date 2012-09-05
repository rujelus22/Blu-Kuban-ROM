.class Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;
.super Ljava/lang/Object;
.source "MediaInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 521
    iput-object p1, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 524
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$300(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #getter for: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->mRichInfoView:Lcom/sec/android/app/music/common/richinfo/RichInfoView;
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$300(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)Lcom/sec/android/app/music/common/richinfo/RichInfoView;

    sget-object v0, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->mPageMap:Ljava/util/HashMap;

    const-string v2, "OTHER"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/richinfo/RichInfoView;->setPageWidthDelay(I)V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity$14;->this$0:Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;

    #calls: Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->showRichInfoView()V
    invoke-static {v0}, Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;->access$700(Lcom/sec/android/app/music/common/richinfo/MediaInfoActivity;)V

    .line 530
    return-void
.end method
