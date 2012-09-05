.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private final val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

.field private final val$result:Ljavax/swing/JMenuItem;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V
    .registers 4
    .parameter "this$0"
    .parameter "val$result"
    .parameter "val$logLevel"

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$result:Ljavax/swing/JMenuItem;

    iput-object p3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 5
    .parameter "e"

    .prologue
    .line 785
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$result:Ljavax/swing/JMenuItem;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->showLogLevelColorChangeDialog(Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V

    .line 786
    return-void
.end method
