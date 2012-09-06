.class Lcom/android/email/activity/MoveMessageToDialog$IdContainer;
.super Ljava/lang/Object;
.source "MoveMessageToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MoveMessageToDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdContainer"
.end annotation


# instance fields
.field private final mAccountId:J

.field private final mMailboxId:J


# direct methods
.method private constructor <init>(JJ)V
    .registers 5
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-wide p1, p0, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mAccountId:J

    .line 342
    iput-wide p3, p0, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mMailboxId:J

    .line 343
    return-void
.end method

.method synthetic constructor <init>(JJLcom/android/email/activity/MoveMessageToDialog$1;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 336
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;-><init>(JJ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/MoveMessageToDialog$IdContainer;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 336
    iget-wide v0, p0, Lcom/android/email/activity/MoveMessageToDialog$IdContainer;->mMailboxId:J

    return-wide v0
.end method
