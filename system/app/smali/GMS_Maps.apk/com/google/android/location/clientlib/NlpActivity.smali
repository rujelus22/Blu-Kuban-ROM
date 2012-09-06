.class public Lcom/google/android/location/clientlib/NlpActivity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

.field private final b:I

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/google/android/location/clientlib/a;

    invoke-direct {v0}, Lcom/google/android/location/clientlib/a;-><init>()V

    sput-object v0, Lcom/google/android/location/clientlib/NlpActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->values()[Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->b:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->c:J

    .line 100
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/location/clientlib/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/location/clientlib/NlpActivity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/clientlib/NlpActivity$ActivityType;IJ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/android/location/clientlib/NlpActivity;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    .line 39
    iput p2, p0, Lcom/google/android/location/clientlib/NlpActivity;->b:I

    .line 40
    iput-wide p3, p0, Lcom/google/android/location/clientlib/NlpActivity;->c:J

    .line 41
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->c:J

    return-wide v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Lcom/google/android/location/clientlib/NlpActivity$ActivityType;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NlpActivity [activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/clientlib/NlpActivity;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/clientlib/NlpActivity;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/location/clientlib/NlpActivity;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->a:Lcom/google/android/location/clientlib/NlpActivity$ActivityType;

    invoke-virtual {v0}, Lcom/google/android/location/clientlib/NlpActivity$ActivityType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-wide v0, p0, Lcom/google/android/location/clientlib/NlpActivity;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    return-void
.end method
