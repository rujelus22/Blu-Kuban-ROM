.class final Landroid/support/v4/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:[Landroid/support/v4/app/r;

.field b:[I

.field c:[Landroid/support/v4/app/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 362
    new-instance v0, Landroid/support/v4/app/q;

    invoke-direct {v0}, Landroid/support/v4/app/q;-><init>()V

    sput-object v0, Landroid/support/v4/app/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    sget-object v0, Landroid/support/v4/app/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/r;

    iput-object v0, p0, Landroid/support/v4/app/p;->a:[Landroid/support/v4/app/r;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/p;->b:[I

    .line 349
    sget-object v0, Landroid/support/v4/app/d;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/d;

    iput-object v0, p0, Landroid/support/v4/app/p;->c:[Landroid/support/v4/app/d;

    .line 350
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v4/app/p;->a:[Landroid/support/v4/app/r;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 358
    iget-object v0, p0, Landroid/support/v4/app/p;->b:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 359
    iget-object v0, p0, Landroid/support/v4/app/p;->c:[Landroid/support/v4/app/d;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 360
    return-void
.end method
