.class public Lcom/google/android/plus1/PlusOnePerson;
.super Ljava/lang/Object;
.source "PlusOnePerson.java"


# instance fields
.field public final displayName:Ljava/lang/String;

.field public final thumbnailUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "displayName"
    .parameter "profileUrl"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/plus1/PlusOnePerson;->displayName:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/google/android/plus1/PlusOnePerson;->thumbnailUrl:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 30
    instance-of v1, p1, Lcom/google/android/plus1/PlusOnePerson;

    if-eqz v1, :cond_1f

    move-object v0, p1

    .line 31
    check-cast v0, Lcom/google/android/plus1/PlusOnePerson;

    .line 32
    .local v0, otherPerson:Lcom/google/android/plus1/PlusOnePerson;
    iget-object v1, p0, Lcom/google/android/plus1/PlusOnePerson;->displayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOnePerson;->displayName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/plus1/PlusOnePerson;->thumbnailUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOnePerson;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    .line 35
    .end local v0           #otherPerson:Lcom/google/android/plus1/PlusOnePerson;
    :goto_1c
    return v1

    .line 32
    .restart local v0       #otherPerson:Lcom/google/android/plus1/PlusOnePerson;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c

    .line 35
    .end local v0           #otherPerson:Lcom/google/android/plus1/PlusOnePerson;
    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/PlusOnePerson;->displayName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOnePerson;->thumbnailUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
