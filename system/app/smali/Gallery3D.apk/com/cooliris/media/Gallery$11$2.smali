.class Lcom/cooliris/media/Gallery$11$2;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cooliris/media/Gallery$11;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery$11;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/cooliris/media/Gallery$11$2;->this$1:Lcom/cooliris/media/Gallery$11;

    iput-object p2, p0, Lcom/cooliris/media/Gallery$11$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1796
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$2;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    iget-object v1, p0, Lcom/cooliris/media/Gallery$11$2;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1802(Lcom/cooliris/media/Gallery;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1797
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$2;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #calls: Lcom/cooliris/media/Gallery;->createMotionAnimationHander()V
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$2200(Lcom/cooliris/media/Gallery;)V

    .line 1798
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$2;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v1, 0x0

    #calls: Lcom/cooliris/media/Gallery;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1700(Lcom/cooliris/media/Gallery;I)V

    .line 1799
    return-void
.end method
