.class Lcom/vlingo/client/core/recognizer/Recognizer$Notification;
.super Ljava/lang/Object;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Notification"
.end annotation


# instance fields
.field m_Data:Ljava/lang/Object;

.field m_Status:I

.field final synthetic this$0:Lcom/vlingo/client/core/recognizer/Recognizer;


# direct methods
.method constructor <init>(Lcom/vlingo/client/core/recognizer/Recognizer;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "status"
    .parameter "data"

    .prologue
    .line 747
    iput-object p1, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->this$0:Lcom/vlingo/client/core/recognizer/Recognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput p2, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Status:I

    .line 749
    iput-object p3, p0, Lcom/vlingo/client/core/recognizer/Recognizer$Notification;->m_Data:Ljava/lang/Object;

    .line 750
    return-void
.end method
