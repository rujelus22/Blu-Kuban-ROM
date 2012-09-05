.class Lcom/arcsoft/widget/CustomizedMenu$1;
.super Ljava/lang/Object;
.source "CustomizedMenu.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/arcsoft/widget/CustomizedMenu;->showMenu(Z)V
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
    .line 341
    iput-object p1, p0, Lcom/arcsoft/widget/CustomizedMenu$1;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "animation"

    .prologue
    const/4 v3, 0x1

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, menu:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu$1;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    iget v1, v1, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    if-eqz v1, :cond_1d

    .line 349
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu$1;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #getter for: Lcom/arcsoft/widget/CustomizedMenu;->mMenuView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/arcsoft/widget/CustomizedMenu;->access$000(Lcom/arcsoft/widget/CustomizedMenu;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/arcsoft/widget/CustomizedMenu$1;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    iget v2, v2, Lcom/arcsoft/widget/CustomizedMenu;->mCurrentFocus:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #menu:Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 350
    .restart local v0       #menu:Landroid/widget/RelativeLayout;
    if-eqz v0, :cond_1d

    .line 351
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 353
    :cond_1d
    iget-object v1, p0, Lcom/arcsoft/widget/CustomizedMenu$1;->this$0:Lcom/arcsoft/widget/CustomizedMenu;

    #calls: Lcom/arcsoft/widget/CustomizedMenu;->setMenuFocusable(Z)V
    invoke-static {v1, v3}, Lcom/arcsoft/widget/CustomizedMenu;->access$100(Lcom/arcsoft/widget/CustomizedMenu;Z)V

    .line 354
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 359
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter "animation"

    .prologue
    .line 364
    return-void
.end method
