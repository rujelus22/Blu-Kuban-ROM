.class public Lcom/twitter/android/api/TwitterStory$User;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x10c85b19b5ea869L


# instance fields
.field public final description:Ljava/lang/String;

.field public final friendship:I

.field public final isProtected:Z

.field public final name:Ljava/lang/String;

.field public final profileImageUrl:Ljava/lang/String;

.field public final userId:J

.field public final username:Ljava/lang/String;

.field public final verified:Z


# direct methods
.method public constructor <init>(Lcom/twitter/android/api/ac;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/twitter/android/api/ac;->a:J

    iput-wide v0, p0, Lcom/twitter/android/api/TwitterStory$User;->userId:J

    iget-object v0, p1, Lcom/twitter/android/api/ac;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$User;->username:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$User;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$User;->description:Ljava/lang/String;

    iget-object v0, p1, Lcom/twitter/android/api/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/android/api/TwitterStory$User;->profileImageUrl:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/twitter/android/api/ac;->h:Z

    iput-boolean v0, p0, Lcom/twitter/android/api/TwitterStory$User;->isProtected:Z

    iget-boolean v0, p1, Lcom/twitter/android/api/ac;->i:Z

    iput-boolean v0, p0, Lcom/twitter/android/api/TwitterStory$User;->verified:Z

    iget v0, p1, Lcom/twitter/android/api/ac;->t:I

    iput v0, p0, Lcom/twitter/android/api/TwitterStory$User;->friendship:I

    return-void
.end method
