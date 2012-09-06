.class public Lcom/google/android/apps/plus/content/EventThemeImageRequest;
.super Lcom/google/android/apps/plus/content/MediaImageRequest;
.source "EventThemeImageRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "url"

    .prologue
    .line 15
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->IMAGE:Lcom/google/wireless/tacotruck/proto/Data$Media$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$Type;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/plus/content/MediaImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public getDownloadUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/google/android/apps/plus/content/EventThemeImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
