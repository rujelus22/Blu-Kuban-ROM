.class final Lcom/dropbox/android/filemanager/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/Q;

.field final synthetic b:I

.field final synthetic c:Lcom/dropbox/android/filemanager/b;


# direct methods
.method constructor <init>(Lcom/dropbox/android/filemanager/b;Lcom/dropbox/android/filemanager/Q;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iput-object p2, p0, Lcom/dropbox/android/filemanager/c;->a:Lcom/dropbox/android/filemanager/Q;

    iput p3, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    iget-object v1, p0, Lcom/dropbox/android/filemanager/c;->a:Lcom/dropbox/android/filemanager/Q;

    if-nez v1, :cond_45

    .line 218
    iget-object v1, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    iget v2, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-virtual {v1, v2}, Lcom/dropbox/android/util/G;->a(I)V

    move-object v1, v0

    .line 223
    :goto_f
    iget-object v0, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    iget v2, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 224
    iget-object v0, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    iget v2, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/android/filemanager/f;

    .line 225
    iget v3, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-interface {v0, v3, v1}, Lcom/dropbox/android/filemanager/f;->a(ILcom/dropbox/android/util/D;)V

    goto :goto_33

    .line 220
    :cond_45
    new-instance v0, Lcom/dropbox/android/util/D;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/c;->a:Lcom/dropbox/android/filemanager/Q;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/D;-><init>(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v1, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/b;->b:Lcom/dropbox/android/util/G;

    iget v2, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-virtual {v1, v2, v0}, Lcom/dropbox/android/util/G;->a(ILcom/dropbox/android/util/D;)V

    move-object v1, v0

    goto :goto_f

    .line 227
    :cond_59
    iget-object v0, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/b;->a:Ljava/util/HashMap;

    iget v2, p0, Lcom/dropbox/android/filemanager/c;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_66
    if-eqz v1, :cond_6b

    .line 230
    invoke-virtual {v1}, Lcom/dropbox/android/util/D;->b()V

    .line 232
    :cond_6b
    iget-object v0, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/dropbox/android/filemanager/b;->e:Z

    .line 233
    iget-object v0, p0, Lcom/dropbox/android/filemanager/c;->c:Lcom/dropbox/android/filemanager/b;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/b;->b()V

    .line 234
    return-void
.end method
