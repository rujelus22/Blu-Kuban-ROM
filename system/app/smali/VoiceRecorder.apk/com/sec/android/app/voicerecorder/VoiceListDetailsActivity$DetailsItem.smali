.class public Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;
.super Ljava/lang/Object;
.source "VoiceListDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DetailsItem"
.end annotation


# instance fields
.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter "title"
    .parameter "summary"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->this$0:Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->mTitle:Ljava/lang/String;

    .line 293
    iput-object p3, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->mSummary:Ljava/lang/String;

    .line 294
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/VoiceListDetailsActivity$DetailsItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
