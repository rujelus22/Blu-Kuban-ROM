.class LzG;
.super Ljava/lang/Object;
.source "AuthorImageManager.java"

# interfaces
.implements LAa;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic a:LzF;


# direct methods
.method constructor <init>(LzF;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, LzG;->a:LzF;

    iput-object p2, p0, LzG;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x3a

    .line 54
    iget-object v0, p0, LzG;->a:LzF;

    invoke-static {v0}, LzF;->a(LzF;)LzW;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, LzW;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 55
    if-nez v0, :cond_16

    .line 57
    const-string v0, "AuthorImageManager"

    const-string v1, "onImageLoad with a null image."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_15
    :goto_15
    return-void

    .line 60
    :cond_16
    iget-object v1, p0, LzG;->a:Landroid/widget/ImageView;

    if-eqz v1, :cond_15

    iget-object v1, p0, LzG;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 61
    iget-object v1, p0, LzG;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_15
.end method
