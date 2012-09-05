.class Lcom/android/calendar/DatePickerWithLunar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePickerWithLunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/DatePickerWithLunar;
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
            "Lcom/android/calendar/DatePickerWithLunar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 924
    new-instance v0, Lcom/android/calendar/DatePickerWithLunar$SavedState$1;

    invoke-direct {v0}, Lcom/android/calendar/DatePickerWithLunar$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 909
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mYear:I

    .line 910
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mMonth:I

    .line 911
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mDay:I

    .line 912
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/calendar/DatePickerWithLunar$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 886
    invoke-direct {p0, p1}, Lcom/android/calendar/DatePickerWithLunar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 898
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 899
    iput p2, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mYear:I

    .line 900
    iput p3, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mMonth:I

    .line 901
    iput p4, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mDay:I

    .line 902
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/android/calendar/DatePickerWithLunar$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 886
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendar/DatePickerWithLunar$SavedState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/calendar/DatePickerWithLunar$SavedState;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 886
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 916
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 917
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 918
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget v0, p0, Lcom/android/calendar/DatePickerWithLunar$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 920
    return-void
.end method
