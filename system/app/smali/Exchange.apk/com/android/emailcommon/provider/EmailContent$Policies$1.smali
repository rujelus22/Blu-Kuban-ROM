.class final Lcom/android/emailcommon/provider/EmailContent$Policies$1;
.super Ljava/lang/Object;
.source "EmailContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/emailcommon/provider/EmailContent$Policies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$Policies;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 8176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/EmailContent$Policies;
    .registers 3
    .parameter "in"

    .prologue
    .line 8178
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Policies;

    invoke-direct {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$Policies;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8176
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Policies$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/emailcommon/provider/EmailContent$Policies;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/emailcommon/provider/EmailContent$Policies;
    .registers 3
    .parameter "size"

    .prologue
    .line 8182
    new-array v0, p1, [Lcom/android/emailcommon/provider/EmailContent$Policies;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 8176
    invoke-virtual {p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Policies$1;->newArray(I)[Lcom/android/emailcommon/provider/EmailContent$Policies;

    move-result-object v0

    return-object v0
.end method