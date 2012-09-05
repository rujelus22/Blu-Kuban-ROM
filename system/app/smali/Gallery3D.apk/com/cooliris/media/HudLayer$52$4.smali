.class Lcom/cooliris/media/HudLayer$52$4;
.super Ljava/lang/Object;
.source "HudLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/HudLayer$52;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/HudLayer$52;


# direct methods
.method constructor <init>(Lcom/cooliris/media/HudLayer$52;)V
    .registers 2
    .parameter

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/cooliris/media/HudLayer$52$4;->this$1:Lcom/cooliris/media/HudLayer$52;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/cooliris/media/HudLayer$52$4;->this$1:Lcom/cooliris/media/HudLayer$52;

    iget-object v0, v0, Lcom/cooliris/media/HudLayer$52;->this$0:Lcom/cooliris/media/HudLayer;

    #getter for: Lcom/cooliris/media/HudLayer;->mRenameDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/cooliris/media/HudLayer;->access$2000(Lcom/cooliris/media/HudLayer;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2897
    return-void
.end method
