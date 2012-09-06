.class public Lcom/google/googlenav/ui/bE;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 919
    new-instance v0, Lcom/google/googlenav/ui/bF;

    invoke-direct {v0}, Lcom/google/googlenav/ui/bF;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/bE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/bE;->a:I

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/bE;->a:I

    .line 910
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/googlenav/ui/bB;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 900
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/bE;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter

    .prologue
    .line 904
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 901
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/bE;->a:I

    .line 905
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 914
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 915
    iget v0, p0, Lcom/google/googlenav/ui/bE;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 916
    return-void
.end method
