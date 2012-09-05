.class public Lcom/google/android/plus1/PlusOne;
.super Ljava/lang/Object;
.source "PlusOne.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/plus1/PlusOne$Builder;
    }
.end annotation


# instance fields
.field public final plusOneFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            ">;"
        }
    .end annotation
.end field

.field public final totalPlusOneCount:I

.field public final uri:Landroid/net/Uri;

.field public final value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;)V
    .registers 5
    .parameter "uri"
    .parameter "value"

    .prologue
    .line 36
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;I)V

    .line 37
    return-void

    .line 36
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;I)V
    .registers 6
    .parameter "uri"
    .parameter "value"
    .parameter
    .parameter "totalPlusOneCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, plusOneFriends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    .line 26
    iput-object p2, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    .line 27
    if-eqz p3, :cond_12

    .line 28
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    .line 32
    :goto_f
    iput p4, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    .line 33
    return-void

    .line 30
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    goto :goto_f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 41
    instance-of v1, p1, Lcom/google/android/plus1/PlusOne;

    if-eqz v1, :cond_2f

    move-object v0, p1

    .line 42
    check-cast v0, Lcom/google/android/plus1/PlusOne;

    .line 43
    .local v0, otherPlusOne:Lcom/google/android/plus1/PlusOne;
    iget-object v1, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    iget-object v2, v0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    invoke-static {v1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    iget v2, v0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    if-ne v1, v2, :cond_2d

    const/4 v1, 0x1

    .line 47
    .end local v0           #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :goto_2c
    return v1

    .line 43
    .restart local v0       #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c

    .line 47
    .end local v0           #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_2f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",+1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
