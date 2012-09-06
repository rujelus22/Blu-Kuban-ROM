.class final Lcom/dropbox/android/filemanager/D;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 4
    .parameter

    .prologue
    .line 35
    new-instance v0, Lcom/dropbox/android/filemanager/LocalEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dropbox/android/filemanager/LocalEntry;-><init>(Landroid/os/Parcel;Lcom/dropbox/android/filemanager/D;)V

    return-object v0
.end method

.method public final a(I)[Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 3
    .parameter

    .prologue
    .line 40
    new-array v0, p1, [Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dropbox/android/filemanager/D;->a(Landroid/os/Parcel;)Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/dropbox/android/filemanager/D;->a(I)[Lcom/dropbox/android/filemanager/LocalEntry;

    move-result-object v0

    return-object v0
.end method
