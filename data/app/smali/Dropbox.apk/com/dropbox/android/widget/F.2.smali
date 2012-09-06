.class final Lcom/dropbox/android/widget/F;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/dropbox/android/widget/E;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/E;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 702
    iput-object p1, p0, Lcom/dropbox/android/widget/F;->b:Lcom/dropbox/android/widget/E;

    iput-object p2, p0, Lcom/dropbox/android/widget/F;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 709
    iget-object v0, p0, Lcom/dropbox/android/widget/F;->b:Lcom/dropbox/android/widget/E;

    iget-object v0, v0, Lcom/dropbox/android/widget/E;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v1, p0, Lcom/dropbox/android/widget/F;->b:Lcom/dropbox/android/widget/E;

    iget-object v1, v1, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, v1, Lcom/dropbox/android/widget/FileItemView;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 710
    iget-object v0, p0, Lcom/dropbox/android/widget/F;->b:Lcom/dropbox/android/widget/E;

    iget-object v0, v0, Lcom/dropbox/android/widget/E;->b:Lcom/dropbox/android/widget/FileItemView;

    iget-object v1, p0, Lcom/dropbox/android/widget/F;->a:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/widget/FileItemView;->a(Lcom/dropbox/android/widget/FileItemView;Landroid/graphics/drawable/Drawable;Z)V

    .line 712
    :cond_1c
    return-void
.end method
