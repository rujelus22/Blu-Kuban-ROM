.class public Lcom/google/android/gsf/GoogleLoginCredentialsResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCredentialsIntent:Landroid/content/Intent;

.field private mCredentialsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/gsf/a;

    invoke-direct {v0}, Lcom/google/android/gsf/a;-><init>()V

    sput-object v0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 89
    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 139
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gsf/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->describeContents()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getCredentialsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 147
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2f

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 150
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 152
    :cond_2f
    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setCredentialsIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    .line 100
    return-void
.end method

.method public setCredentialsString(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mAccount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    if-eqz v0, :cond_19

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;->mCredentialsIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    :goto_18
    return-void

    .line 122
    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18
.end method