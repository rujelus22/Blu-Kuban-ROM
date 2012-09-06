.class final Lcom/dropbox/android/widget/J;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/dropbox/android/widget/I;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/I;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/dropbox/android/widget/J;->b:Lcom/dropbox/android/widget/I;

    iput-object p2, p0, Lcom/dropbox/android/widget/J;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/dropbox/android/widget/J;->b:Lcom/dropbox/android/widget/I;

    iget-object v0, v0, Lcom/dropbox/android/widget/I;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/widget/J;->b:Lcom/dropbox/android/widget/I;

    iget-object v1, v1, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, v1, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/dropbox/android/widget/J;->b:Lcom/dropbox/android/widget/I;

    iget-object v0, v0, Lcom/dropbox/android/widget/I;->c:Ldbxyzptlk/l/o;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/l/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1078
    iget-object v0, p0, Lcom/dropbox/android/widget/J;->b:Lcom/dropbox/android/widget/I;

    iget-object v0, v0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/J;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/widget/FileItemView;Landroid/graphics/drawable/Drawable;Z)V

    .line 1080
    :cond_28
    return-void
.end method
