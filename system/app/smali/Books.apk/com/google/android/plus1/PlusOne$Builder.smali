.class public Lcom/google/android/plus1/PlusOne$Builder;
.super Ljava/lang/Object;
.source "PlusOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/PlusOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public abuseToken:Ljava/lang/String;

.field public plusOneFriends:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            ">;"
        }
    .end annotation
.end field

.field public totalPlusOneCount:I

.field public uri:Landroid/net/Uri;

.field public value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/google/android/plus1/PlusOne;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    .line 99
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    .line 100
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->plusOneFriends:Ljava/util/Set;

    .line 101
    iget v0, p1, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    iput v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    .line 102
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->abuseToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->abuseToken:Ljava/lang/String;

    .line 103
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/plus1/PlusOne;
    .registers 7

    .prologue
    .line 105
    new-instance v0, Lcom/google/android/plus1/PlusOne;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOne$Builder;->plusOneFriends:Ljava/util/Set;

    iget v4, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    iget-object v5, p0, Lcom/google/android/plus1/PlusOne$Builder;->abuseToken:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;ILjava/lang/String;)V

    return-object v0
.end method

.method public setAbuseToken(Ljava/lang/String;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "abuseToken"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->abuseToken:Ljava/lang/String;

    .line 93
    return-object p0
.end method

.method public setPlusOneFriends(Ljava/util/Set;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/plus1/PlusOnePerson;",
            ">;)",
            "Lcom/google/android/plus1/PlusOne$Builder;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, plusOneFriends:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/plus1/PlusOnePerson;>;"
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->plusOneFriends:Ljava/util/Set;

    .line 85
    return-object p0
.end method

.method public setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "otherPlusOneCount"

    .prologue
    .line 88
    iput p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    .line 89
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    .line 77
    return-object p0
.end method

.method public setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    .line 81
    return-object p0
.end method
