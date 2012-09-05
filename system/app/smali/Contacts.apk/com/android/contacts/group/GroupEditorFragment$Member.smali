.class public Lcom/android/contacts/group/GroupEditorFragment$Member;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Member"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ARRAY:[Lcom/android/contacts/group/GroupEditorFragment$Member;


# instance fields
.field private final mContactId:J

.field private final mDisplayName:Ljava/lang/String;

.field private final mLookupUri:Landroid/net/Uri;

.field private final mPhotoUri:Landroid/net/Uri;

.field private final mRawContactId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1110
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/contacts/group/GroupEditorFragment$Member;

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->EMPTY_ARRAY:[Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 1180
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$Member$1;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member$1;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$Member;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 1172
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1173
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    .line 1174
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    .line 1175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    .line 1176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    .line 1177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    .line 1178
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/group/GroupEditorFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1109
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1160
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 1150
    instance-of v2, p1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    if-eqz v2, :cond_17

    move-object v0, p1

    .line 1151
    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 1152
    .local v0, otherMember:Lcom/android/contacts/group/GroupEditorFragment$Member;
    if-eqz v0, :cond_17

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getLookupUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    .line 1154
    .end local v0           #otherMember:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_17
    return v1
.end method

.method public getLookupUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1165
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mRawContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1166
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mContactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1167
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1168
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$Member;->mPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1170
    return-void
.end method
