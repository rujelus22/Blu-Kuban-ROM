.class public final Lcom/dropbox/android/filemanager/Q;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Z

.field public c:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZJ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_d

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ThumbnailResult bitmap can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_d
    iput-object p1, p0, Lcom/dropbox/android/filemanager/Q;->a:Landroid/graphics/Bitmap;

    .line 93
    iput-boolean p2, p0, Lcom/dropbox/android/filemanager/Q;->b:Z

    .line 94
    iput-wide p3, p0, Lcom/dropbox/android/filemanager/Q;->c:J

    .line 95
    return-void
.end method
