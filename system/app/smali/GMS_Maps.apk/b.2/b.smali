.class LB/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/rideabout/view/l;


# instance fields
.field final synthetic a:LB/a;


# direct methods
.method constructor <init>(LB/a;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, LB/b;->a:LB/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LB/b;->a:LB/a;

    invoke-virtual {v0}, LB/a;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, LB/b;->a:LB/a;

    invoke-virtual {v1}, LB/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method
