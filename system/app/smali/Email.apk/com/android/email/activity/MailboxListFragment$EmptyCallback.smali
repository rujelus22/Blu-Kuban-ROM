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
    .line 254
    new-instance v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxListFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxListFragment$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountSelected(J)V
    .registers 3
    .parameter "accountId"

    .prologue
    .line 257
    return-void
.end method

.method public onMailboxSelected(JJZ)V
    .registers 6
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "nestedNavigation"

    .prologue
    .line 256
    return-void
.end method

.method public onParentMailboxChanged()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method
