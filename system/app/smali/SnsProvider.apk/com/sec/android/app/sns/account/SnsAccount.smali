.class public final Lcom/sec/android/app/sns/account/SnsAccount;
.super Ljava/lang/Object;
.source "SnsAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7029ecd0047579e7L


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mProfilePhotoUrl:Ljava/lang/String;

.field private mSessionValidity:Z

.field private mUserID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter "userID"
    .parameter "displayName"
    .parameter "profilePhotoUrl"
    .parameter "bSessionValidity"

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-eqz p1, :cond_7

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mUserID:Ljava/lang/String;

    .line 57
    :cond_7
    if-eqz p2, :cond_b

    .line 58
    iput-object p2, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mDisplayName:Ljava/lang/String;

    .line 60
    :cond_b
    if-eqz p3, :cond_f

    .line 61
    iput-object p3, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mProfilePhotoUrl:Ljava/lang/String;

    .line 63
    :cond_f
    iput-boolean p4, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mSessionValidity:Z

    .line 64
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePhotoUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mProfilePhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionValidity()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mSessionValidity:Z

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method public setSessionValidity(Z)V
    .registers 2
    .parameter "bSessionValidity"

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sec/android/app/sns/account/SnsAccount;->mSessionValidity:Z

    .line 130
    return-void
.end method
