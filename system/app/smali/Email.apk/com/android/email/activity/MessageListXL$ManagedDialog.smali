.class Lcom/android/email/activity/MessageListXL$ManagedDialog;
.super Ljava/lang/Object;
.source "MessageListXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageListXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManagedDialog"
.end annotation


# instance fields
.field public dialog:Lcom/android/email/activity/MessageListXL$MessageListDialog;

.field final synthetic this$0:Lcom/android/email/activity/MessageListXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageListXL;)V
    .registers 2
    .parameter

    .prologue
    .line 5377
    iput-object p1, p0, Lcom/android/email/activity/MessageListXL$ManagedDialog;->this$0:Lcom/android/email/activity/MessageListXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageListXL;Lcom/android/email/activity/MessageListXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5377
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageListXL$ManagedDialog;-><init>(Lcom/android/email/activity/MessageListXL;)V

    return-void
.end method
