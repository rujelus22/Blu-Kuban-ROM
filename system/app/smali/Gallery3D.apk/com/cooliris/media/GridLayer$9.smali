.class Lcom/cooliris/media/GridLayer$9;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/GridLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$9;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2617
    const/4 v0, 0x4

    if-ne p2, v0, :cond_9

    .line 2618
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$9;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x1

    #setter for: Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z
    invoke-static {v0, v1}, Lcom/cooliris/media/GridLayer;->access$402(Lcom/cooliris/media/GridLayer;Z)Z

    .line 2620
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
