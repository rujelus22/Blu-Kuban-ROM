.class final Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;
.super Ljava/lang/Object;
.source "MailboxFragmentAdapter.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFragmentAdapter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MailboxFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    new-instance v0, Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MailboxFragmentAdapter$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MailboxFragmentAdapter$Callback;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/android/email/activity/MailboxListItem;)V
    .registers 2
    .parameter "listItem"

    .prologue
    .line 80
    return-void
.end method
