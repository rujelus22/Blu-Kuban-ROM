.class Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;
.super Ljava/lang/Object;
.source "EsEventData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsEventData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventActivityKey"
.end annotation


# instance fields
.field public ownerGaiaId:Ljava/lang/String;

.field public timestamp:J

.field public type:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/content/EsEventData$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    .line 1328
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;

    .line 1329
    .local v0, other:Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;
    iget v1, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->type:I

    iget v2, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->type:I

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-wide v1, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->timestamp:J

    iget-wide v3, v0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->timestamp:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    const/4 v1, 0x1

    :goto_1c
    return v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1339
    iget v1, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->type:I

    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_7
    add-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->timestamp:J

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/content/EsEventData$EventActivityKey;->ownerGaiaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_7
.end method
