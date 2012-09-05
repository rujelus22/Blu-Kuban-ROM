.class public Lcom/google/android/youtube/videos/LocalVideo;
.super Ljava/lang/Object;
.source "LocalVideo.java"


# instance fields
.field public final dateModified:Ljava/util/Date;

.field public final dateTaken:Ljava/util/Date;

.field public final duration:I

.field public final id:J

.field public final mimeType:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;I)V
    .registers 9
    .parameter "id"
    .parameter "uri"
    .parameter "mimeType"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "dateModified"
    .parameter "duration"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/google/android/youtube/videos/LocalVideo;->id:J

    .line 32
    iput-object p3, p0, Lcom/google/android/youtube/videos/LocalVideo;->uri:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lcom/google/android/youtube/videos/LocalVideo;->mimeType:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/google/android/youtube/videos/LocalVideo;->title:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/google/android/youtube/videos/LocalVideo;->dateTaken:Ljava/util/Date;

    .line 36
    iput-object p7, p0, Lcom/google/android/youtube/videos/LocalVideo;->dateModified:Ljava/util/Date;

    .line 37
    iput p8, p0, Lcom/google/android/youtube/videos/LocalVideo;->duration:I

    .line 38
    return-void
.end method
