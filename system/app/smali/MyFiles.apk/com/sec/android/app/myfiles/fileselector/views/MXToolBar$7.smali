.class Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;
.super Ljava/lang/Object;
.source "MXToolBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->setUpButtonEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

.field final synthetic val$isEnable:Z


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    iput-boolean p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->val$isEnable:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->val$isEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->this$0:Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;

    #getter for: Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->mUpButton:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;->access$000(Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/MXToolBar$7;->val$isEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 219
    return-void
.end method
