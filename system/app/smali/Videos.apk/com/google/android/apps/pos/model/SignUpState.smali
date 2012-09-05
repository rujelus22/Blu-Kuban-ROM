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
    .line 49
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/pos/model/PlusoneResponse;-><init>()V

    .line 46
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/model/SignUpState;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 128
    instance-of v1, p1, Lcom/google/android/apps/pos/model/SignUpState;

    if-eqz v1, :cond_43

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/google/android/apps/pos/model/SignUpState;

    .line 130
    .local v0, otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getResponseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/apps/pos/model/SignUpState;->isSignedUp()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    .line 135
    .end local v0           #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :goto_40
    return v1

    .line 130
    .restart local v0       #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :cond_41
    const/4 v1, 0x0

    goto :goto_40

    .line 135
    .end local v0           #otherSignUpState:Lcom/google/android/apps/pos/model/SignUpState;
    :cond_43
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_40
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 123
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
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter "in"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/google/android/apps/pos/model/PlusoneResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, signedUp:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 155
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 157
    :cond_1b
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setEmail(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "email"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "responseId"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->responseId:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public setSignedUp(Ljava/lang/Boolean;)Lcom/google/android/apps/pos/model/SignUpState;
    .registers 2
    .parameter "signedUp"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    .line 110
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 115
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
    .line 140
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/pos/model/PlusoneResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->email:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_12
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    return-void

    .line 144
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/pos/model/SignUpState;->signedUp:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method
