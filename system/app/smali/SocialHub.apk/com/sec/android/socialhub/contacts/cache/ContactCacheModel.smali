.class public final Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;
.super Ljava/lang/Object;
.source "ContactCacheModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bIsStale:I

.field public lContactID:J

.field public mDisaplyName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel$1;

    invoke-direct {v0}, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel$1;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    .line 20
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "arg1"

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->bIsStale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-wide v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->lContactID:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/cache/ContactCacheModel;->mDisaplyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    return-void
.end method
