.class final Lcom/dropbox/android/widget/ao;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/dropbox/android/filemanager/Q;

.field final synthetic c:Lcom/dropbox/android/widget/an;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/an;ILcom/dropbox/android/filemanager/Q;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/dropbox/android/widget/ao;->c:Lcom/dropbox/android/widget/an;

    iput p2, p0, Lcom/dropbox/android/widget/ao;->a:I

    iput-object p3, p0, Lcom/dropbox/android/widget/ao;->b:Lcom/dropbox/android/filemanager/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 252
    iget v0, p0, Lcom/dropbox/android/widget/ao;->a:I

    iget-object v1, p0, Lcom/dropbox/android/widget/ao;->c:Lcom/dropbox/android/widget/an;

    iget-object v1, v1, Lcom/dropbox/android/widget/an;->a:Lcom/dropbox/android/widget/LocalItemView;

    invoke-static {v1}, Lcom/dropbox/android/widget/LocalItemView;->a(Lcom/dropbox/android/widget/LocalItemView;)I

    move-result v1

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/dropbox/android/widget/ao;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_1d

    .line 256
    iget-object v0, p0, Lcom/dropbox/android/widget/ao;->c:Lcom/dropbox/android/widget/an;

    iget-object v0, v0, Lcom/dropbox/android/widget/an;->a:Lcom/dropbox/android/widget/LocalItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/ao;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/widget/LocalItemView;->a(Lcom/dropbox/android/widget/LocalItemView;Landroid/graphics/Bitmap;Z)V

    .line 260
    :cond_1c
    :goto_1c
    return-void

    .line 257
    :cond_1d
    iget-object v0, p0, Lcom/dropbox/android/widget/ao;->b:Lcom/dropbox/android/filemanager/Q;

    if-eqz v0, :cond_1c

    .line 258
    iget-object v0, p0, Lcom/dropbox/android/widget/ao;->b:Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1c
.end method
