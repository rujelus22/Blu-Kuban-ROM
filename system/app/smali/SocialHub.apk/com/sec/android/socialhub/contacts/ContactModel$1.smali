.class final Lcom/sec/android/socialhub/contacts/ContactModel$1;
.super Ljava/lang/Object;
.source "ContactModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/contacts/ContactModel;
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
        "Lcom/sec/android/socialhub/contacts/ContactModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/contacts/ContactModel;
    .registers 4
    .parameter "source"

    .prologue
    .line 45
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactModel;

    invoke-direct {v0}, Lcom/sec/android/socialhub/contacts/ContactModel;-><init>()V

    .line 46
    .local v0, model:Lcom/sec/android/socialhub/contacts/ContactModel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactModel;->access$002(Lcom/sec/android/socialhub/contacts/ContactModel;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/contacts/ContactModel;->access$102(Lcom/sec/android/socialhub/contacts/ContactModel;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactModel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/socialhub/contacts/ContactModel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/socialhub/contacts/ContactModel;
    .registers 3
    .parameter "size"

    .prologue
    .line 51
    new-array v0, p1, [Lcom/sec/android/socialhub/contacts/ContactModel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/contacts/ContactModel$1;->newArray(I)[Lcom/sec/android/socialhub/contacts/ContactModel;

    move-result-object v0

    return-object v0
.end method
