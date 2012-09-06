.class final Lcom/dropbox/android/filemanager/I;
.super Lcom/dropbox/android/filemanager/P;
.source "panda.py"


# instance fields
.field private final a:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIILcom/dropbox/android/filemanager/O;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, p6, p4, p5, v0}, Lcom/dropbox/android/filemanager/P;-><init>(Lcom/dropbox/android/filemanager/O;IILcom/dropbox/android/filemanager/G;)V

    .line 763
    iput-object p1, p0, Lcom/dropbox/android/filemanager/I;->a:Ljava/lang/String;

    .line 764
    iput-object p2, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    .line 765
    iput-boolean p3, p0, Lcom/dropbox/android/filemanager/I;->f:Z

    .line 766
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
    .registers 11
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 771
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 772
    if-eqz v0, :cond_60

    .line 773
    iget v1, p0, Lcom/dropbox/android/filemanager/I;->d:I

    invoke-static {v0, v1, p1}, Lcom/dropbox/android/filemanager/F;->a(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 774
    if-eq v3, v0, :cond_35

    .line 775
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 776
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 777
    invoke-static {v2}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;)Lcom/dropbox/android/filemanager/L;

    move-result-object v4

    .line 778
    invoke-virtual {v4}, Lcom/dropbox/android/filemanager/L;->c()Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/I;->f:Z

    invoke-static {v4, p1, v2}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v4

    iget v5, p0, Lcom/dropbox/android/filemanager/I;->d:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V

    .line 787
    :cond_35
    :goto_35
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    invoke-direct {v0, v3, v6, v7, v8}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    .line 816
    :goto_3a
    return-object v0

    .line 780
    :cond_3b
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-static {p1, v0}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 782
    if-eqz v2, :cond_35

    .line 783
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/L;->c()Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/dropbox/android/filemanager/I;->f:Z

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/dropbox/android/filemanager/I;->d:I

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;ZLandroid/content/Context;Landroid/graphics/Bitmap;II)V

    goto :goto_35

    .line 790
    :cond_60
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 791
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 792
    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;)Lcom/dropbox/android/filemanager/L;

    move-result-object v1

    .line 793
    if-eqz v1, :cond_b7

    .line 794
    invoke-static {v1, p1, v0}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 795
    if-lez v0, :cond_b7

    .line 796
    iget v2, p0, Lcom/dropbox/android/filemanager/I;->d:I

    invoke-virtual {v1, p1, v0, v2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 797
    if-eqz v1, :cond_b7

    .line 798
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    goto :goto_3a

    .line 803
    :cond_88
    iget-object v0, p0, Lcom/dropbox/android/filemanager/I;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 804
    invoke-static {p1, v0}, Lcom/dropbox/android/filemanager/F;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 806
    if-eqz v1, :cond_af

    .line 807
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/dropbox/android/filemanager/L;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/dropbox/android/filemanager/I;->d:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 811
    :goto_a7
    if-eqz v1, :cond_b7

    .line 812
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    invoke-direct {v0, v1, v6, v7, v8}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    goto :goto_3a

    .line 809
    :cond_af
    iget v1, p0, Lcom/dropbox/android/filemanager/I;->d:I

    invoke-static {v0, v6, v6, v1}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;ZZI)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    goto :goto_a7

    .line 816
    :cond_b7
    const/4 v0, 0x0

    goto :goto_3a
.end method
