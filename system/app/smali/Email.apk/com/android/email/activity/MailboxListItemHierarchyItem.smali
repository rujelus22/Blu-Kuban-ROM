.class Lcom/android/email/activity/MailboxListItemHierarchyItem;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"


# instance fields
.field public mAccountKey:J

.field public mDisplayName:Ljava/lang/String;

.field public mHasChild:I

.field public mHierarchyLevel:I

.field public mMailboxId:J

.field public mMailboxType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IJIIJ)V
    .registers 12
    .parameter "displayName"
    .parameter "mailboxType"
    .parameter "mailboxId"
    .parameter "hasChild"
    .parameter "hierarchylevel"
    .parameter "accountKey"

    .prologue
    const-wide/16 v1, -0x1

    const/4 v0, -0x1

    .line 3208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3201
    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    .line 3202
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    .line 3203
    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    .line 3204
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    .line 3205
    iput-wide v1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    .line 3209
    iput-object p1, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mDisplayName:Ljava/lang/String;

    .line 3210
    iput p2, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxType:I

    .line 3211
    iput-wide p3, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mMailboxId:J

    .line 3212
    iput p5, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHasChild:I

    .line 3213
    iput p6, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mHierarchyLevel:I

    .line 3214
    iput-wide p7, p0, Lcom/android/email/activity/MailboxListItemHierarchyItem;->mAccountKey:J

    .line 3216
    return-void
.end method
