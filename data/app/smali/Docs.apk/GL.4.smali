.class LGL;
.super Ljava/lang/Object;
.source "CommentStreamFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LGK;

.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic a:Lmu;


# direct methods
.method constructor <init>(LGK;Landroid/widget/ImageView;Lmu;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, LGL;->a:LGK;

    iput-object p2, p0, LGL;->a:Landroid/widget/ImageView;

    iput-object p3, p0, LGL;->a:Lmu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 100
    :try_start_0
    iget-object v1, p0, LGL;->a:Landroid/widget/ImageView;

    iget-object v0, p0, LGL;->a:Lmu;

    invoke-interface {v0}, Lmu;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_d
    .catch LmM; {:try_start_0 .. :try_end_d} :catch_e

    .line 104
    :goto_d
    return-void

    .line 101
    :catch_e
    move-exception v0

    goto :goto_d
.end method
