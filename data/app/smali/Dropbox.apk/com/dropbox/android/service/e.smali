.class final Lcom/dropbox/android/service/e;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldbxyzptlk/j/m;

.field final synthetic b:Lcom/dropbox/android/service/CameraUploadService;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/CameraUploadService;Ldbxyzptlk/j/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/dropbox/android/service/e;->b:Lcom/dropbox/android/service/CameraUploadService;

    iput-object p2, p0, Lcom/dropbox/android/service/e;->a:Ldbxyzptlk/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 267
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hash update required."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/dropbox/android/service/e;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->b(Lcom/dropbox/android/service/CameraUploadService;)V

    .line 269
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->n()V

    .line 270
    iget-object v0, p0, Lcom/dropbox/android/service/e;->a:Ldbxyzptlk/j/m;

    sget-object v1, Ldbxyzptlk/j/p;->c:Ldbxyzptlk/j/p;

    invoke-virtual {v0, v1}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/p;)V

    .line 271
    iget-object v0, p0, Lcom/dropbox/android/service/e;->b:Lcom/dropbox/android/service/CameraUploadService;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;J)V

    .line 272
    return-void
.end method
