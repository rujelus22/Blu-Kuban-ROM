.class public LacJ;
.super Ljava/lang/Object;
.source "GroupChatInvitation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gtalkservice/GroupChatInvitation;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/GroupChatInvitation;
    .registers 3
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/gtalkservice/GroupChatInvitation;

    invoke-direct {v0, p1}, Lcom/google/android/gtalkservice/GroupChatInvitation;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/google/android/gtalkservice/GroupChatInvitation;
    .registers 3
    .parameter

    .prologue
    .line 85
    new-array v0, p1, [Lcom/google/android/gtalkservice/GroupChatInvitation;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, LacJ;->a(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, LacJ;->a(I)[Lcom/google/android/gtalkservice/GroupChatInvitation;

    move-result-object v0

    return-object v0
.end method
