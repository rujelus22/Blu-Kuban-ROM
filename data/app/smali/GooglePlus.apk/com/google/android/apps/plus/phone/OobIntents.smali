.class public Lcom/google/android/apps/plus/phone/OobIntents;
.super Ljava/lang/Object;
.source "OobIntents.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/plus/phone/OobIntents;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mInitial:Z

.field private final mStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/apps/plus/phone/OobIntents$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/phone/OobIntents$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/phone/OobIntents;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZ)V
    .registers 3
    .parameter "step"
    .parameter "initial"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    .line 36
    iput-boolean p2, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mInitial:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mInitial:Z

    .line 139
    return-void

    .line 138
    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static getInitialIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "oobResponse"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    if-eqz p2, :cond_e

    .line 45
    new-instance v1, Lcom/google/android/apps/plus/phone/OobIntents;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/plus/phone/OobIntents;-><init>(IZ)V

    invoke-static {p0, p1, v1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getOutOfBoxActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;Lcom/google/wireless/tacotruck/proto/Network$OutOfBoxResponse;)Landroid/content/Intent;

    move-result-object v1

    .line 54
    :goto_d
    return-object v1

    .line 49
    :cond_e
    invoke-static {p0, p1, v2}, Lcom/google/android/apps/plus/phone/OobIntents;->nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v0

    .line 50
    .local v0, step:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 51
    const/4 v1, 0x0

    goto :goto_d

    .line 54
    :cond_17
    new-instance v1, Lcom/google/android/apps/plus/phone/OobIntents;

    invoke-direct {v1, v0, v3}, Lcom/google/android/apps/plus/phone/OobIntents;-><init>(IZ)V

    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/phone/OobIntents;->getStepIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_d
.end method

.method private static getStepIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "intents"

    .prologue
    .line 115
    iget v0, p2, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    packed-switch v0, :pswitch_data_16

    .line 124
    const/4 v0, 0x0

    :goto_6
    return-object v0

    .line 117
    :pswitch_7
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getOobSuggestedPeopleActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    .line 119
    :pswitch_c
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getOobContactsSyncIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    .line 121
    :pswitch_11
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/phone/Intents;->getOobInstantUploadIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_6

    .line 115
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_c
        :pswitch_11
    .end packed-switch
.end method

.method private static nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "currentStep"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 88
    packed-switch p2, :pswitch_data_24

    move v0, v2

    .line 110
    :cond_7
    :goto_7
    return v0

    .line 90
    :pswitch_8
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAccountsData;->hasSeenWarmWelcome(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    invoke-static {p0, p1, v0}, Lcom/google/android/apps/plus/phone/OobIntents;->nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v0

    goto :goto_7

    .line 97
    :pswitch_13
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AndroidContactsSync;->isContactsProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    move v0, v1

    .line 98
    goto :goto_7

    .line 100
    :cond_1b
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/plus/phone/OobIntents;->nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v0

    goto :goto_7

    .line 104
    :pswitch_20
    const/4 v0, 0x3

    goto :goto_7

    :pswitch_22
    move v0, v2

    .line 107
    goto :goto_7

    .line 88
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_8
        :pswitch_13
        :pswitch_20
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public getNextIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 61
    iget v2, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    invoke-static {p1, p2, v2}, Lcom/google/android/apps/plus/phone/OobIntents;->nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v1

    .line 62
    .local v1, step:I
    const/4 v2, 0x4

    if-ne v1, v2, :cond_b

    .line 63
    const/4 v2, 0x0

    .line 70
    :goto_a
    return-object v2

    .line 69
    :cond_b
    iget v2, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    if-nez v2, :cond_1a

    const/4 v0, 0x1

    .line 70
    .local v0, initial:Z
    :goto_10
    new-instance v2, Lcom/google/android/apps/plus/phone/OobIntents;

    invoke-direct {v2, v1, v0}, Lcom/google/android/apps/plus/phone/OobIntents;-><init>(IZ)V

    invoke-static {p1, p2, v2}, Lcom/google/android/apps/plus/phone/OobIntents;->getStepIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/phone/OobIntents;)Landroid/content/Intent;

    move-result-object v2

    goto :goto_a

    .line 69
    .end local v0           #initial:Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isInitialIntent()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mInitial:Z

    return v0
.end method

.method public isLastIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/plus/phone/OobIntents;->nextStep(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 132
    iget v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mStep:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-boolean v0, p0, Lcom/google/android/apps/plus/phone/OobIntents;->mInitial:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void

    .line 133
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method
