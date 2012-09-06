.class final Lcom/dropbox/android/service/k;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/service/v;


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/CameraUploadService;


# direct methods
.method private constructor <init>(Lcom/dropbox/android/service/CameraUploadService;)V
    .registers 2
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/dropbox/android/service/k;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1001
    invoke-direct {p0, p1}, Lcom/dropbox/android/service/k;-><init>(Lcom/dropbox/android/service/CameraUploadService;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/service/w;)V
    .registers 5
    .parameter

    .prologue
    .line 1004
    invoke-virtual {p1}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1005
    iget-object v0, p0, Lcom/dropbox/android/service/k;->a:Lcom/dropbox/android/service/CameraUploadService;

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;J)V

    .line 1007
    :cond_d
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 1011
    const/4 v0, 0x1

    return v0
.end method
