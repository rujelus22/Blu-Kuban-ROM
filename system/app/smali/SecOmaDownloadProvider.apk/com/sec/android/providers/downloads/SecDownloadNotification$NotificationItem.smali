.class Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;
.super Ljava/lang/Object;
.source "SecDownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/providers/downloads/SecDownloadNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationItem"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mId:I

.field mPackageName:Ljava/lang/String;

.field mTitleCount:I

.field mTitles:[Ljava/lang/String;

.field mTotalCurrent:I

.field mTotalTotal:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    .line 70
    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    .line 71
    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addItem(Ljava/lang/String;II)V
    .registers 6
    .parameter "title"
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    const/4 v1, -0x1

    .line 80
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalCurrent:I

    .line 81
    if-lez p3, :cond_c

    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    if-ne v0, v1, :cond_20

    .line 82
    :cond_c
    iput v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    .line 86
    :goto_e
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    .line 87
    iget-object v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    aput-object p1, v0, v1

    .line 89
    :cond_19
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTitleCount:I

    .line 90
    return-void

    .line 84
    :cond_20
    iget v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/sec/android/providers/downloads/SecDownloadNotification$NotificationItem;->mTotalTotal:I

    goto :goto_e
.end method
