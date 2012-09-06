.class LaQ/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:LaQ/ag;


# direct methods
.method constructor <init>(LaQ/ag;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 467
    iput-object p1, p0, LaQ/ai;->b:LaQ/ag;

    iput-object p2, p0, LaQ/ai;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, LaQ/ai;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 471
    return-void
.end method
