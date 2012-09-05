.class Lcom/vlingo/client/safereader/SafeReaderNotificationManager$MessageContextWrapper;
.super Ljava/lang/Object;
.source "SafeReaderNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageContextWrapper"
.end annotation


# instance fields
.field private volatile notificationID:I

.field private final originalContext:Lcom/vlingo/client/safereader/MessageContext;

.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationManager;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/safereader/SafeReaderNotificationManager;Landroid/app/Notification;Landroid/widget/RemoteViews;Lcom/vlingo/client/safereader/MessageContext;)V
    .registers 5
    .parameter
    .parameter "n"
    .parameter "remoteView"
    .parameter "context"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationManager$MessageContextWrapper;->this$0:Lcom/vlingo/client/safereader/SafeReaderNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p4, p0, Lcom/vlingo/client/safereader/SafeReaderNotificationManager$MessageContextWrapper;->originalContext:Lcom/vlingo/client/safereader/MessageContext;

    .line 281
    return-void
.end method
