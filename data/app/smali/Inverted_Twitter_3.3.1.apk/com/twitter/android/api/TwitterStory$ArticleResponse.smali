.class public Lcom/twitter/android/api/TwitterStory$ArticleResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xb2a2fdee2d308fL


# instance fields
.field public final attribution:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final media:Ljava/util/ArrayList;

.field public final name:Ljava/lang/String;

.field public final query:Ljava/lang/String;

.field public final score:D

.field public final title:Ljava/lang/String;

.field public final tweetCount:I

.field public final url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$ArticleUrl;Ljava/lang/String;ILjava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 14

    const/16 v2, 0x22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->url:Lcom/twitter/android/api/TwitterStory$ArticleUrl;

    iput-object p3, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->description:Ljava/lang/String;

    iput p4, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->tweetCount:I

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->attribution:Ljava/lang/String;

    iput-wide p6, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->score:D

    iput-object p8, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->query:Ljava/lang/String;

    if-nez p9, :cond_39

    if-eqz p8, :cond_39

    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_36

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_36

    const/4 v1, 0x1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    :goto_33
    iput-object p10, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->media:Ljava/util/ArrayList;

    return-void

    :cond_36
    iput-object p8, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    goto :goto_33

    :cond_39
    iput-object p9, p0, Lcom/twitter/android/api/TwitterStory$ArticleResponse;->name:Ljava/lang/String;

    goto :goto_33
.end method
