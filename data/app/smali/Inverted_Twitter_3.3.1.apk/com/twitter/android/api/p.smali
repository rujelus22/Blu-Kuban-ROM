.class public final Lcom/twitter/android/api/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/api/g;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lcom/twitter/android/api/ac;

.field public final e:Lcom/twitter/android/api/ac;

.field public final f:Lcom/twitter/android/api/TweetEntities;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/ac;Lcom/twitter/android/api/TweetEntities;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/twitter/android/api/p;->a:J

    iput-object p5, p0, Lcom/twitter/android/api/p;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/twitter/android/api/p;->c:J

    iput-object p6, p0, Lcom/twitter/android/api/p;->d:Lcom/twitter/android/api/ac;

    iput-object p7, p0, Lcom/twitter/android/api/p;->e:Lcom/twitter/android/api/ac;

    if-eqz p6, :cond_11

    iput-wide p3, p6, Lcom/twitter/android/api/ac;->u:J

    :cond_11
    if-eqz p7, :cond_15

    iput-wide p3, p7, Lcom/twitter/android/api/ac;->u:J

    :cond_15
    iput-object p8, p0, Lcom/twitter/android/api/p;->f:Lcom/twitter/android/api/TweetEntities;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-wide v0, p0, Lcom/twitter/android/api/p;->a:J

    return-wide v0
.end method
