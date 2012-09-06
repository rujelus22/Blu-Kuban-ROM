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
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, LacH;

    invoke-direct {v0}, LacH;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    .line 71
    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .registers 2
    .parameter

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

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionError;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 152
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionError;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
