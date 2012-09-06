.class Luz;
.super Ljava/lang/Object;
.source "DiscussionFragmentManager.java"

# interfaces
.implements Ly;


# instance fields
.field final synthetic a:Luy;


# direct methods
.method constructor <init>(Luy;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Luz;->a:Luy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 9

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Luz;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 119
    iget-object v1, p0, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->a()I

    move-result v6

    .line 120
    if-nez v6, :cond_80

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_80

    move v5, v2

    .line 121
    :goto_29
    if-lez v6, :cond_82

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v4, :cond_82

    move v1, v2

    .line 123
    :goto_32
    iget-object v7, p0, Luz;->a:Luy;

    invoke-static {v7}, Luy;->a(Luy;)Z

    move-result v7

    if-eqz v7, :cond_7f

    if-nez v5, :cond_3e

    if-eqz v1, :cond_7f

    .line 125
    :cond_3e
    if-nez v6, :cond_84

    .line 127
    iget-object v1, p0, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)LuF;

    move-result-object v1

    invoke-interface {v1}, LuF;->a()V

    .line 128
    iget-object v1, p0, Luz;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)LuE;

    move-result-object v1

    invoke-interface {v1}, LuE;->b()V

    move v1, v4

    .line 133
    :goto_53
    iget-object v4, p0, Luz;->a:Luy;

    invoke-static {v4}, Luy;->a(Luy;)Landroid/graphics/Point;

    move-result-object v5

    .line 134
    if-lez v6, :cond_86

    move v4, v2

    :goto_5c
    iget-object v6, p0, Luz;->a:Luy;

    invoke-static {v6}, Luy;->b(Luy;)Z

    move-result v6

    if-eqz v6, :cond_88

    iget-object v6, p0, Luz;->a:Luy;

    invoke-static {v6}, Luy;->c(Luy;)Z

    move-result v6

    if-eqz v6, :cond_88

    :goto_6c
    iget v3, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v2, v3, v5}, LuG;->a(ZZII)Landroid/view/animation/Animation;

    move-result-object v2

    .line 137
    new-instance v3, LuA;

    invoke-direct {v3, p0, v1}, LuA;-><init>(Luz;I)V

    .line 156
    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 158
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 160
    :cond_7f
    return-void

    :cond_80
    move v5, v3

    .line 120
    goto :goto_29

    :cond_82
    move v1, v3

    .line 121
    goto :goto_32

    :cond_84
    move v1, v3

    .line 130
    goto :goto_53

    :cond_86
    move v4, v3

    .line 134
    goto :goto_5c

    :cond_88
    move v2, v3

    goto :goto_6c
.end method
