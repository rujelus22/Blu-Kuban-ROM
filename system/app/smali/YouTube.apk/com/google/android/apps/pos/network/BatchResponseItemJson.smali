.class public Lcom/google/android/apps/pos/network/BatchResponseItemJson;
.super Lcom/google/api/client/json/b;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private error:Lcom/google/android/apps/pos/model/PlusoneError;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private responseId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "id"
    .end annotation
.end field

.field private result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    new-instance v0, Lcom/google/android/apps/pos/network/a;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/a;-><init>()V

    sput-object v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->readFromParcel(Landroid/os/Parcel;)V

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public getError()Lcom/google/android/apps/pos/model/PlusoneError;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    return-object v0
.end method

.method public hasError()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasResult()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

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
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->responseId:Ljava/lang/String;

    .line 127
    const-class v0, Lcom/google/android/apps/pos/model/PlusoneError;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/model/PlusoneError;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    .line 128
    const-class v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    .line 129
    return-void
.end method

.method setError(Lcom/google/android/apps/pos/model/PlusoneError;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    .line 88
    return-object p0
.end method

.method setResponseId(Ljava/lang/String;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->responseId:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method setResult(Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;)Lcom/google/android/apps/pos/network/BatchResponseItemJson;
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    .line 107
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->responseId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/pos/network/BatchResponseItemJson;->result:Lcom/google/android/apps/pos/network/BatchResponseItemJson$ResultJson;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 123
    return-void
.end method
