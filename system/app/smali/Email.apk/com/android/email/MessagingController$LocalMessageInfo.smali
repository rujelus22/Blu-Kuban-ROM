.class Lcom/android/email/MessagingController$LocalMessageInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalMessageInfo"
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;


# instance fields
.field final mFlagFavorite:Z

.field final mFlagLoaded:I

.field final mFlagRead:Z

.field final mFlags:I

.field final mId:J

.field final mServerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 399
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "syncServerId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mailboxKey"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flags"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 7
    .parameter "c"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mId:J

    .line 415
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_33

    move v0, v1

    :goto_12
    iput-boolean v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagRead:Z

    .line 416
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_35

    :goto_1b
    iput-boolean v1, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagFavorite:Z

    .line 417
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlagLoaded:I

    .line 418
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mServerId:Ljava/lang/String;

    .line 419
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMessageInfo;->mFlags:I

    .line 421
    return-void

    :cond_33
    move v0, v2

    .line 415
    goto :goto_12

    :cond_35
    move v1, v2

    .line 416
    goto :goto_1b
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 392
    sget-object v0, Lcom/android/email/MessagingController$LocalMessageInfo;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
