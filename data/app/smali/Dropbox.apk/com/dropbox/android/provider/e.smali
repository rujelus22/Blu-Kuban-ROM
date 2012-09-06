.class public final Lcom/dropbox/android/provider/e;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static final a:Lcom/dropbox/android/provider/a;

.field public static final b:Lcom/dropbox/android/provider/a;

.field public static final c:Lcom/dropbox/android/provider/a;

.field public static final d:Lcom/dropbox/android/provider/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 8
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "thumbnail_info"

    const-string v2, "_id"

    sget-object v3, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/e;->a:Lcom/dropbox/android/provider/a;

    .line 9
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "thumbnail_info"

    const-string v2, "dropbox_canon_path"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/e;->b:Lcom/dropbox/android/provider/a;

    .line 10
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "thumbnail_info"

    const-string v2, "thumb_size"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/e;->c:Lcom/dropbox/android/provider/a;

    .line 11
    new-instance v0, Lcom/dropbox/android/provider/a;

    const-string v1, "thumbnail_info"

    const-string v2, "revision"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/e;->d:Lcom/dropbox/android/provider/a;

    return-void
.end method
