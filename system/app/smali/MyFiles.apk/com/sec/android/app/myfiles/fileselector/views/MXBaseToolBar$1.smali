.class Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;
.super Ljava/lang/Object;
.source "MXBaseToolBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->setUpButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)V
    .registers 2
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->isEnableUpButton:Z
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setNormalButton()V

    .line 73
    :goto_11
    return-void

    .line 71
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar$1;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->mUpButton:Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;->access$100(Lcom/sec/android/app/myfiles/fileselector/views/MXBaseToolBar;)Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MxBaseToolBarButton;->setDimmingButton()V

    goto :goto_11
.end method
