.class public final Lcom/dropbox/android/provider/c;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:Lcom/dropbox/android/provider/a;

.field public static final b:Lcom/dropbox/android/provider/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 16
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "camera_upload_gallery_v2"

    const-string v2, "dropbox_canon_path"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/c;->a:Lcom/dropbox/android/provider/a;

    .line 23
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "camera_upload_gallery_v2"

    const-string v2, "sort_key"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/c;->b:Lcom/dropbox/android/provider/a;

    return-void
.end method
