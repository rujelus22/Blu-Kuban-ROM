.class final Lcom/dropbox/android/widget/I;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ldbxyzptlk/l/o;

.field final synthetic d:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FileItemView;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    iput-object p2, p0, Lcom/dropbox/android/widget/I;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/dropbox/android/widget/I;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/dropbox/android/widget/I;->c:Ldbxyzptlk/l/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/FileItemView;->w:Lcom/dropbox/android/taskqueue/q;

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/widget/I;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/widget/I;->b:Ljava/lang/String;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v5}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v0

    .line 1067
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_61

    .line 1068
    invoke-static {}, Lcom/dropbox/android/widget/FileItemView;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling set thumbnail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/I;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/widget/I;->c:Ldbxyzptlk/l/o;

    invoke-virtual {v3}, Ldbxyzptlk/l/o;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v2}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1070
    iget-object v0, p0, Lcom/dropbox/android/widget/I;->d:Lcom/dropbox/android/widget/FileItemView;

    new-instance v2, Lcom/dropbox/android/widget/J;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/android/widget/J;-><init>(Lcom/dropbox/android/widget/I;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/dropbox/android/widget/FileItemView;->post(Ljava/lang/Runnable;)Z

    .line 1083
    :cond_61
    return-void
.end method
