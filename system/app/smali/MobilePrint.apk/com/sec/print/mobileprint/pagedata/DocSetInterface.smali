.class public Lcom/sec/print/mobileprint/pagedata/DocSetInterface;
.super Ljava/lang/Object;
.source "DocSetInterface.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/print/mobileprint/pagedata/DocSetInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Lcom/sec/print/mobileprint/pagedata/DocSetInterface$1;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface$1;-><init>()V

    sput-object v0, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static readClassNameFromParcel(Landroid/os/Parcel;)Ljava/lang/String;
    .registers 2
    .parameter "in"

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, simpleName:Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 45
    return-void
.end method

.method public writeClassNameToParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "dest"

    .prologue
    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/sec/print/mobileprint/pagedata/DocSetInterface;->writeClassNameToParcel(Landroid/os/Parcel;)V

    .line 36
    return-void
.end method
