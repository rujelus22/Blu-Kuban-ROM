.class public Lcom/google/android/apps/unveil/auth/AuthToken;
.super Ljava/lang/Object;
.source "AuthToken.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/unveil/auth/AuthToken;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPLUS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "oauth2:https://www.googleapis.com/auth/emeraldsea.stream.read https://www.googleapis.com/auth/emeraldsea.stream.write https://www.googleapis.com/auth/emeraldsea.circles.read https://www.googleapis.com/auth/emeraldsea.circles.write https://www.googleapis.com/auth/picasa https://www.googleapis.com/auth/userinfo.email"

.field private static final SID_AUTH_TOKEN_TYPE:Ljava/lang/String; = "SID"

.field private static final WEBUPDATES_AUTH_TOKEN_TYPE:Ljava/lang/String; = "webupdates"


# instance fields
.field public final authTokenValue:Ljava/lang/String;

.field public final tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/apps/unveil/auth/AuthToken$1;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/auth/AuthToken$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/auth/AuthToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;Ljava/lang/String;)V
    .registers 3
    .parameter "tokenType"
    .parameter "value"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    .line 66
    iput-object p2, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->authTokenValue:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " { type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " authTokenValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->authTokenValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->tokenType:Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/auth/AuthToken$AuthTokenType;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/unveil/auth/AuthToken;->authTokenValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    return-void
.end method
