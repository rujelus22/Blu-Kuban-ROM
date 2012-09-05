.class Lorg/apache/log4j/chainsaw/ExitAction;
.super Ljavax/swing/AbstractAction;
.source "ExitAction.java"


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "org.apache.log4j.chainsaw.ExitAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ExitAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    .line 34
    new-instance v0, Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/ExitAction;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    .line 32
    return-void

    :cond_1a
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 28
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .registers 4
    .parameter "aIgnore"

    .prologue
    .line 44
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v1, "shutting down"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;)V

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 46
    return-void
.end method
