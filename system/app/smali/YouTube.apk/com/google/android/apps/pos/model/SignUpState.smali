.class public Lcom/google/android/apps/pos/model/SignUpState;
.super Lcom/google/android/apps/pos/model/PlusoneResponse;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "display_name"
    .end annotation
.end field

.field private email:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private profileImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private signedUp:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/apps/pos/model/h;

    invoke-direct {v0}, Lcom/google/android/apps/pos/model/h;-><init>()V

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
    .parameter

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
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    instance-of v0, p1, Lcom/google/android/apps/pos/model/SignUpState;

    if-eqz v0, :cond_5e

    .line 150
    check-cast p1, Lcom/google/android/apps/pos/model/SignUpState;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/pos/model/SignUpState;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_4f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 157
    :goto_59
    return v1

    :cond_5a
    move v0, v2

    .line 151
    goto :goto_4f

    :cond_5c
    move v1, v2

    goto :goto_59

    .line 157
    :cond_5e
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_59
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

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

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

.method public isSignedUpKnown()Z
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_1b

    .line 178
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 180
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->profileImageUrl:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public bridge synthetic setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/PlusoneResponse;
    .registers 3
    .parameter

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/SignUpState;->setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;

    move-result-object v0

    return-object v0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->responseId:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter

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
    invoke-static {p0}, Lcom/google/common/base/aa;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/google/common/base/ab;->a(Ljava/lang/Object;)Lcom/google/common/base/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/ab;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

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
