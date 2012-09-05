.class Lcom/sec/android/app/minimode/MiniModeService$2;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/minimode/MiniModeService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/minimode/MiniModeService;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 367
    const/4 v0, 0x0

    .line 369
    .local v0, bRet:Z
    if-ne p2, v3, :cond_25

    .line 370
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_24

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$500(Lcom/sec/android/app/minimode/MiniModeService;)I

    move-result v1

    if-ne v1, v3, :cond_24

    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$600(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_24

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 375
    :cond_24
    const/4 v0, 0x1

    .line 378
    :cond_25
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->lastKeyEvent:Landroid/view/KeyEvent;
    invoke-static {v1, p3}, Lcom/sec/android/app/minimode/MiniModeService;->access$602(Lcom/sec/android/app/minimode/MiniModeService;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 379
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$2;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #setter for: Lcom/sec/android/app/minimode/MiniModeService;->lastKeyCode:I
    invoke-static {v1, p2}, Lcom/sec/android/app/minimode/MiniModeService;->access$502(Lcom/sec/android/app/minimode/MiniModeService;I)I

    .line 381
    return v0
.end method
