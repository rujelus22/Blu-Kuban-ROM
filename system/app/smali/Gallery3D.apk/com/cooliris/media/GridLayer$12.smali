.class Lcom/cooliris/media/GridLayer$12;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->motionDialogInitialOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2659
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$12;->this$0:Lcom/cooliris/media/GridLayer;

    iput-object p2, p0, Lcom/cooliris/media/GridLayer$12;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 2662
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$12;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 2663
    return-void
.end method
