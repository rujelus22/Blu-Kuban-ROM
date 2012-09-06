.class public Lcom/google/android/ytremote/model/ScreenId;
.super Lcom/google/android/ytremote/model/StringId;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/ytremote/model/a;

    invoke-direct {v0}, Lcom/google/android/ytremote/model/a;-><init>()V

    sput-object v0, Lcom/google/android/ytremote/model/ScreenId;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/ytremote/model/StringId;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/ytremote/model/ScreenId;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
