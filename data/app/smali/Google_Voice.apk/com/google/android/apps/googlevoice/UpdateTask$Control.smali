.class Lcom/google/android/apps/googlevoice/UpdateTask$Control;
.super Ljava/lang/Object;
.source "UpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/googlevoice/UpdateTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Control"
.end annotation


# instance fields
.field conversationIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:Lcom/google/android/apps/googlevoice/core/Label;

.field limit:I

.field listConversationRequest:Lcom/google/android/apps/googlevoice/net/ListConversationsRpc;

.field offset:I

.field requestStarted:J


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/googlevoice/UpdateTask$Control;->conversationIds:Ljava/util/Vector;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/googlevoice/UpdateTask$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/google/android/apps/googlevoice/UpdateTask$Control;-><init>()V

    return-void
.end method
