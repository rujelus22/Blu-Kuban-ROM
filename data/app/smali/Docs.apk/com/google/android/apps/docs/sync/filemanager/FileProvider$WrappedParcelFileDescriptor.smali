.class Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;
.super Landroid/os/ParcelFileDescriptor;
.source "FileProvider.java"


# instance fields
.field private final a:LQX;


# direct methods
.method private constructor <init>(Landroid/os/ParcelFileDescriptor;LQX;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 37
    iput-object p2, p0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;->a:LQX;

    .line 38
    return-void
.end method

.method static a(LQX;)Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;
    .registers 3
    .parameter

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;

    invoke-interface {p0}, LQX;->a()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;LQX;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 42
    invoke-super {p0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/sync/filemanager/FileProvider$WrappedParcelFileDescriptor;->a:LQX;

    invoke-interface {v0}, LQX;->a()V

    .line 44
    return-void
.end method
