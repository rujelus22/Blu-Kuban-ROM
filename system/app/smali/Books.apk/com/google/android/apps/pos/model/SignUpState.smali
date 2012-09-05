.class public Lcom/google/android/apps/pos/model/SignUpState;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "SignUpState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/pos/model/SignUpState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "display_name"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private signedUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/apps/pos/model/SignUpState$1;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/SignUpState$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/model/SignUpState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 52
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/SignUpState;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 149
    instance-of v1, p1, Lcom/google/android/apps/pos/model/SignUpState;

    if-eqz v1, :cond_5f

    move-object v0, p1

    .line 150
    check-cast v0, Lcom/google/android/apps/pos/model/SignUpState;

    .line 151
    .local v0, otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    move v1, v2

    :goto_50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 157
    .end local v0           #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :goto_5a
    return v2

    .restart local v0       #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :cond_5b
    move v1, v3

    .line 151
    goto :goto_50

    :cond_5d
    move v2, v3

    goto :goto_5a

    .line 157
    .end local v0           #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :cond_5f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_5a
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 144
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSignedUp()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, signedUp:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 180
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "email"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "profileImageUrl"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "responseId"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->responseId:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "signedUp"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 116
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Objects$ToStringHelper;->addValue(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return-void

    .line 166
    :cond_1b
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
