.class Lcom/cooliris/media/HudLayer$48;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer;->getDetailInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/HudLayer;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2490
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$48;->this$0:Lcom/cooliris/media/HudLayer;

    iput-object p2, p0, Lcom/cooliris/media/HudLayer$48;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$48;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v1, p0, Lcom/cooliris/media/HudLayer$48;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    .line 2493
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$48;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x10500

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2497
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$48;->this$0:Lcom/cooliris/media/HudLayer;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer;->mDetailDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2498
    return-void
.end method
