.class public Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;
.super Ljava/lang/Object;
.source "SocialHubDateFormat.java"


# static fields
.field private static mDateFormat:Ljava/lang/String;

.field private static mTimeFormat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mDateFormat:Ljava/lang/String;

    .line 15
    sput-object v0, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mTimeFormat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static getDate(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 36
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 37
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mDateFormat:Ljava/lang/String;

    .line 38
    sget-object v1, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mDateFormat:Ljava/lang/String;

    return-object v1
.end method

.method public static getDateTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 19
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 21
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    :goto_d
    return-object v0

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->getDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->getTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public static getTime(Landroid/content/Context;J)Ljava/lang/String;
    .registers 5
    .parameter "context"
    .parameter "time"

    .prologue
    .line 43
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 44
    .local v0, date:Ljava/util/Date;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mTimeFormat:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->mTimeFormat:Ljava/lang/String;

    return-object v1
.end method
