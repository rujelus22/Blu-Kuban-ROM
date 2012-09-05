.class final Landroid/net/fourG/wimax/Wimax4GConfiguration$1;
.super Ljava/lang/Object;
.source "Wimax4GConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GConfiguration;
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
        "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GConfiguration;
    .registers 4
    .parameter "in"

    .prologue
    .line 108
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GConfiguration;-><init>()V

    .line 109
    .local v0, info:Landroid/net/fourG/wimax/Wimax4GConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$002(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$102(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$202(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$302(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GConfiguration;->m_nNetworkId:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$402(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GConfiguration;->m_nStatus:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$502(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    #setter for: Landroid/net/fourG/net4GConfiguration;->m_nPriority:I
    invoke-static {v0, v1}, Landroid/net/fourG/wimax/Wimax4GConfiguration;->access$602(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I

    .line 116
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/fourG/wimax/Wimax4GConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/fourG/wimax/Wimax4GConfiguration;
    .registers 3
    .parameter "size"

    .prologue
    .line 120
    new-array v0, p1, [Landroid/net/fourG/wimax/Wimax4GConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GConfiguration$1;->newArray(I)[Landroid/net/fourG/wimax/Wimax4GConfiguration;

    move-result-object v0

    return-object v0
.end method
