.class public final Lcom/android/email/activity/MessageViewFragment$EmptyCallback;
.super Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;
.source "MessageViewFragment.java"

# interfaces
.implements Lcom/android/email/activity/MessageViewFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmptyCallback"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 239
    new-instance v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;

    invoke-direct {v0}, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageViewFragment$EmptyCallback;->INSTANCE:Lcom/android/email/activity/MessageViewFragment$Callback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/android/email/activity/MessageViewFragmentBase$EmptyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public moveToNewerView()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method

.method public moveToOlderView()V
    .registers 1

    .prologue
    .line 271
    return-void
.end method

.method public onBeforeMessageDelete()V
    .registers 1

    .prologue
    .line 255
    return-void
.end method

.method public onCalendarLinkClicked(J)V
    .registers 3
    .parameter "epochEventStartTime"

    .prologue
    .line 243
    return-void
.end method

.method public onCompose()V
    .registers 1

    .prologue
    .line 267
    return-void
.end method

.method public onForward()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public onMessageSetUnread()V
    .registers 1

    .prologue
    .line 247
    return-void
.end method

.method public onMoveMessage()V
    .registers 1

    .prologue
    .line 259
    return-void
.end method

.method public onReply()V
    .registers 1

    .prologue
    .line 283
    return-void
.end method

.method public onReplyAll()V
    .registers 1

    .prologue
    .line 287
    return-void
.end method

.method public onRespondedToInvite(I)V
    .registers 2
    .parameter "response"

    .prologue
    .line 251
    return-void
.end method

.method public removeIrmProtection(J)V
    .registers 3
    .parameter "messageId"

    .prologue
    .line 291
    return-void
.end method
