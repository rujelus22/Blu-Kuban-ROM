.class Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;
.super Ljava/lang/Object;
.source "MessageListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserTypingInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

.field public typingStartTimeMs:J

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/MessageListFragment;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "userName"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->this$0:Lcom/google/android/apps/plus/fragments/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->userName:Ljava/lang/String;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/fragments/MessageListFragment$UserTypingInfo;->typingStartTimeMs:J

    .line 178
    return-void
.end method
