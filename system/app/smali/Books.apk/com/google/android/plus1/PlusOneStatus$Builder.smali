.class public Lcom/google/android/plus1/PlusOneStatus$Builder;
.super Ljava/lang/Object;
.source "PlusOneStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOneStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public builderDisplayName:Ljava/lang/String;

.field public builderOptedIntoPlusOne:Ljava/lang/Boolean;

.field public builderProfileImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/plus1/PlusOneStatus;
    .registers 5

    .prologue
    .line 93
    new-instance v0, Lcom/google/android/plus1/PlusOneStatus;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderOptedIntoPlusOne:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderDisplayName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderProfileImageUrl:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/plus1/PlusOneStatus;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;
    .registers 2
    .parameter "displayName"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderDisplayName:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public setOptedIntoPlusOne(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOneStatus$Builder;
    .registers 2
    .parameter "optedIntoPlusOne"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderOptedIntoPlusOne:Ljava/lang/Boolean;

    .line 79
    return-object p0
.end method

.method public setProfileImageUrl(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneStatus$Builder;
    .registers 2
    .parameter "profileImageUrl"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStatus$Builder;->builderProfileImageUrl:Ljava/lang/String;

    .line 89
    return-object p0
.end method
