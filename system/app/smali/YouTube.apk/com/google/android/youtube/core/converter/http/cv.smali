.class public final Lcom/google/android/youtube/core/converter/http/cv;
.super Lcom/google/android/youtube/core/converter/http/em;
.source "SourceFile"


# instance fields
.field private final b:Lcom/google/android/youtube/core/converter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/k;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/em;-><init>(Lcom/google/android/youtube/core/converter/k;)V

    .line 36
    new-instance v0, Lcom/google/android/youtube/core/converter/d;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/d;-><init>()V

    const-string v1, "/VAST"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/dd;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/dd;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Impression"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/dc;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/dc;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/MediaFiles/MediaFile"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/db;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/db;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/TrackingEvents/Tracking"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/da;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/da;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/VideoClicks/ClickThrough"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cz;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cz;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/VideoClicks/ClickTracking"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cy;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cy;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Creatives/Creative/Linear/VideoClicks/CustomClick"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cx;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cx;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    const-string v1, "/VAST/Ad/InLine/Extensions/Extension/CustomTracking/Tracking"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/cw;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/cw;-><init>(Lcom/google/android/youtube/core/converter/http/cv;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/d;->a(Ljava/lang/String;Lcom/google/android/youtube/core/converter/o;)Lcom/google/android/youtube/core/converter/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/d;->a()Lcom/google/android/youtube/core/converter/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/cv;->b:Lcom/google/android/youtube/core/converter/c;

    .line 170
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/youtube/core/converter/c;
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/cv;->b:Lcom/google/android/youtube/core/converter/c;

    return-object v0
.end method
