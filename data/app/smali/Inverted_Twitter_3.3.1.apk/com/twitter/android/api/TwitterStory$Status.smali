.class public Lcom/twitter/android/api/TwitterStory$Status;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x43c0531295157c64L


# instance fields
.field public final content:Ljava/lang/String;

.field public final entities:Lcom/twitter/android/api/TweetEntities;

.field public final name:Ljava/lang/String;

.field public final retweetCount:I

.field public final tweetId:J

.field public final userId:J

.field public final userProfileImageUrl:Ljava/lang/String;

.field public final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/twitter/android/api/TweetEntities;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/TwitterStory$Status;->tweetId:J

    iput-wide p3, p0, Lcom/twitter/android/api/TwitterStory$Status;->userId:J

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$Status;->username:Ljava/lang/String;

    iput-object p6, p0, Lcom/twitter/android/api/TwitterStory$Status;->name:Ljava/lang/String;

    iput-object p7, p0, Lcom/twitter/android/api/TwitterStory$Status;->userProfileImageUrl:Ljava/lang/String;

    iput-object p8, p0, Lcom/twitter/android/api/TwitterStory$Status;->content:Ljava/lang/String;

    iput p9, p0, Lcom/twitter/android/api/TwitterStory$Status;->retweetCount:I

    iput-object p10, p0, Lcom/twitter/android/api/TwitterStory$Status;->entities:Lcom/twitter/android/api/TweetEntities;

    return-void
.end method
