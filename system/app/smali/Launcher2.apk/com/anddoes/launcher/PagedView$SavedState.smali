.class public Lcom/anddoes/launcher/PagedView$SavedState;
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
    .line 2139
    new-instance v0, Lcom/anddoes/launcher/jc;

    invoke-direct {v0}, Lcom/anddoes/launcher/jc;-><init>()V

    .line 2138
    sput-object v0, Lcom/anddoes/launcher/PagedView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2120
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 2128
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2121
    const/4 v0, -0x1

    iput v0, p0, Lcom/anddoes/launcher/PagedView$SavedState;->a:I

    .line 2129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/PagedView$SavedState;->a:I

    .line 2130
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2127
    invoke-direct {p0, p1}, Lcom/anddoes/launcher/PagedView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2134
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2135
    iget v0, p0, Lcom/anddoes/launcher/PagedView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    return-void
.end method
