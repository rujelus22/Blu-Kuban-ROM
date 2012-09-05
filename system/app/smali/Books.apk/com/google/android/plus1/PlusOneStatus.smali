.class public Lcom/google/android/plus1/PlusOneStatus;
.super Ljava/lang/Object;
.source "PlusOneStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/PlusOneStatus$Builder;
    }
.end annotation


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final optedIntoPlusOne:Ljava/lang/Boolean;

.field public final profileImageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "optedIntoPlusOne"
    .parameter "displayName"
    .parameter "profileImageUrl"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    .line 33
    iput-object p2, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 49
    instance-of v1, p1, Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v1, :cond_29

    move-object v0, p1

    .line 50
    check-cast v0, Lcom/google/android/plus1/PlusOneStatus;

    .line 51
    .local v0, otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    .line 55
    .end local v0           #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :goto_26
    return v1

    .line 51
    .restart local v0       #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :cond_27
    const/4 v1, 0x0

    goto :goto_26

    .line 55
    .end local v0           #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :cond_29
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_26
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus;->profileImageUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+1 opt-in="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
