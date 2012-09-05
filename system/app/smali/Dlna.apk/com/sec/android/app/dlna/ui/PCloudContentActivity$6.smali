.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$000(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$6;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->handleStop()V

    .line 260
    return-void
.end method
