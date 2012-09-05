.class Lcom/arcsoft/widget/CustomizedMenu$2;
.super Ljava/lang/Object;
.source "CustomizedMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/CustomizedMenu;->hideMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/widget/CustomizedMenu;


# direct methods
.method constructor <init>(Lcom/arcsoft/widget/CustomizedMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu$2;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter "animation"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$2;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #getter for: Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/arcsoft/widget/CustomizedMenu;->access$000(Lcom/arcsoft/widget/CustomizedMenu;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$2;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    const/4 v1, 0x0

    iput v1, v0, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    .line 393
    iget-object v0, p0, Lcom/arcsoft/widget/CustomizedMenu$2;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    const/4 v1, 0x1

    #calls: Lcom/arcsoft/widget/CustomizedMenu;->saveCurrentFocus(Z)V
    invoke-static {v0, v1}, Lcom/arcsoft/widget/CustomizedMenu;->access$200(Lcom/arcsoft/widget/CustomizedMenu;Z)V

    .line 394
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 400
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 406
    return-void
.end method
