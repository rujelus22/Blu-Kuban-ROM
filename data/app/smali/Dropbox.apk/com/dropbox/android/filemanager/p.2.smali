.class final Lcom/dropbox/android/filemanager/p;
.super Landroid/os/Handler;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/filemanager/g;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/filemanager/g;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/filemanager/g;Lcom/dropbox/android/filemanager/h;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/dropbox/android/filemanager/p;-><init>(Lcom/dropbox/android/filemanager/g;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter

    .prologue
    .line 313
    iget-object v0, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    iget-boolean v0, v0, Lcom/dropbox/android/filemanager/g;->f:Z

    if-eqz v0, :cond_7

    .line 332
    :goto_6
    return-void

    .line 316
    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 319
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 320
    new-instance v4, Lcom/dropbox/android/util/D;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-direct {v4, v1}, Lcom/dropbox/android/util/D;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_29

    .line 323
    iget-object v1, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/g;->b:Lcom/dropbox/android/util/G;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/dropbox/android/util/G;->a(ILcom/dropbox/android/util/D;)V

    .line 325
    :cond_29
    iget-object v1, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_64

    .line 326
    iget-object v1, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_41
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dropbox/android/filemanager/q;

    .line 327
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v6, v4, v2}, Lcom/dropbox/android/filemanager/q;->a(ILcom/dropbox/android/util/D;Z)V

    goto :goto_41

    .line 329
    :cond_5d
    iget-object v0, p0, Lcom/dropbox/android/filemanager/p;->a:Lcom/dropbox/android/filemanager/g;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_64
    invoke-virtual {v4}, Lcom/dropbox/android/util/D;->b()V

    goto :goto_6
.end method
