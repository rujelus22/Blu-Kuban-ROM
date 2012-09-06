.class LuA;
.super Ljava/lang/Object;
.source "DiscussionFragmentManager.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:I

.field final synthetic a:Luz;


# direct methods
.method constructor <init>(Luz;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, LuA;->a:Luz;

    iput p2, p0, LuA;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 150
    iget v0, p0, LuA;->a:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_38

    .line 151
    iget-object v0, p0, LuA;->a:Luz;

    iget-object v0, v0, Luz;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LuA;->a:Luz;

    iget-object v1, v1, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, LuA;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v0, p0, LuA;->a:Luz;

    iget-object v0, v0, Luz;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LuA;->a:Luz;

    iget-object v1, v1, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 154
    :cond_38
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 140
    iget v0, p0, LuA;->a:I

    if-nez v0, :cond_1d

    .line 141
    iget-object v0, p0, LuA;->a:Luz;

    iget-object v0, v0, Luz;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, LuA;->a:Luz;

    iget-object v1, v1, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, LuA;->a:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_1d
    return-void
.end method
