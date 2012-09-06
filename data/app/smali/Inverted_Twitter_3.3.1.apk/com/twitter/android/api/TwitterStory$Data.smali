.class public Lcom/twitter/android/api/TwitterStory$Data;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x681d2893f5f0d4d5L


# instance fields
.field public final transient a:Lcom/twitter/android/api/aa;

.field public final articles:Ljava/util/ArrayList;

.field public final event:Lcom/twitter/android/api/TwitterStory$EventResponse;

.field public final media:Ljava/util/ArrayList;

.field public final name:Ljava/lang/String;

.field public final query:Ljava/lang/String;

.field public final status:Lcom/twitter/android/api/TwitterStory$Status;

.field public final statusId:J

.field public final title:Ljava/lang/String;

.field public final tweetCount:I

.field public final users:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$EventResponse;)V
    .registers 14

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/TwitterStory$EventResponse;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 14

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/TwitterStory$EventResponse;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/TwitterStory$EventResponse;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$Data;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$Data;->articles:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/twitter/android/api/TwitterStory$Data;->event:Lcom/twitter/android/api/TwitterStory$EventResponse;

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory$Data;->query:Ljava/lang/String;

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$Data;->media:Ljava/util/ArrayList;

    iput p6, p0, Lcom/twitter/android/api/TwitterStory$Data;->tweetCount:I

    iput-object p7, p0, Lcom/twitter/android/api/TwitterStory$Data;->name:Ljava/lang/String;

    iput-object p9, p0, Lcom/twitter/android/api/TwitterStory$Data;->status:Lcom/twitter/android/api/TwitterStory$Status;

    iput-object p8, p0, Lcom/twitter/android/api/TwitterStory$Data;->a:Lcom/twitter/android/api/aa;

    iput-object p10, p0, Lcom/twitter/android/api/TwitterStory$Data;->users:Ljava/util/ArrayList;

    if-eqz p8, :cond_22

    invoke-virtual {p8}, Lcom/twitter/android/api/aa;->b()Lcom/twitter/android/api/aa;

    move-result-object v0

    iget-wide v0, v0, Lcom/twitter/android/api/aa;->a:J

    iput-wide v0, p0, Lcom/twitter/android/api/TwitterStory$Data;->statusId:J

    :goto_21
    return-void

    :cond_22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twitter/android/api/TwitterStory$Data;->statusId:J

    goto :goto_21
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 13

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v7, v1

    move-object v8, v1

    move-object v9, v1

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/twitter/android/api/TwitterStory$Data;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Lcom/twitter/android/api/TwitterStory$EventResponse;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Lcom/twitter/android/api/aa;Lcom/twitter/android/api/TwitterStory$Status;Ljava/util/ArrayList;)V

    return-void
.end method
