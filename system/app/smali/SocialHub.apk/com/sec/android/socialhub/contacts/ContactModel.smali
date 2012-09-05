.class public Lcom/sec/android/socialhub/contacts/ContactModel;
.super Ljava/lang/Object;
.source "ContactModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/socialhub/contacts/ContactModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mFriendID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/sec/android/socialhub/contacts/ContactModel$1;

    invoke-direct {v0}, Lcom/sec/android/socialhub/contacts/ContactModel$1;-><init>()V

    sput-object v0, Lcom/sec/android/socialhub/contacts/ContactModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    .line 15
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/socialhub/contacts/ContactModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/socialhub/contacts/ContactModel;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6
    iput-object p1, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "arg1"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/android/socialhub/contacts/ContactModel;->mFriendID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method
