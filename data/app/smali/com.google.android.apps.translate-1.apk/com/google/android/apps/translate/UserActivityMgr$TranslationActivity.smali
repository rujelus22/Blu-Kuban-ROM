.class Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;
.super Ljava/lang/Object;
.source "UserActivityMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/UserActivityMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TranslationActivity"
.end annotation


# instance fields
.field public inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

.field public intervalCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

.field public sourceCgiParamData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 238
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 239
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->access$000()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->sourceCgiParamData:Ljava/lang/String;

    .line 240
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    .line 241
    return-void
.end method
