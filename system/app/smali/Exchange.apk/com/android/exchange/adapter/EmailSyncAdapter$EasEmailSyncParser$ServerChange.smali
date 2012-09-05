.class Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
.super Ljava/lang/Object;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerChange"
.end annotation


# instance fields
.field flag:Ljava/lang/Boolean;

.field flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

.field id:J

.field irmRemoved:Z

.field lastVerb:I

.field lastVerbTime:J

.field read:Ljava/lang/Boolean;

.field final synthetic this$1:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;


# direct methods
.method constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;IJ)V
    .registers 10
    .parameter
    .parameter "_id"
    .parameter "_read"
    .parameter "_flag"
    .parameter "ff"
    .parameter "_lastVerb"
    .parameter "_lastVerbTime"

    .prologue
    .line 1884
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->this$1:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1885
    iput-wide p2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    .line 1886
    iput-object p4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    .line 1887
    iput-object p5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    .line 1888
    iput-object p6, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flags:Lcom/android/emailcommon/provider/EmailContent$FollowupFlag;

    .line 1889
    iput p7, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerb:I

    .line 1890
    iput-wide p8, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->lastVerbTime:J

    .line 1892
    return-void
.end method

.method constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JZ)V
    .registers 5
    .parameter
    .parameter "_id"
    .parameter "_irmRemoved"

    .prologue
    .line 1876
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->this$1:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1877
    iput-wide p2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    .line 1878
    iput-boolean p4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->irmRemoved:Z

    .line 1879
    return-void
.end method
