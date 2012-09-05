.class public Lcom/sec/android/widgetapp/dualclock/City$CityInfo;
.super Ljava/lang/Object;
.source "City.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/widgetapp/dualclock/City;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CityInfo"
.end annotation


# instance fields
.field public country:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rawOffset:I

.field final synthetic this$0:Lcom/sec/android/widgetapp/dualclock/City;

.field private timeZone:Ljava/util/TimeZone;

.field public timeZoneID:Ljava/lang/String;

.field public uniqueID:I


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/dualclock/City;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .parameter
    .parameter "name"
    .parameter "country"
    .parameter "timeZoneID"
    .parameter "rawOffset"
    .parameter "uniqueID"

    .prologue
    .line 361
    iput-object p1, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->this$0:Lcom/sec/android/widgetapp/dualclock/City;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZone:Ljava/util/TimeZone;

    .line 362
    iput-object p2, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    .line 363
    iput-object p3, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    .line 364
    iput-object p4, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->timeZoneID:Ljava/lang/String;

    .line 365
    iput p5, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    .line 366
    iput p6, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    .line 367
    return-void
.end method


# virtual methods
.method public getCountry()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGMT()Ljava/lang/String;
    .registers 5

    .prologue
    const v3, 0x36ee80

    .line 374
    const-string v0, "GMT"

    .line 375
    .local v0, GMT:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    div-int/2addr v1, v3

    if-ltz v1, :cond_1d

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 379
    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    rem-int/2addr v1, v3

    if-gtz v1, :cond_3f

    iget v1, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    rem-int/2addr v1, v3

    if-gez v1, :cond_65

    .line 380
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    rem-int/2addr v2, v3

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    :cond_65
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRawOffsetMillis()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->rawOffset:I

    return v0
.end method

.method public getUniqueID()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/sec/android/widgetapp/dualclock/City$CityInfo;->uniqueID:I

    return v0
.end method
