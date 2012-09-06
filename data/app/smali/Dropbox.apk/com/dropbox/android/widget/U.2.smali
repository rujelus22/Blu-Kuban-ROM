.class final Lcom/dropbox/android/widget/U;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dropbox/android/filemanager/Q;

.field final synthetic c:Lcom/dropbox/android/widget/T;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/T;ILcom/dropbox/android/filemanager/Q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iput p2, p0, Lcom/dropbox/android/widget/U;->a:I

    iput-object p3, p0, Lcom/dropbox/android/widget/U;->b:Lcom/dropbox/android/filemanager/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 1156
    iget v0, p0, Lcom/dropbox/android/widget/U;->a:I

    iget-object v1, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v1, v1, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iget v1, v1, Lcom/dropbox/android/widget/FileItemView;->t:I

    if-ne v0, v1, :cond_52

    iget-object v0, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v0, v0, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iget-object v0, v0, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/dropbox/android/widget/U;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_52

    .line 1157
    new-instance v0, Lcom/dropbox/android/util/D;

    iget-object v1, p0, Lcom/dropbox/android/widget/U;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/D;-><init>(Landroid/graphics/Bitmap;)V

    .line 1158
    iget-object v1, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v1, v1, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iput-object v0, v1, Lcom/dropbox/android/widget/FileItemView;->D:Lcom/dropbox/android/util/D;

    .line 1159
    iget-object v1, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v1, v1, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v3, v3, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v3}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0}, Lcom/dropbox/android/util/D;->c()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/widget/FileItemView;Landroid/graphics/drawable/Drawable;Z)V

    .line 1161
    iget-object v1, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v1, v1, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, v1, Lcom/dropbox/android/widget/FileItemView;->C:Lcom/dropbox/android/util/E;

    iget-object v2, p0, Lcom/dropbox/android/widget/U;->c:Lcom/dropbox/android/widget/T;

    iget-object v2, v2, Lcom/dropbox/android/widget/T;->a:Lcom/dropbox/android/widget/FileItemView;

    iget-object v2, v2, Lcom/dropbox/android/widget/FileItemView;->E:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/E;->a(Ljava/lang/String;Lcom/dropbox/android/util/D;)V

    .line 1165
    :cond_51
    :goto_51
    return-void

    .line 1162
    :cond_52
    iget-object v0, p0, Lcom/dropbox/android/widget/U;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_51

    .line 1163
    iget-object v0, p0, Lcom/dropbox/android/widget/U;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_51
.end method
