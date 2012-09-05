.class Lcom/cooliris/media/Gallery$14;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->motionDialog()V
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
    .line 1847
    iput-object p1, p0, Lcom/cooliris/media/Gallery$14;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/cooliris/media/Gallery$14;->this$0:Lcom/cooliris/media/Gallery;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/cooliris/media/Gallery;->setResult(I)V

    .line 1851
    iget-object v0, p0, Lcom/cooliris/media/Gallery$14;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 1852
    return-void
.end method
