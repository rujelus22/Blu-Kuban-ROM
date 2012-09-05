.class Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;
.super Ljava/lang/Object;
.source "DLNAHomeScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)V
    .registers 2
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    #getter for: Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->mediaControl:Lcom/sec/android/app/dlna/view/MediaControlView;
    invoke-static {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->access$000(Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;)Lcom/sec/android/app/dlna/view/MediaControlView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/view/MediaControlView;->setControlButtonsEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen$5;->this$0:Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;->handleStop()V

    .line 291
    return-void
.end method
