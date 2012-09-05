.class Lcom/android/email/activity/MailboxListFragment$EmptyCallback;
.super Ljava/lang/Object;
.source "MailboxListFragment.java"

# interfaces
.implements Lcom/android/email/activity/MailboxListFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 350
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 359
    return-void
.end method

.method public onCurrentMailboxUpdated(ILjava/lang/String;II)V
    .registers 5
    .parameter "mailboxType"
    .parameter "mailboxName"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 363
    return-void
.end method

.method public onMailboxSelected(JJLjava/lang/String;II)V
    .registers 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "displayName"
    .parameter "unreadCount"
    .parameter "totalCount"

    .prologue
    .line 355
    return-void
.end method

.method public setAllMailboxCursor(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 367
    return-void
.end method

.method public setTotalCountFromMailbox(IZ)V
    .registers 3
    .parameter "totalCount"
    .parameter "b"

    .prologue
    .line 371
    return-void
.end method
