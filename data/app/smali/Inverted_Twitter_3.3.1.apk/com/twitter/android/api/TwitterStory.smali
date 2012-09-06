.class public Lcom/twitter/android/api/TwitterStory;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x40b2d9af947221dfL


# instance fields
.field public final data:Lcom/twitter/android/api/TwitterStory$Data;

.field public final identifier:I

.field public final score:D

.field public final socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

.field public final state:I

.field public final type:I

.field public final unread:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IDLcom/twitter/android/api/TwitterStory$Data;Lcom/twitter/android/api/TwitterStory$SocialProof;)V
    .registers 9

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/twitter/android/api/TwitterStory;->unread:Z

    iput-wide p2, p0, Lcom/twitter/android/api/TwitterStory;->score:D

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory;->data:Lcom/twitter/android/api/TwitterStory$Data;

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    iput p1, p0, Lcom/twitter/android/api/TwitterStory;->type:I

    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->state:I

    packed-switch p1, :pswitch_data_4c

    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    :goto_15
    return-void

    :pswitch_16
    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_15

    :cond_23
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_15

    :pswitch_26
    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    iget-object v0, p4, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;

    if-eqz v0, :cond_49

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    if-eqz v1, :cond_49

    iget-object v1, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v1, v1, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->expandedUrl:Ljava/lang/String;

    if-eqz v1, :cond_49

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iget-object v0, v0, Lcom/twitter/android/api/TwitterStory$ArticleUrl;->expandedUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_15

    :cond_49
    iput v2, p0, Lcom/twitter/android/api/TwitterStory;->identifier:I

    goto :goto_15

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_26
        :pswitch_16
    .end packed-switch
.end method


# virtual methods
.method public final a()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/twitter/android/api/TwitterStory;->socialProof:Lcom/twitter/android/api/TwitterStory$SocialProof;

    iget v1, v1, Lcom/twitter/android/api/TwitterStory$SocialProof;->socialProofType:I

    if-ne v1, v0, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
