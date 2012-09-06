.class final Lcom/dropbox/android/widget/E;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/LocalEntry;

.field final synthetic b:Lcom/dropbox/android/widget/FileItemView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/FileItemView;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    iput-object p2, p0, Lcom/dropbox/android/widget/E;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 697
    iget-object v0, p0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/FileItemView;->w:Lcom/dropbox/android/taskqueue/q;

    sget-object v1, Lcom/dropbox/android/taskqueue/v;->b:Lcom/dropbox/android/taskqueue/v;

    iget-object v2, p0, Lcom/dropbox/android/widget/E;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/widget/E;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->r:Ljava/lang/String;

    invoke-static {}, Lcom/dropbox/android/util/aW;->e()Ldbxyzptlk/l/o;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v5}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/dropbox/android/taskqueue/q;->a(Lcom/dropbox/android/taskqueue/v;Ljava/lang/String;Ljava/lang/String;Ldbxyzptlk/l/o;Landroid/content/res/Resources;)Landroid/util/Pair;

    move-result-object v0

    .line 700
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_39

    .line 701
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v2}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 702
    iget-object v0, p0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    new-instance v2, Lcom/dropbox/android/widget/F;

    invoke-direct {v2, p0, v1}, Lcom/dropbox/android/widget/F;-><init>(Lcom/dropbox/android/widget/E;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Lcom/dropbox/android/widget/FileItemView;->post(Ljava/lang/Runnable;)Z

    .line 715
    :cond_39
    return-void
.end method
