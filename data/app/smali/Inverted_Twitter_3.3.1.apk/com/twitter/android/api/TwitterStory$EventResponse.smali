.class public Lcom/twitter/android/api/TwitterStory$EventResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x45c980d98ba8de67L


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:Ljava/lang/String;

.field public final media:Lcom/twitter/android/api/TwitterStory$Media;

.field public final title:Ljava/lang/String;

.field public final urls:Lcom/twitter/android/api/TwitterStory$EventUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/api/TwitterStory$Media;Lcom/twitter/android/api/TwitterStory$EventUrl;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/api/TwitterStory$EventResponse;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/twitter/android/api/TwitterStory$EventResponse;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/twitter/android/api/TwitterStory$EventResponse;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/twitter/android/api/TwitterStory$EventResponse;->media:Lcom/twitter/android/api/TwitterStory$Media;

    iput-object p5, p0, Lcom/twitter/android/api/TwitterStory$EventResponse;->urls:Lcom/twitter/android/api/TwitterStory$EventUrl;

    return-void
.end method
