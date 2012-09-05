.class Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;
.super Ljava/lang/Object;
.source "LogFactor5ErrorDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V
    .registers 2
    .parameter "this$0"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {v0}, Ljava/awt/Dialog;->hide()V

    .line 55
    return-void
.end method
