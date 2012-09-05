.class Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;
.super Ljava/lang/Object;
.source "AppLevelDrmManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WVResponse"
.end annotation


# instance fields
.field public final attributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final event:Lcom/widevine/drmapi/android/WVEvent;


# direct methods
.method public constructor <init>(Lcom/widevine/drmapi/android/WVEvent;Ljava/util/HashMap;)V
    .registers 3
    .parameter "event"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/widevine/drmapi/android/WVEvent;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, attributes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->event:Lcom/widevine/drmapi/android/WVEvent;

    .line 419
    iput-object p2, p0, Lcom/google/android/youtube/videos/AppLevelDrmManagerImpl$WVResponse;->attributes:Ljava/util/HashMap;

    .line 420
    return-void
.end method
