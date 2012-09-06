.class Lcom/dropbox/android/filemanager/K;
.super Lcom/dropbox/android/filemanager/P;
.source "panda.py"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcom/dropbox/android/filemanager/O;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 671
    const/4 v0, 0x0

    invoke-direct {p0, p4, p2, p3, v0}, Lcom/dropbox/android/filemanager/P;-><init>(Lcom/dropbox/android/filemanager/O;IILcom/dropbox/android/filemanager/G;)V

    .line 672
    iput-object p1, p0, Lcom/dropbox/android/filemanager/K;->a:Ljava/lang/String;

    .line 673
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 677
    iget-object v0, p0, Lcom/dropbox/android/filemanager/K;->a:Ljava/lang/String;

    iget v1, p0, Lcom/dropbox/android/filemanager/K;->d:I

    invoke-static {v0, v4, v4, v1}, Lcom/dropbox/android/filemanager/F;->a(Ljava/lang/String;ZZI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 678
    if-eqz v1, :cond_13

    .line 679
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    .line 681
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method
