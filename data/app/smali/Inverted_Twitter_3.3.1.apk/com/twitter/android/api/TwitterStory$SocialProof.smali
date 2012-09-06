.class public Lcom/twitter/android/api/TwitterStory$SocialProof;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x468bebf071034eb3L


# instance fields
.field public final transient a:Ljava/util/ArrayList;

.field public final globalCount:I

.field public final socialProofType:I

.field public final topFollowingName:Ljava/lang/String;

.field public final type:I

.field public final users:[Lcom/twitter/android/api/TwitterStory$User;


# direct methods
.method public constructor <init>(IIILjava/util/ArrayList;[Lcom/twitter/android/api/TwitterStory$User;)V
    .registers 11

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->globalCount:I

    iput p2, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->socialProofType:I

    iput p3, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->type:I

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->a:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->users:[Lcom/twitter/android/api/TwitterStory$User;

    const/4 v2, 0x0

    if-eqz p5, :cond_35

    array-length v0, p5

    if-lez v0, :cond_35

    move v0, v1

    :goto_15
    array-length v3, p5

    if-ge v0, v3, :cond_35

    aget-object v3, p5, v0

    iget v3, v3, Lcom/twitter/android/api/TwitterStory$User;->friendship:I

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    if-lez v0, :cond_2b

    aget-object v2, p5, v1

    aget-object v3, p5, v0

    aput-object v3, p5, v1

    aput-object v2, p5, v0

    :cond_2b
    aget-object v0, p5, v1

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$User;->name:Ljava/lang/String;

    :goto_2f
    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$SocialProof;->topFollowingName:Ljava/lang/String;

    return-void

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_35
    move-object v0, v2

    goto :goto_2f
.end method
