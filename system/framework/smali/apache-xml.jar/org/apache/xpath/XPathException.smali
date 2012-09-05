.class public Lorg/apache/xpath/XPathException;
.super Ljavax/xml/transform/TransformerException;
.source "XPathException.java"


# static fields
.field static final serialVersionUID:J = 0x3b2b2be100e6764bL


# instance fields
.field protected m_exception:Ljava/lang/Exception;

.field m_styleNode:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4
    .parameter "message"
    .parameter "e"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 167
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "message"
    .parameter "styleNode"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/xpath/ExpressionNode;)V
    .registers 4
    .parameter "message"
    .parameter "ex"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 75
    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    .line 76
    invoke-virtual {p0, p2}, Lorg/apache/xpath/XPathException;->getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xpath/XPathException;->setStylesheetNode(Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/w3c/dom/Node;Ljava/lang/Exception;)V
    .registers 5
    .parameter "message"
    .parameter "styleNode"
    .parameter "e"

    .prologue
    .line 149
    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 151
    iput-object p2, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 152
    iput-object p3, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    .line 153
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Throwable;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;
    .registers 4
    .parameter "ex"

    .prologue
    .line 114
    invoke-interface {p1}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    .line 115
    .local v0, parent:Lorg/apache/xpath/ExpressionNode;
    :goto_4
    if-eqz v0, :cond_f

    instance-of v1, v0, Lorg/apache/xpath/Expression;

    if-eqz v1, :cond_f

    .line 116
    invoke-interface {v0}, Lorg/apache/xpath/ExpressionNode;->exprGetParent()Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    goto :goto_4

    .line 117
    :cond_f
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 7

    .prologue
    .line 220
    invoke-super {p0}, Ljavax/xml/transform/TransformerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, lastMessage:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    .line 223
    .local v0, exception:Ljava/lang/Throwable;
    :cond_6
    :goto_6
    if-eqz v0, :cond_1d

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, nextMessage:Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 228
    move-object v1, v2

    .line 230
    :cond_f
    instance-of v5, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v5, :cond_20

    move-object v4, v0

    .line 232
    check-cast v4, Ljavax/xml/transform/TransformerException;

    .line 233
    .local v4, se:Ljavax/xml/transform/TransformerException;
    move-object v3, v0

    .line 235
    .local v3, prev:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 237
    if-ne v3, v0, :cond_6

    .line 246
    .end local v2           #nextMessage:Ljava/lang/String;
    .end local v3           #prev:Ljava/lang/Throwable;
    .end local v4           #se:Ljavax/xml/transform/TransformerException;
    :cond_1d
    if-eqz v1, :cond_22

    .end local v1           #lastMessage:Ljava/lang/String;
    :goto_1f
    return-object v1

    .line 242
    .restart local v1       #lastMessage:Ljava/lang/String;
    .restart local v2       #nextMessage:Ljava/lang/String;
    :cond_20
    const/4 v0, 0x0

    goto :goto_6

    .line 246
    .end local v2           #nextMessage:Ljava/lang/String;
    :cond_22
    const-string v1, ""

    goto :goto_1f
.end method

.method public getStylesheetNode()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    return-object v0
.end method

.method public getStylesheetNode(Lorg/apache/xpath/ExpressionNode;)Lorg/w3c/dom/Node;
    .registers 4
    .parameter "ex"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/xpath/XPathException;->getExpressionOwner(Lorg/apache/xpath/ExpressionNode;)Lorg/apache/xpath/ExpressionNode;

    move-result-object v0

    .line 100
    .local v0, owner:Lorg/apache/xpath/ExpressionNode;
    if-eqz v0, :cond_d

    instance-of v1, v0, Lorg/w3c/dom/Node;

    if-eqz v1, :cond_d

    .line 102
    check-cast v0, Lorg/w3c/dom/Node;

    .line 104
    .end local v0           #owner:Lorg/apache/xpath/ExpressionNode;
    :goto_c
    return-object v0

    .restart local v0       #owner:Lorg/apache/xpath/ExpressionNode;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 179
    if-nez p1, :cond_4

    .line 180
    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 184
    :cond_4
    :try_start_4
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_2b

    .line 188
    :goto_7
    iget-object v0, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    .line 190
    .local v0, exception:Ljava/lang/Throwable;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    const/16 v4, 0xa

    if-ge v1, v4, :cond_26

    if-eqz v0, :cond_26

    .line 192
    const-string v4, "---------"

    invoke-virtual {p1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 195
    instance-of v4, v0, Ljavax/xml/transform/TransformerException;

    if-eqz v4, :cond_27

    move-object v3, v0

    .line 197
    check-cast v3, Ljavax/xml/transform/TransformerException;

    .line 198
    .local v3, se:Ljavax/xml/transform/TransformerException;
    move-object v2, v0

    .line 200
    .local v2, prev:Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v0

    .line 202
    if-ne v2, v0, :cond_28

    .line 210
    .end local v2           #prev:Ljava/lang/Throwable;
    .end local v3           #se:Ljavax/xml/transform/TransformerException;
    :cond_26
    return-void

    .line 207
    :cond_27
    const/4 v0, 0x0

    .line 190
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 186
    .end local v0           #exception:Ljava/lang/Throwable;
    .end local v1           #i:I
    :catch_2b
    move-exception v4

    goto :goto_7
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 13
    .parameter "s"

    .prologue
    .line 258
    if-nez p1, :cond_9

    .line 259
    new-instance p1, Ljava/io/PrintWriter;

    .end local p1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {p1, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 263
    .restart local p1
    :cond_9
    :try_start_9
    invoke-super {p0, p1}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_4c

    .line 268
    :goto_c
    const/4 v3, 0x0

    .line 270
    .local v3, isJdk14OrHigher:Z
    :try_start_d
    const-class v7, Ljava/lang/Throwable;

    const-string v8, "getCause"

    const/4 v6, 0x1

    new-array v9, v6, [Ljava/lang/Class;

    const/4 v10, 0x0

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/Class;

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1d} :catch_4e

    .line 271
    const/4 v3, 0x1

    .line 279
    :goto_1e
    if-nez v3, :cond_40

    .line 281
    iget-object v1, p0, Lorg/apache/xpath/XPathException;->m_exception:Ljava/lang/Exception;

    .line 283
    .local v1, exception:Ljava/lang/Throwable;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    const/16 v6, 0xa

    if-ge v2, v6, :cond_40

    if-eqz v1, :cond_40

    .line 285
    const-string v6, "---------"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    :try_start_2e
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_41

    .line 296
    :goto_31
    instance-of v6, v1, Ljavax/xml/transform/TransformerException;

    if-eqz v6, :cond_48

    move-object v5, v1

    .line 298
    check-cast v5, Ljavax/xml/transform/TransformerException;

    .line 299
    .local v5, se:Ljavax/xml/transform/TransformerException;
    move-object v4, v1

    .line 301
    .local v4, prev:Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object v1

    .line 303
    if-ne v4, v1, :cond_49

    .line 305
    const/4 v1, 0x0

    .line 316
    .end local v1           #exception:Ljava/lang/Throwable;
    .end local v2           #i:I
    .end local v4           #prev:Ljava/lang/Throwable;
    .end local v5           #se:Ljavax/xml/transform/TransformerException;
    :cond_40
    return-void

    .line 291
    .restart local v1       #exception:Ljava/lang/Throwable;
    .restart local v2       #i:I
    :catch_41
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "Could not print stack trace..."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31

    .line 312
    .end local v0           #e:Ljava/lang/Exception;
    :cond_48
    const/4 v1, 0x0

    .line 283
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 265
    .end local v1           #exception:Ljava/lang/Throwable;
    .end local v2           #i:I
    .end local v3           #isJdk14OrHigher:Z
    :catch_4c
    move-exception v6

    goto :goto_c

    .line 272
    .restart local v3       #isJdk14OrHigher:Z
    :catch_4e
    move-exception v6

    goto :goto_1e
.end method

.method public setStylesheetNode(Ljava/lang/Object;)V
    .registers 2
    .parameter "styleNode"

    .prologue
    .line 59
    iput-object p1, p0, Lorg/apache/xpath/XPathException;->m_styleNode:Ljava/lang/Object;

    .line 60
    return-void
.end method
