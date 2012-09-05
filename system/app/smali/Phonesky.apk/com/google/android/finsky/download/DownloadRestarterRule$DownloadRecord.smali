.class Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;
.super Ljava/lang/Object;
.source "DownloadRestarterRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/download/DownloadRestarterRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRecord"
.end annotation


# instance fields
.field public contentUri:Ljava/lang/String;

.field public lastModified:J

.field public sourceUrl:Ljava/lang/String;

.field public status:I

.field final synthetic this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;)V
    .registers 2
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;->this$0:Lcom/google/android/finsky/download/DownloadRestarterRule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/download/DownloadRestarterRule;Lcom/google/android/finsky/download/DownloadRestarterRule$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/google/android/finsky/download/DownloadRestarterRule$DownloadRecord;-><init>(Lcom/google/android/finsky/download/DownloadRestarterRule;)V

    return-void
.end method
