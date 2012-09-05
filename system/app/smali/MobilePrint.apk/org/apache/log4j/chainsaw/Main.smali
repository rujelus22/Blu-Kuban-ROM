.class public Lorg/apache/log4j/chainsaw/Main;
.super Ljavax/swing/JFrame;
.source "Main.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x115d

.field private static final LOG:Lorg/apache/log4j/Logger; = null

.field public static final PORT_PROP_NAME:Ljava/lang/String; = "chainsaw.port"

.field static class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    if-nez v0, :cond_13

    const-string v0, "org.apache.log4j.chainsaw.Main"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/Main;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    :goto_c
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    return-void

    :cond_13
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 16

    .prologue
    .line 60
    const-string v12, "CHAINSAW - Log4J Log Viewer"

    invoke-direct {p0, v12}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v9, Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-direct {v9}, Lorg/apache/log4j/chainsaw/MyTableModel;-><init>()V

    .line 65
    .local v9, model:Lorg/apache/log4j/chainsaw/MyTableModel;
    new-instance v8, Ljavax/swing/JMenuBar;

    invoke-direct {v8}, Ljavax/swing/JMenuBar;-><init>()V

    .line 66
    .local v8, menuBar:Ljavax/swing/JMenuBar;
    invoke-virtual {p0, v8}, Ljavax/swing/JFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 67
    new-instance v7, Ljavax/swing/JMenu;

    const-string v12, "File"

    invoke-direct {v7, v12}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 68
    .local v7, menu:Ljavax/swing/JMenu;
    invoke-virtual {v8, v7}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 71
    :try_start_1c
    new-instance v6, Lorg/apache/log4j/chainsaw/LoadXMLAction;

    invoke-direct {v6, p0, v9}, Lorg/apache/log4j/chainsaw/LoadXMLAction;-><init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 72
    .local v6, lxa:Lorg/apache/log4j/chainsaw/LoadXMLAction;
    new-instance v5, Ljavax/swing/JMenuItem;

    const-string v12, "Load file..."

    invoke-direct {v5, v12}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 73
    .local v5, loadMenuItem:Ljavax/swing/JMenuItem;
    invoke-virtual {v7, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 74
    invoke-virtual {v5, v6}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V
    :try_end_2e
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1c .. :try_end_2e} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2e} :catch_b3

    .line 91
    .end local v5           #loadMenuItem:Ljavax/swing/JMenuItem;
    .end local v6           #lxa:Lorg/apache/log4j/chainsaw/LoadXMLAction;
    :goto_2e
    new-instance v3, Ljavax/swing/JMenuItem;

    const-string v12, "Exit"

    invoke-direct {v3, v12}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, exitMenuItem:Ljavax/swing/JMenuItem;
    invoke-virtual {v7, v3}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 93
    sget-object v12, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v3, v12}, Ljavax/swing/AbstractButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 96
    new-instance v0, Lorg/apache/log4j/chainsaw/ControlPanel;

    invoke-direct {v0, v9}, Lorg/apache/log4j/chainsaw/ControlPanel;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 97
    .local v0, cp:Lorg/apache/log4j/chainsaw/ControlPanel;
    invoke-virtual {p0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v12

    const-string v13, "North"

    invoke-virtual {v12, v0, v13}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 100
    new-instance v11, Ljavax/swing/JTable;

    invoke-direct {v11, v9}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 101
    .local v11, table:Ljavax/swing/JTable;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 102
    new-instance v10, Ljavax/swing/JScrollPane;

    invoke-direct {v10, v11}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    .line 103
    .local v10, scrollPane:Ljavax/swing/JScrollPane;
    const-string v12, "Events: "

    invoke-static {v12}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljavax/swing/JComponent;->setBorder(Ljavax/swing/border/Border;)V

    .line 104
    new-instance v12, Ljava/awt/Dimension;

    const/16 v13, 0x384

    const/16 v14, 0x12c

    invoke-direct {v12, v13, v14}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v10, v12}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 107
    new-instance v1, Lorg/apache/log4j/chainsaw/DetailPanel;

    invoke-direct {v1, v11, v9}, Lorg/apache/log4j/chainsaw/DetailPanel;-><init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 108
    .local v1, details:Ljavax/swing/JPanel;
    new-instance v12, Ljava/awt/Dimension;

    const/16 v13, 0x384

    const/16 v14, 0x12c

    invoke-direct {v12, v13, v14}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v1, v12}, Ljavax/swing/JComponent;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 111
    new-instance v4, Ljavax/swing/JSplitPane;

    const/4 v12, 0x0

    invoke-direct {v4, v12, v10, v1}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    .line 113
    .local v4, jsp:Ljavax/swing/JSplitPane;
    invoke-virtual {p0}, Ljavax/swing/JFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v12

    const-string v13, "Center"

    invoke-virtual {v12, v4, v13}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 115
    new-instance v12, Lorg/apache/log4j/chainsaw/Main$1;

    invoke-direct {v12, p0}, Lorg/apache/log4j/chainsaw/Main$1;-><init>(Lorg/apache/log4j/chainsaw/Main;)V

    invoke-virtual {p0, v12}, Ljava/awt/Window;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 121
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    .line 122
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Ljava/awt/Component;->setVisible(Z)V

    .line 124
    invoke-direct {p0, v9}, Lorg/apache/log4j/chainsaw/Main;->setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 125
    return-void

    .line 76
    .end local v0           #cp:Lorg/apache/log4j/chainsaw/ControlPanel;
    .end local v1           #details:Ljavax/swing/JPanel;
    .end local v3           #exitMenuItem:Ljavax/swing/JMenuItem;
    .end local v4           #jsp:Ljavax/swing/JSplitPane;
    .end local v10           #scrollPane:Ljavax/swing/JScrollPane;
    .end local v11           #table:Ljavax/swing/JTable;
    :catch_a1
    move-exception v2

    .local v2, e:Ljava/lang/NoClassDefFoundError;
    sget-object v12, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v13, "Missing classes for XML parser"

    invoke-virtual {v12, v13, v2}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 77
    const-string v12, "XML parser not in classpath - unable to load XML events."

    const-string v13, "CHAINSAW"

    const/4 v14, 0x0

    invoke-static {p0, v12, v13, v14}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_2e

    .line 83
    .end local v2           #e:Ljava/lang/NoClassDefFoundError;
    :catch_b3
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    sget-object v12, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v13, "Unable to create the action to load XML files"

    invoke-virtual {v12, v13, v2}, Lorg/apache/log4j/Category;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 84
    const-string v12, "Unable to create a XML parser - unable to load XML events."

    const-string v13, "CHAINSAW"

    const/4 v14, 0x0

    invoke-static {p0, v12, v13, v14}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto/16 :goto_2e
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 43
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

.method private static initLog4J()V
    .registers 3

    .prologue
    .line 173
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 174
    .local v0, props:Ljava/util/Properties;
    const-string v1, "log4j.rootLogger"

    const-string v2, "DEBUG, A1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    const-string v1, "log4j.appender.A1"

    const-string v2, "org.apache.log4j.ConsoleAppender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 177
    const-string v1, "log4j.appender.A1.layout"

    const-string v2, "org.apache.log4j.TTCCLayout"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 179
    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/util/Properties;)V

    .line 180
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .parameter "aArgs"

    .prologue
    .line 188
    invoke-static {}, Lorg/apache/log4j/chainsaw/Main;->initLog4J()V

    .line 189
    new-instance v0, Lorg/apache/log4j/chainsaw/Main;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/Main;-><init>()V

    .line 190
    return-void
.end method

.method private setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .registers 12
    .parameter "aModel"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 133
    const/16 v3, 0x115d

    .line 134
    .local v3, port:I
    const-string v5, "chainsaw.port"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, strRep:Ljava/lang/String;
    if-eqz v4, :cond_10

    .line 137
    :try_start_c
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_f} :catch_19

    move-result v3

    .line 152
    :cond_10
    :goto_10
    :try_start_10
    new-instance v1, Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-direct {v1, p1, v3}, Lorg/apache/log4j/chainsaw/LoggingReceiver;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V

    .line 153
    .local v1, lr:Lorg/apache/log4j/chainsaw/LoggingReceiver;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_5a

    .line 163
    .end local v1           #lr:Lorg/apache/log4j/chainsaw/LoggingReceiver;
    :goto_18
    return-void

    .line 139
    :catch_19
    move-exception v2

    .local v2, nfe:Ljava/lang/NumberFormatException;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Unable to parse chainsaw.port property with value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Category;->fatal(Ljava/lang/Object;)V

    .line 141
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to parse port number from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\', quitting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v8}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 147
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_10

    .line 155
    .end local v2           #nfe:Ljava/lang/NumberFormatException;
    :catch_5a
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Unable to connect to socket server, quiting"

    invoke-virtual {v5, v6, v0}, Lorg/apache/log4j/Category;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 156
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to create socket on port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", quitting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CHAINSAW"

    invoke-static {p0, v5, v6, v8}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 161
    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    goto :goto_18
.end method
