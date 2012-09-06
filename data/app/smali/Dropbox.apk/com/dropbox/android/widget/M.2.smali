.class final Lcom/dropbox/android/widget/M;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dropbox/android/filemanager/Q;

.field final synthetic c:Lcom/dropbox/android/widget/L;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/L;ILcom/dropbox/android/filemanager/Q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/dropbox/android/widget/M;->c:Lcom/dropbox/android/widget/L;

    iput p2, p0, Lcom/dropbox/android/widget/M;->a:I

    iput-object p3, p0, Lcom/dropbox/android/widget/M;->b:Lcom/dropbox/android/filemanager/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 1136
    iget v0, p0, Lcom/dropbox/android/widget/M;->a:I

    iget-object v1, p0, Lcom/dropbox/android/widget/M;->c:Lcom/dropbox/android/widget/L;

    iget-object v1, v1, Lcom/dropbox/android/widget/L;->a:Lcom/dropbox/android/widget/FileItemView;

    iget v1, v1, Lcom/dropbox/android/widget/FileItemView;->t:I

    if-ne v0, v1, :cond_28

    .line 1137
    iget-object v0, p0, Lcom/dropbox/android/widget/M;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_27

    .line 1138
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/dropbox/android/widget/M;->c:Lcom/dropbox/android/widget/L;

    iget-object v1, v1, Lcom/dropbox/android/widget/L;->a:Lcom/dropbox/android/widget/FileItemView;

    invoke-virtual {v1}, Lcom/dropbox/android/widget/FileItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/widget/M;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1139
    iget-object v1, p0, Lcom/dropbox/android/widget/M;->c:Lcom/dropbox/android/widget/L;

    iget-object v1, v1, Lcom/dropbox/android/widget/L;->a:Lcom/dropbox/android/widget/FileItemView;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/widget/FileItemView;Landroid/graphics/drawable/Drawable;Z)V

    .line 1144
    :cond_27
    :goto_27
    return-void

    .line 1141
    :cond_28
    iget-object v0, p0, Lcom/dropbox/android/widget/M;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_27

    .line 1142
    iget-object v0, p0, Lcom/dropbox/android/widget/M;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_27
.end method
