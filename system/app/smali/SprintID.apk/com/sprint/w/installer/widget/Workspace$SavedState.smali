.class Lcom/sprint/w/installer/widget/Workspace$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sprint/w/installer/widget/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sprint/w/installer/widget/Workspace$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentScreen:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1047
    new-instance v0, Lcom/sprint/w/installer/widget/Workspace$SavedState$1;

    invoke-direct {v0}, Lcom/sprint/w/installer/widget/Workspace$SavedState$1;-><init>()V

    sput-object v0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 1036
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1029
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    .line 1037
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    .line 1038
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sprint/w/installer/widget/Workspace$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/sprint/w/installer/widget/Workspace$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "superState"

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1029
    const/4 v0, -0x1

    iput v0, p0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    .line 1033
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1042
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1043
    iget v0, p0, Lcom/sprint/w/installer/widget/Workspace$SavedState;->currentScreen:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    return-void
.end method
