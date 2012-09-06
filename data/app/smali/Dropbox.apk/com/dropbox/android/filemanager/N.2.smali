.class final Lcom/dropbox/android/filemanager/N;
.super Lcom/dropbox/android/filemanager/P;
.source "panda.py"


# instance fields
.field private final a:Lcom/dropbox/android/filemanager/L;

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/dropbox/android/filemanager/L;IIILcom/dropbox/android/filemanager/O;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-direct {p0, p5, p3, p4, v0}, Lcom/dropbox/android/filemanager/P;-><init>(Lcom/dropbox/android/filemanager/O;IILcom/dropbox/android/filemanager/G;)V

    .line 651
    iput-object p1, p0, Lcom/dropbox/android/filemanager/N;->a:Lcom/dropbox/android/filemanager/L;

    .line 652
    iput p2, p0, Lcom/dropbox/android/filemanager/N;->e:I

    .line 653
    return-void
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/Q;
    .registers 8
    .parameter

    .prologue
    .line 657
    iget-object v0, p0, Lcom/dropbox/android/filemanager/N;->a:Lcom/dropbox/android/filemanager/L;

    iget v1, p0, Lcom/dropbox/android/filemanager/N;->e:I

    iget v2, p0, Lcom/dropbox/android/filemanager/N;->d:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/dropbox/android/filemanager/L;->a(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 658
    if-eqz v1, :cond_22

    .line 659
    new-instance v0, Lcom/dropbox/android/filemanager/Q;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/N;->a:Lcom/dropbox/android/filemanager/L;

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/L;->d()Z

    move-result v2

    iget-object v3, p0, Lcom/dropbox/android/filemanager/N;->a:Lcom/dropbox/android/filemanager/L;

    iget v4, p0, Lcom/dropbox/android/filemanager/N;->e:I

    iget v5, p0, Lcom/dropbox/android/filemanager/N;->d:I

    invoke-static {v3, p1, v4, v5}, Lcom/dropbox/android/filemanager/L;->b(Lcom/dropbox/android/filemanager/L;Landroid/content/Context;II)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/android/filemanager/Q;-><init>(Landroid/graphics/Bitmap;ZJ)V

    .line 661
    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
