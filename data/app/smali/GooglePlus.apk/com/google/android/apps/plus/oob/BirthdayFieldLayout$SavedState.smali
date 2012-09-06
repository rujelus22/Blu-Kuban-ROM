.class public Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BirthdayFieldLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/oob/BirthdayFieldLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final day:I

.field public final month:I

.field public final year:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->year:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->month:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->day:I

    .line 150
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5
    .parameter "superState"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 139
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 140
    iput p2, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->year:I

    .line 141
    iput p3, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->month:I

    .line 142
    iput p4, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->day:I

    .line 143
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 157
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 158
    iget v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->year:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->month:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/google/android/apps/plus/oob/BirthdayFieldLayout$SavedState;->day:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return-void
.end method
