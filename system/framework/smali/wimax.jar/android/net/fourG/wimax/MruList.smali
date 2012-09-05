.class public Landroid/net/fourG/wimax/MruList;
.super Ljava/lang/Object;
.source "MruList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_byBW:B

.field private m_byFFTSize:B

.field private m_nCenterfrequency:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Landroid/net/fourG/wimax/MruList$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/MruList$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/MruList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$002(Landroid/net/fourG/wimax/MruList;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput p1, p0, Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I

    return p1
.end method

.method static synthetic access$102(Landroid/net/fourG/wimax/MruList;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-byte p1, p0, Landroid/net/fourG/wimax/MruList;->m_byBW:B

    return p1
.end method

.method static synthetic access$202(Landroid/net/fourG/wimax/MruList;B)B
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-byte p1, p0, Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getBW()B
    .registers 2

    .prologue
    .line 37
    iget-byte v0, p0, Landroid/net/fourG/wimax/MruList;->m_byBW:B

    return v0
.end method

.method public getCenterfrequency()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I

    return v0
.end method

.method public getFFTSize()B
    .registers 2

    .prologue
    .line 41
    iget-byte v0, p0, Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B

    return v0
.end method

.method public setValue(IBB)V
    .registers 4
    .parameter "nCenterfrequency"
    .parameter "byBW"
    .parameter "byFFTSize"

    .prologue
    .line 23
    iput p1, p0, Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I

    .line 24
    iput-byte p2, p0, Landroid/net/fourG/wimax/MruList;->m_byBW:B

    .line 25
    iput-byte p3, p0, Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MruList: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "m_nCenterfrequency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_byBW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/net/fourG/wimax/MruList;->m_byBW:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", m_byFFTSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 55
    iget v0, p0, Landroid/net/fourG/wimax/MruList;->m_nCenterfrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-byte v0, p0, Landroid/net/fourG/wimax/MruList;->m_byBW:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    iget-byte v0, p0, Landroid/net/fourG/wimax/MruList;->m_byFFTSize:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 58
    return-void
.end method
