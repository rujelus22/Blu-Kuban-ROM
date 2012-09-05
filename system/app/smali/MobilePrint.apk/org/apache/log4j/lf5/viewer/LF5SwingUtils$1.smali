.class Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;
.super Ljava/lang/Object;
.source "LF5SwingUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$component:Ljavax/swing/JComponent;


# direct methods
.method constructor <init>(Ljavax/swing/JComponent;)V
    .registers 2
    .parameter "val$component"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;->val$component:Ljavax/swing/JComponent;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LF5SwingUtils$1;->val$component:Ljavax/swing/JComponent;

    invoke-virtual {v0}, Ljava/awt/Component;->repaint()V

    .line 136
    return-void
.end method
