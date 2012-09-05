.class Lcom/sec/android/app/minimode/MiniModeService$16;
.super Ljava/lang/Object;
.source "MiniModeService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/minimode/MiniModeService;->setContentViewInner(IIII)V
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
    .line 1220
    iput-object p1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1223
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    #getter for: Lcom/sec/android/app/minimode/MiniModeService;->mMainActivity:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/sec/android/app/minimode/MiniModeService;->access$2000(Lcom/sec/android/app/minimode/MiniModeService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1224
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1225
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/minimode/MiniModeService;->startActivity(Landroid/content/Intent;)V

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->setClosingAnimation(I)V

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/minimode/MiniModeService$16;->this$0:Lcom/sec/android/app/minimode/MiniModeService;

    const/4 v2, 0x4

    #calls: Lcom/sec/android/app/minimode/MiniModeService;->handleClose(I)V
    invoke-static {v1, v2}, Lcom/sec/android/app/minimode/MiniModeService;->access$700(Lcom/sec/android/app/minimode/MiniModeService;I)V

    .line 1233
    return-void
.end method
