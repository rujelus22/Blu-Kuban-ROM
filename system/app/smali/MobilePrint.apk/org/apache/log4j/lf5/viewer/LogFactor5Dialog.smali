.class public abstract Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.super Ljavax/swing/JDialog;
.source "LogFactor5Dialog.java"


# static fields
.field protected static final DISPLAY_FONT:Ljava/awt/Font;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 34
    new-instance v0, Ljava/awt/Font;

    const-string v1, "Arial"

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    return-void
.end method

.method protected constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V
    .registers 4
    .parameter "jframe"
    .parameter "message"
    .parameter "modal"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected centerWindow(Ljava/awt/Window;)V
    .registers 7
    .parameter "win"

    .prologue
    .line 68
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 71
    .local v0, screenDim:Ljava/awt/Dimension;
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->width:I

    if-ge v3, v4, :cond_1d

    .line 72
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v3, v4}, Ljava/awt/Component;->setSize(II)V

    .line 75
    :cond_1d
    iget v3, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    if-ge v3, v4, :cond_32

    .line 76
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v3

    iget v3, v3, Ljava/awt/Dimension;->width:I

    iget v4, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, v3, v4}, Ljava/awt/Component;->setSize(II)V

    .line 80
    :cond_32
    iget v3, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .line 81
    .local v1, x:I
    iget v3, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v4

    iget v4, v4, Ljava/awt/Dimension;->height:I

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 82
    .local v2, y:I
    invoke-virtual {p1, v1, v2}, Ljava/awt/Component;->setLocation(II)V

    .line 83
    return-void
.end method

.method protected getDefaultConstraints()Ljava/awt/GridBagConstraints;
    .registers 6

    .prologue
    const-wide/high16 v3, 0x3ff0

    const/4 v2, 0x4

    .line 112
    new-instance v0, Ljava/awt/GridBagConstraints;

    invoke-direct {v0}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 113
    .local v0, constraints:Ljava/awt/GridBagConstraints;
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weightx:D

    .line 114
    iput-wide v3, v0, Ljava/awt/GridBagConstraints;->weighty:D

    .line 115
    const/4 v1, 0x1

    iput v1, v0, Ljava/awt/GridBagConstraints;->gridheight:I

    .line 117
    new-instance v1, Ljava/awt/Insets;

    invoke-direct {v1, v2, v2, v2, v2}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v1, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 119
    const/4 v1, 0x0

    iput v1, v0, Ljava/awt/GridBagConstraints;->fill:I

    .line 121
    const/16 v1, 0x11

    iput v1, v0, Ljava/awt/GridBagConstraints;->anchor:I

    .line 123
    return-object v0
.end method

.method protected minimumSizeDialog(Ljava/awt/Component;II)V
    .registers 5
    .parameter "component"
    .parameter "minWidth"
    .parameter "minHeight"

    .prologue
    .line 130
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    if-ge v0, p2, :cond_11

    .line 131
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    invoke-virtual {p1, p2, v0}, Ljava/awt/Component;->setSize(II)V

    .line 133
    :cond_11
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I

    if-ge v0, p3, :cond_22

    .line 134
    invoke-virtual {p1}, Ljava/awt/Component;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I

    invoke-virtual {p1, v0, p3}, Ljava/awt/Component;->setSize(II)V

    .line 135
    :cond_22
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 54
    invoke-virtual {p0}, Ljava/awt/Window;->pack()V

    .line 55
    const/16 v0, 0xc8

    const/16 v1, 0x64

    invoke-virtual {p0, p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->minimumSizeDialog(Ljava/awt/Component;II)V

    .line 56
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->centerWindow(Ljava/awt/Window;)V

    .line 57
    invoke-super {p0}, Ljava/awt/Dialog;->show()V

    .line 58
    return-void
.end method

.method protected wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V
    .registers 10
    .parameter "message"
    .parameter "container"

    .prologue
    const/4 v6, 0x0

    .line 87
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->getDefaultConstraints()Ljava/awt/GridBagConstraints;

    move-result-object v0

    .line 88
    .local v0, c:Ljava/awt/GridBagConstraints;
    iput v6, v0, Ljava/awt/GridBagConstraints;->gridwidth:I

    .line 90
    new-instance v5, Ljava/awt/Insets;

    invoke-direct {v5, v6, v6, v6, v6}, Ljava/awt/Insets;-><init>(IIII)V

    iput-object v5, v0, Ljava/awt/GridBagConstraints;->insets:Ljava/awt/Insets;

    .line 91
    invoke-virtual {p2}, Ljava/awt/Container;->getLayout()Ljava/awt/LayoutManager;

    move-result-object v1

    check-cast v1, Ljava/awt/GridBagLayout;

    .line 94
    .local v1, gbLayout:Ljava/awt/GridBagLayout;
    :goto_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_1b

    .line 109
    return-void

    .line 95
    :cond_1b
    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 97
    .local v4, newLineIndex:I
    if-ltz v4, :cond_3e

    .line 98
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, line:Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    :goto_2d
    new-instance v2, Ljava/awt/Label;

    invoke-direct {v2, v3}, Ljava/awt/Label;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, label:Ljava/awt/Label;
    sget-object v5, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;->DISPLAY_FONT:Ljava/awt/Font;

    invoke-virtual {v2, v5}, Ljava/awt/Component;->setFont(Ljava/awt/Font;)V

    .line 106
    invoke-virtual {v1, v2, v0}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 107
    invoke-virtual {p2, v2}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    goto :goto_14

    .line 101
    .end local v2           #label:Ljava/awt/Label;
    .end local v3           #line:Ljava/lang/String;
    :cond_3e
    move-object v3, p1

    .line 102
    .restart local v3       #line:Ljava/lang/String;
    const-string p1, ""

    goto :goto_2d
.end method
