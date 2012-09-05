.class Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$3;
.super Ljava/lang/Object;
.source "PCloudRendererActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$3;->this$0:Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->finish()V

    .line 129
    return-void
.end method
