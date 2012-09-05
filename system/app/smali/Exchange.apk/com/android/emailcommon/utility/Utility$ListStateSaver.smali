.class public Lcom/android/emailcommon/utility/Utility$ListStateSaver;
.super Ljava/lang/Object;
.source "Utility.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/utility/Utility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListStateSaver"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/emailcommon/utility/Utility$ListStateSaver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 984
    new-instance v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/Utility$ListStateSaver$1;-><init>()V

    sput-object v0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "p"

    .prologue
    .line 952
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 953
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;

    .line 954
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/emailcommon/utility/Utility$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 949
    invoke-direct {p0, p1}, Lcom/android/emailcommon/utility/Utility$ListStateSaver;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/emailcommon/utility/Utility$ListStateSaver;->mState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 982
    return-void
.end method
