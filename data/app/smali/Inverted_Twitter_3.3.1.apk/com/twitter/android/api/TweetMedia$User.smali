.class public final Lcom/twitter/android/api/TweetMedia$User;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xe3d3f3f907f6c12L


# instance fields
.field public final fullName:Ljava/lang/String;

.field public final profileImageUrl:Ljava/lang/String;

.field public final screenName:Ljava/lang/String;

.field public final userId:J

.field public final verified:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/api/ac;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/twitter/android/api/ac;->a:J

    iput-wide v0, p0, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    iget-object v0, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia$User;->screenName:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia$User;->fullName:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TweetMedia$User;->profileImageUrl:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/twitter/android/api/ac;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/api/TweetMedia$User;->verified:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    if-eq p0, p1, :cond_18

    if-eqz p1, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1a

    iget-wide v0, p0, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    check-cast p1, Lcom/twitter/android/api/TweetMedia$User;

    iget-wide v2, p1, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final hashCode()I
    .registers 6

    iget-wide v0, p0, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    iget-wide v2, p0, Lcom/twitter/android/api/TweetMedia$User;->userId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
