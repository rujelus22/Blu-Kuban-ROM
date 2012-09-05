.class Lcom/sec/android/app/dlna/ui/PCloudContentActivity$23;
.super Ljava/lang/Object;
.source "PCloudContentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->inNotifyDataSetChanged(I)V
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
    .line 848
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$23;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudContentActivity$23;->this$0:Lcom/sec/android/app/dlna/ui/PCloudContentActivity;

    #getter for: Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->playlistAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/PCloudContentActivity;->access$400(Lcom/sec/android/app/dlna/ui/PCloudContentActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->notifyDataSetChanged()V

    .line 853
    return-void
.end method
