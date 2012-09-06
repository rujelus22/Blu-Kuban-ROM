.class public final Lcom/dropbox/android/provider/f;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Lcom/dropbox/android/provider/a;

.field public static c:Lcom/dropbox/android/provider/a;

.field public static d:Lcom/dropbox/android/provider/a;

.field public static e:Lcom/dropbox/android/provider/a;

.field public static f:Lcom/dropbox/android/provider/a;

.field public static g:Lcom/dropbox/android/provider/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 5
    const-string v0, "upload_log"

    sput-object v0, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "_id"

    sget-object v3, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->b:Lcom/dropbox/android/provider/a;

    .line 8
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "timestamp_utc"

    sget-object v3, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->c:Lcom/dropbox/android/provider/a;

    .line 9
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "dropbox_path"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    .line 10
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "local_file"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    .line 11
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "size"

    sget-object v3, Lcom/dropbox/android/provider/b;->a:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->f:Lcom/dropbox/android/provider/a;

    .line 12
    new-instance v0, Lcom/dropbox/android/provider/a;

    sget-object v1, Lcom/dropbox/android/provider/f;->a:Ljava/lang/String;

    const-string v2, "status"

    sget-object v3, Lcom/dropbox/android/provider/b;->b:Lcom/dropbox/android/provider/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/android/provider/a;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/android/provider/b;)V

    sput-object v0, Lcom/dropbox/android/provider/f;->g:Lcom/dropbox/android/provider/a;

    return-void
.end method
