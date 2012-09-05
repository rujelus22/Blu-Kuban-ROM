.class Lcom/cooliris/media/Gallery$11$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1782
    iput-object p1, p0, Lcom/cooliris/media/Gallery$11$1;->this$1:Lcom/cooliris/media/Gallery$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$1;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v1, 0x1

    #setter for: Lcom/cooliris/media/Gallery;->mEndUpdateAnimation:Z
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1502(Lcom/cooliris/media/Gallery;Z)Z

    .line 1786
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$1;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/cooliris/media/Gallery;->access$1800(Lcom/cooliris/media/Gallery;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 1787
    iget-object v0, p0, Lcom/cooliris/media/Gallery$11$1;->this$1:Lcom/cooliris/media/Gallery$11;

    iget-object v0, v0, Lcom/cooliris/media/Gallery$11;->this$0:Lcom/cooliris/media/Gallery;

    const/4 v1, 0x0

    #setter for: Lcom/cooliris/media/Gallery;->mMotionInfoDialog:Landroid/content/DialogInterface;
    invoke-static {v0, v1}, Lcom/cooliris/media/Gallery;->access$1802(Lcom/cooliris/media/Gallery;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 1788
    return-void
.end method
