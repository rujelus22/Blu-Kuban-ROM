.class final Lcom/dropbox/android/filemanager/H;
.super Lcom/dropbox/android/filemanager/P;
.source "panda.py"


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;IILcom/dropbox/android/filemanager/O;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 726
    const/4 v0, 0x0

    invoke-direct {p0, p4, p2, p3, v0}, Lcom/dropbox/android/filemanager/P;-><init>(Lcom/dropbox/android/filemanager/O;IILcom/dropbox/android/filemanager/G;)V

    .line 727
    iput-object p1, p0, Lcom/dropbox/android/filemanager/H;->a:Landroid/net/Uri;

    .line 728
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
    .registers 8
    .parameter

    .prologue
    .line 732
    iget-object v0, p0, Lcom/dropbox/android/filemanager/H;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/dropbox/android/filemanager/F;->a(Landroid/net/Uri;)Lcom/dropbox/android/filemanager/L;

    move-result-object v2

    .line 734
    if-eqz v2, :cond_31

    .line 735
    iget-object v0, p0, Lcom/dropbox/android/filemanager/H;->a:Landroid/net/Uri;

    invoke-static {v2, p1, v0}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    .line 736
    if-lez v3, :cond_31

    .line 737
    iget v0, p0, Lcom/dropbox/android/filemanager/H;->d:I

    invoke-static {v2, p1, v3, v0}, Lcom/dropbox/android/filemanager/L;->a(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 738
    if-nez v0, :cond_33

    .line 739
    iget v0, p0, Lcom/dropbox/android/filemanager/H;->d:I

    invoke-virtual {v2, p1, v3, v0}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 741
    :goto_1f
    if-eqz v1, :cond_31

    .line 742
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v4

    iget v5, p0, Lcom/dropbox/android/filemanager/H;->d:I

    invoke-static {v2, p1, v3, v5}, Lcom/dropbox/android/filemanager/L;->b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J

    move-result-wide v2

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    .line 750
    :goto_30
    return-object v0

    :cond_31
    const/4 v0, 0x0

    goto :goto_30

    :cond_33
    move-object v1, v0

    goto :goto_1f
.end method
