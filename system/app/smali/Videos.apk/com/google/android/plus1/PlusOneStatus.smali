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


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 3
    .parameter "optedIntoPlusOne"
    .parameter "displayName"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    .line 28
    iput-object p2, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 43
    instance-of v1, p1, Lcom/google/android/plus1/PlusOneStatus;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/google/android/plus1/PlusOneStatus;

    .line 45
    .local v0, otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 48
    .end local v0           #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :goto_1c
    return v1

    .line 45
    .restart local v0       #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    .line 48
    .end local v0           #otherStatus:Lcom/google/android/plus1/PlusOneStatus;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus;->optedIntoPlusOne:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOneStatus;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
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
