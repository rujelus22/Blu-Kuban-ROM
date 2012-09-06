.class public Lcom/android/exchange/PartRequest;
.super Lcom/android/exchange/Request;
.source "PartRequest.java"


# instance fields
.field public final mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field public final mContentUriString:Ljava/lang/String;

.field public final mDestination:Ljava/lang/String;

.field public final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/EmailContent$Attachment;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "_att"
    .parameter "_destination"
    .parameter "_contentUriString"

    .prologue
    .line 34
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/Request;-><init>(J)V

    .line 35
    iput-object p1, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 36
    iget-object v0, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/PartRequest;->mLocation:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/exchange/PartRequest;->mDestination:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/android/exchange/PartRequest;->mContentUriString:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 44
    instance-of v1, p1, Lcom/android/exchange/PartRequest;

    if-nez v1, :cond_6

    .line 45
    .end local p1
    :cond_5
    :goto_5
    return v0

    .restart local p1
    :cond_6
    check-cast p1, Lcom/android/exchange/PartRequest;

    .end local p1
    iget-object v1, p1, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    iget-object v3, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/exchange/PartRequest;->mAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    long-to-int v0, v0

    return v0
.end method
