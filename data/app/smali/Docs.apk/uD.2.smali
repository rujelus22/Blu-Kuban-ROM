.class LuD;
.super Ljava/lang/Object;
.source "DiscussionFragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Luy;


# direct methods
.method constructor <init>(Luy;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, LuD;->a:Luy;

    iput p2, p0, LuD;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 295
    iget-object v0, p0, LuD;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)LuF;

    move-result-object v0

    invoke-interface {v0}, LuF;->a()V

    .line 296
    iget-object v0, p0, LuD;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, LuD;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    iget-object v0, p0, LuD;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, LuD;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 298
    iget-object v0, p0, LuD;->a:Luy;

    invoke-static {v0}, Luy;->a(Luy;)Lx;

    move-result-object v0

    invoke-virtual {v0}, Lx;->a()I

    move-result v0

    .line 299
    iget-object v1, p0, LuD;->a:Luy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Luy;->a(Luy;Z)Z

    .line 300
    :goto_3b
    if-lez v0, :cond_49

    .line 301
    iget-object v1, p0, LuD;->a:Luy;

    invoke-static {v1}, Luy;->a(Luy;)Lx;

    move-result-object v1

    invoke-virtual {v1}, Lx;->b()Z

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_3b

    .line 304
    :cond_49
    iget-object v0, p0, LuD;->a:Luy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Luy;->a(Luy;Z)Z

    .line 305
    return-void
.end method
