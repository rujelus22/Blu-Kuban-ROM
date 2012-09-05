.class public Lcom/android/email/MessagingController$LocalMailboxInfo;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMailboxInfo"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public final mDisplayName:Ljava/lang/String;

.field public final mId:J

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 376
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/MessagingController$LocalMailboxInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JI)V
    .registers 7
    .parameter "id"
    .parameter "displayName"
    .parameter "accountKey"
    .parameter "type"

    .prologue
    .line 400
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-wide p1, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    .line 402
    iput-object p3, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    .line 403
    iput-wide p4, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mAccountKey:J

    .line 404
    iput p6, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    .line 405
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 4
    .parameter "c"

    .prologue
    .line 393
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 394
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mId:J

    .line 395
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mDisplayName:Ljava/lang/String;

    .line 396
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mAccountKey:J

    .line 397
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/email/MessagingController$LocalMailboxInfo;->mType:I

    .line 398
    return-void
.end method
