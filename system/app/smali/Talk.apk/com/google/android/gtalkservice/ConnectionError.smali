.class public final Lcom/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gtalkservice/ConnectionError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionError$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    .line 71
    return-void
.end method

.method public static isNetworkError(I)Z
    .registers 3
    .parameter "error"

    .prologue
    const/4 v0, 0x1

    .line 102
    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x3

    if-eq p0, v1, :cond_d

    const/16 v1, 0xa

    if-ne p0, v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 113
    packed-switch p0, :pswitch_data_22

    .line 142
    :pswitch_3
    const-string v0, "NO ERROR"

    :goto_5
    return-object v0

    .line 115
    :pswitch_6
    const-string v0, "NO NETWORK"

    goto :goto_5

    .line 118
    :pswitch_9
    const-string v0, "CONNECTION FAILED"

    goto :goto_5

    .line 121
    :pswitch_c
    const-string v0, "UNKNOWN HOST"

    goto :goto_5

    .line 124
    :pswitch_f
    const-string v0, "AUTH FAILED"

    goto :goto_5

    .line 127
    :pswitch_12
    const-string v0, "AUTH EXPIRED"

    goto :goto_5

    .line 130
    :pswitch_15
    const-string v0, "HEARTBEAT TIMEOUT"

    goto :goto_5

    .line 133
    :pswitch_18
    const-string v0, "SERVER FAILED"

    goto :goto_5

    .line 136
    :pswitch_1b
    const-string v0, "SERVER REJECT - RATE LIMIT"

    goto :goto_5

    .line 139
    :pswitch_1e
    const-string v0, "UNKNOWN"

    goto :goto_5

    .line 113
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_3
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public getError()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
