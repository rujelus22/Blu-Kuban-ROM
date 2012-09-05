.class Lorg/apache/log4j/chainsaw/Main$1;
.super Ljava/awt/event/WindowAdapter;
.source "Main.java"


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/Main;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/Main;)V
    .registers 2
    .parameter "this$0"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/chainsaw/Main$1;->this$0:Lorg/apache/log4j/chainsaw/Main;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .registers 4
    .parameter "aEvent"

    .prologue
    .line 117
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/ExitAction;->actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 118
    return-void
.end method
