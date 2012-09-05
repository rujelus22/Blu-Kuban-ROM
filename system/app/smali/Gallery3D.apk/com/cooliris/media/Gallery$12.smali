.class Lcom/cooliris/media/Gallery$12;
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
    .line 1818
    iput-object p1, p0, Lcom/cooliris/media/Gallery$12;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/cooliris/media/Gallery$12;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 1822
    return-void
.end method
