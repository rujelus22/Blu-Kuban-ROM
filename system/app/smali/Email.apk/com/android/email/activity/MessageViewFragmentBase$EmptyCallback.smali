.class public Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;
.super Ljava/lang/Object;
.source "MessageViewFragmentBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 655
    new-instance v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragmentBase$Callback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 654
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMessageError(Ljava/lang/String;)V
    .registers 2
    .parameter "errorMessage"

    .prologue
    .line 667
    return-void
.end method

.method public onLoadMessageFinished()V
    .registers 1

    .prologue
    .line 671
    return-void
.end method

.method public onLoadMessageStarted()V
    .registers 1

    .prologue
    .line 675
    return-void
.end method

.method public onMessageNotExists()V
    .registers 1

    .prologue
    .line 679
    return-void
.end method

.method public onMessageViewGone()V
    .registers 1

    .prologue
    .line 663
    return-void
.end method

.method public onMessageViewShown(I)V
    .registers 2
    .parameter "mailboxType"

    .prologue
    .line 659
    return-void
.end method

.method public onUrlInMessageClicked(Ljava/lang/String;)Z
    .registers 3
    .parameter "url"

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method
