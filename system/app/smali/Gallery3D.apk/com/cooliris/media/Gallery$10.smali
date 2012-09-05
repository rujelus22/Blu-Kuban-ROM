.class Lcom/cooliris/media/Gallery$10;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1735
    iput-object p1, p0, Lcom/cooliris/media/Gallery$10;->this$0:Lcom/cooliris/media/Gallery;

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
    .line 1738
    const/4 v0, 0x4

    if-ne p2, v0, :cond_18

    .line 1739
    iget-object v0, p0, Lcom/cooliris/media/Gallery$10;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v1, 0x1

    #setter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1502(Lcom/cooliris/media/Gallery;Z)Z

    .line 1740
    iget-object v0, p0, Lcom/cooliris/media/Gallery$10;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$1800(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1741
    iget-object v0, p0, Lcom/cooliris/media/Gallery$10;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v1, 0x0

    #setter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1802(Lcom/cooliris/media/Gallery;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1743
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
