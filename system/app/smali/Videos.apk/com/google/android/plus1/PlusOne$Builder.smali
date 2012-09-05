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
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/google/android/plus1/PlusOne;)V
    .registers 3
    .parameter "source"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    .line 89
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->value:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    .line 90
    iget-object v0, p1, Lcom/google/android/plus1/PlusOne;->plusOneFriends:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->plusOneFriends:Ljava/util/Set;

    .line 91
    iget v0, p1, Lcom/google/android/plus1/PlusOne;->totalPlusOneCount:I

    iput v0, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    .line 92
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/plus1/PlusOne;
    .registers 6

    .prologue
    .line 94
    new-instance v0, Lcom/google/android/plus1/PlusOne;

    iget-object v1, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/google/android/plus1/PlusOne$Builder;->plusOneFriends:Ljava/util/Set;

    iget v4, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/plus1/PlusOne;-><init>(Landroid/net/Uri;Ljava/lang/Boolean;Ljava/util/Set;I)V

    return-object v0
.end method

.method public setTotalPlusOneCount(I)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "otherPlusOneCount"

    .prologue
    .line 82
    iput p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->totalPlusOneCount:I

    .line 83
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "uri"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->uri:Landroid/net/Uri;

    .line 71
    return-object p0
.end method

.method public setValue(Ljava/lang/Boolean;)Lcom/google/android/plus1/PlusOne$Builder;
    .registers 2
    .parameter "value"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/android/plus1/PlusOne$Builder;->value:Ljava/lang/Boolean;

    .line 75
    return-object p0
.end method
