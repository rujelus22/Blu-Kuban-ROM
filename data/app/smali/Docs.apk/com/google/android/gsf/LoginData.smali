.class public Lcom/google/android/gsf/LoginData;
.super Ljava/lang/Object;
.source "LoginData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gsf/LoginData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public a:LacE;

.field public a:Ljava/lang/String;

.field public a:[B

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, LacD;

    invoke-direct {v0}, LacD;-><init>()V

    sput-object v0, Lcom/google/android/gsf/LoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:[B

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->f:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->a:I

    .line 54
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->i:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->j:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:[B

    .line 51
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->f:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->a:I

    .line 54
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    .line 55
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->i:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->j:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/LoginData;->a(Landroid/os/Parcel;)V

    .line 130
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;LacD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/gsf/LoginData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 140
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5b

    .line 141
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->a:[B

    .line 146
    :goto_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->f:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/LoginData;->a:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 150
    if-nez v0, :cond_65

    .line 151
    iput-object v2, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    .line 155
    :goto_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->i:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    .line 159
    return-void

    .line 143
    :cond_5b
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->a:[B

    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_28

    .line 153
    :cond_65
    invoke-static {v0}, LacE;->valueOf(Ljava/lang/String;)LacE;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    goto :goto_42
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:[B

    if-nez v0, :cond_4d

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    :goto_21
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/google/android/gsf/LoginData;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    if-nez v0, :cond_59

    .line 105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    :goto_38
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void

    .line 98
    :cond_4d
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_21

    .line 107
    :cond_59
    iget-object v0, p0, Lcom/google/android/gsf/LoginData;->a:LacE;

    invoke-virtual {v0}, LacE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_38
.end method
