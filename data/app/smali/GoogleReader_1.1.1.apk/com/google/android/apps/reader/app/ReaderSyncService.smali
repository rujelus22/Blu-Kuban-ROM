.class public Lcom/google/android/apps/reader/app/ReaderSyncService;
.super Lcom/google/android/accounts/AbstractSyncService;
.source "ReaderSyncService.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReaderSyncService"


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 36
    const-string v0, "ReaderSyncService"

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/accounts/AbstractSyncService;-><init>(Ljava/lang/String;II)V

    .line 37
    return-void
.end method


# virtual methods
.method protected createNotificationText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 48
    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/ReaderSyncService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected createNotificationTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 42
    const/high16 v0, 0x7f0d

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/ReaderSyncService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected createSyncAdapter()Lcom/google/android/accounts/AbstractSyncAdapter;
    .registers 3

    .prologue
    .line 53
    move-object v0, p0

    .line 54
    .local v0, context:Landroid/content/Context;
    new-instance v1, Lcom/google/android/apps/reader/app/ReaderSyncAdapter;

    invoke-direct {v1, v0}, Lcom/google/android/apps/reader/app/ReaderSyncAdapter;-><init>(Landroid/content/Context;)V

    return-object v1
.end method
