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
.field public final abuseToken:Ljava/lang/String;

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
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/String;)V
    .registers 10
    .parameter "uri"
    .parameter "value"
    .parameter "abuseToken"

    .prologue
    .line 38
    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    .line 39
    return-void

    .line 38
    :cond_10
    const/4 v4, 0x0

    goto :goto_8
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V
    .registers 7
    .parameter "uri"
    .parameter "value"
    .parameter
    .parameter "totalPlusOneCount"
    .parameter "abuseToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, plusOneFriends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    .line 27
    iput-object p2, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    .line 28
    if-eqz p3, :cond_14

    .line 29
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    .line 33
    :goto_f
    iput p4, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    .line 34
    iput-object p5, p0, Lcom/google/android/plus1/PlusOne;->abuseToken:Ljava/lang/String;

    .line 35
    return-void

    .line 31
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    goto :goto_f
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "other"

    .prologue
    .line 43
    instance-of v1, p1, Lcom/google/android/plus1/PlusOne;

    if-eqz v1, :cond_2f

    move-object v0, p1

    .line 44
    check-cast v0, Lcom/google/android/plus1/PlusOne;

    .line 46
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

    .line 50
    .end local v0           #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :goto_2c
    return v1

    .line 46
    .restart local v0       #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_2d
    const/4 v1, 0x0

    goto :goto_2c

    .line 50
    .end local v0           #otherPlusOne:Lcom/google/android/plus1/PlusOne;
    :cond_2f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2c
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 56
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
    .registers 5

    .prologue
    .line 61
    const-string v0, "URI=%s,+1=%s,totalCount=%s,abuseToken=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/plus1/PlusOne;->abuseToken:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
