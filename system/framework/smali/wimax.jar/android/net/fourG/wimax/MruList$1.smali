.class final Landroid/net/fourG/wimax/MruList$1;
.super Ljava/lang/Object;
.source "MruList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/MruList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/fourG/wimax/MruList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/MruList;
    .registers 4
    .parameter "in"

    .prologue
    .line 64
    new-instance v0, Landroid/net/fourG/wimax/MruList;

    invoke-direct {v0}, Landroid/net/fourG/wimax/MruList;-><init>()V

    .line 65
    .local v0, info:Landroid/net/fourG/wimax/MruList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/MruList;->access$002(Landroid/net/fourG/wimax/MruList;I)I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Landroid/net/fourG/wimax/MruList;->m_byBW:B
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/MruList;->access$102(Landroid/net/fourG/wimax/MruList;B)B

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    #setter for: Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/MruList;->access$202(Landroid/net/fourG/wimax/MruList;B)B

    .line 68
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/MruList$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/MruList;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/MruList;
    .registers 3
    .parameter "size"

    .prologue
    .line 72
    new-array v0, p1, [Landroid/net/fourG/wimax/MruList;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/MruList$1;->newArray(I)[Landroid/net/fourG/wimax/MruList;

    move-result-object v0

    return-object v0
.end method
