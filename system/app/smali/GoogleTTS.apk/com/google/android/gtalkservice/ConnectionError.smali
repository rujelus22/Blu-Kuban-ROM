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
    .line 161
    new-instance v0, Lcom/google/android/gtalkservice/ConnectionError$1;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/ConnectionError$1;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    .line 73
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 2
    .parameter "state"

    .prologue
    .line 115
    packed-switch p0, :pswitch_data_22

    .line 144
    :pswitch_3
    const-string v0, "NO ERROR"

    :goto_5
    return-object v0

    .line 117
    :pswitch_6
    const-string v0, "NO NETWORK"

    goto :goto_5

    .line 120
    :pswitch_9
    const-string v0, "CONNECTION FAILED"

    goto :goto_5

    .line 123
    :pswitch_c
    const-string v0, "UNKNOWN HOST"

    goto :goto_5

    .line 126
    :pswitch_f
    const-string v0, "AUTH FAILED"

    goto :goto_5

    .line 129
    :pswitch_12
    const-string v0, "AUTH EXPIRED"

    goto :goto_5

    .line 132
    :pswitch_15
    const-string v0, "HEARTBEAT TIMEOUT"

    goto :goto_5

    .line 135
    :pswitch_18
    const-string v0, "SERVER FAILED"

    goto :goto_5

    .line 138
    :pswitch_1b
    const-string v0, "SERVER REJECT - RATE LIMIT"

    goto :goto_5

    .line 141
    :pswitch_1e
    const-string v0, "UNKNOWN"

    goto :goto_5

    .line 115
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
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
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
    .line 154
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->mError:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
