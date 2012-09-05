.class public final Lcom/google/android/gtalkservice/ConnectionState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONNECTING:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

.field public static final IDLE:I = 0x0

.field public static final LOGGED_IN:I = 0x3

.field public static final ONLINE:I = 0x4

.field public static final PENDING:I = 0x1


# instance fields
.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/gtalkservice/b;

    invoke-direct {v0}, Lcom/google/android/gtalkservice/b;-><init>()V

    sput-object v0, Lcom/google/android/gtalkservice/ConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/ConnectionState;->setState(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    .line 56
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 98
    packed-switch p0, :pswitch_data_12

    .line 112
    const-string v0, "IDLE"

    :goto_5
    return-object v0

    .line 100
    :pswitch_6
    const-string v0, "RECONNECTION_SCHEDULED"

    goto :goto_5

    .line 103
    :pswitch_9
    const-string v0, "CONNECTING"

    goto :goto_5

    .line 106
    :pswitch_c
    const-string v0, "AUTHENTICATED"

    goto :goto_5

    .line 109
    :pswitch_f
    const-string v0, "ONLINE"

    goto :goto_5

    .line 98
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public final describeContents()I
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    return v0
.end method

.method public final isDisconnected()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 79
    iget v1, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-ne v1, v0, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isLoggedIn()Z
    .registers 3

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final isLoggingIn()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final isOnline()Z
    .registers 3

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final isPendingReconnect()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 83
    iget v1, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final setState(I)V
    .registers 2
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    .line 64
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-static {v0}, Lcom/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 122
    iget v0, p0, Lcom/google/android/gtalkservice/ConnectionState;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    return-void
.end method
