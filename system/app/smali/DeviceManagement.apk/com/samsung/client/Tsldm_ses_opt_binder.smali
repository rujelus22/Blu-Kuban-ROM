.class public Lcom/samsung/client/Tsldm_ses_opt_binder;
.super Ljava/lang/Object;
.source "Tsldm_ses_opt_binder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/client/Tsldm_ses_opt_binder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cookie:I

.field public disp_name:Ljava/lang/String;

.field public enc:I

.field public max_msg_sz:I

.field public max_obj_sz:I

.field public ver:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    new-instance v0, Lcom/samsung/client/Tsldm_ses_opt_binder$1;

    invoke-direct {v0}, Lcom/samsung/client/Tsldm_ses_opt_binder$1;-><init>()V

    sput-object v0, Lcom/samsung/client/Tsldm_ses_opt_binder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p0, p1}, Lcom/samsung/client/Tsldm_ses_opt_binder;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/client/Tsldm_ses_opt_binder$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/samsung/client/Tsldm_ses_opt_binder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flag"

    .prologue
    .line 38
    iget v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->enc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->ver:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_msg_sz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->max_obj_sz:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-object v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->disp_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    iget v0, p0, Lcom/samsung/client/Tsldm_ses_opt_binder;->cookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
