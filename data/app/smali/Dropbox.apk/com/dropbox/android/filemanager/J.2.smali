.class final Lcom/dropbox/android/filemanager/J;
.super Lcom/dropbox/android/filemanager/K;
.source "panda.py"


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/filemanager/K;-><init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V

    .line 690
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 695
    iget-object v0, p0, Lcom/dropbox/android/filemanager/J;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-static {p1, v3}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 697
    if-eqz v4, :cond_51

    .line 698
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/dropbox/android/filemanager/J;->d:I

    invoke-static {v0, p1, v1, v2}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 699
    if-nez v0, :cond_63

    .line 700
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/dropbox/android/filemanager/J;->d:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 702
    :goto_34
    if-eqz v2, :cond_51

    .line 703
    new-instance v1, Lcom/dropbox/android/filemanager/Q;

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v3

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget v4, p0, Lcom/dropbox/android/filemanager/J;->c:I

    iget v5, p0, Lcom/dropbox/android/filemanager/J;->d:I

    invoke-static {v0, p1, v4, v5}, Lcom/dropbox/android/filemanager/L;->b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    move-object v0, v1

    .line 716
    :goto_50
    return-object v0

    .line 712
    :cond_51
    iget v0, p0, Lcom/dropbox/android/filemanager/J;->d:I

    invoke-static {v3, v5, v5, v0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;ZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 713
    if-eqz v1, :cond_61

    .line 714
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    goto :goto_50

    .line 716
    :cond_61
    const/4 v0, 0x0

    goto :goto_50

    :cond_63
    move-object v2, v0

    goto :goto_34
.end method
