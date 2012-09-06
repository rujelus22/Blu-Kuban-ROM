.class public Landroid/support/place/rpc/RpcContext;
.super Ljava/lang/Object;
.source "RpcContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/rpc/RpcContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCertificate:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Landroid/support/place/rpc/RpcContext$1;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcContext$1;-><init>()V

    sput-object v0, Landroid/support/place/rpc/RpcContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/place/rpc/RpcContext$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/support/place/rpc/RpcContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getCertificate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Landroid/support/place/rpc/RpcContext;->mCertificate:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/place/rpc/RpcContext;->mCertificate:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/place/rpc/RpcContext;->mCertificate:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
