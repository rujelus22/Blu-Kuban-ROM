.class public Lorg/apache/xalan/templates/FuncFormatNumb;
.super Lorg/apache/xpath/functions/Function3Args;
.source "FuncFormatNumb.java"


# static fields
.field static final serialVersionUID:J = -0x7b185720e3567f8cL


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/xpath/functions/Function3Args;-><init>()V

    return-void
.end method


# virtual methods
.method public checkNumberArgs(I)V
    .registers 3
    .parameter "argNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 175
    const/4 v0, 0x3

    if-gt p1, v0, :cond_6

    const/4 v0, 0x2

    if-ge p1, v0, :cond_9

    .line 176
    :cond_6
    invoke-virtual {p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->reportWrongNumberArgs()V

    .line 177
    :cond_9
    return-void
.end method

.method public execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;
    .registers 22
    .parameter "xctxt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v16

    check-cast v16, Lorg/apache/xalan/templates/ElemTemplateElement;

    .line 59
    .local v16, templElem:Lorg/apache/xalan/templates/ElemTemplateElement;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/xalan/templates/ElemTemplateElement;->getStylesheetRoot()Lorg/apache/xalan/templates/StylesheetRoot;

    move-result-object v15

    .line 60
    .local v15, ss:Lorg/apache/xalan/templates/StylesheetRoot;
    const/4 v8, 0x0

    .line 61
    .local v8, formatter:Ljava/text/DecimalFormat;
    const/4 v6, 0x0

    .line 62
    .local v6, dfs:Ljava/text/DecimalFormatSymbols;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg0()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->num()D

    move-result-wide v11

    .line 63
    .local v11, num:D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg1()Lorg/apache/xpath/Expression;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v13

    .line 66
    .local v13, patternStr:Ljava/lang/String;
    const/16 v17, 0xa4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-lez v17, :cond_3d

    .line 67
    const-string v17, "ER_CURRENCY_SIGN_ILLEGAL"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->error(Ljava/lang/String;)V

    .line 73
    :cond_3d
    :try_start_3d
    invoke-virtual/range {p0 .. p0}, Lorg/apache/xalan/templates/FuncFormatNumb;->getArg2()Lorg/apache/xpath/Expression;

    move-result-object v4

    .line 75
    .local v4, arg2Expr:Lorg/apache/xpath/Expression;
    if-eqz v4, :cond_f1

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/xpath/Expression;->execute(Lorg/apache/xpath/XPathContext;)Lorg/apache/xpath/objects/XObject;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xpath/objects/XObject;->str()Ljava/lang/String;

    move-result-object v5

    .line 78
    .local v5, dfName:Ljava/lang/String;
    new-instance v14, Lorg/apache/xml/utils/QName;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/xpath/XPathContext;->getNamespaceContext()Lorg/apache/xml/utils/PrefixResolver;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v5, v0}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;Lorg/apache/xml/utils/PrefixResolver;)V

    .line 80
    .local v14, qname:Lorg/apache/xml/utils/QName;
    invoke-virtual {v15, v14}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 82
    if-nez v6, :cond_9e

    .line 84
    const-string v17, "WG_NO_DECIMALFORMAT_DECLARATION"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/xalan/templates/FuncFormatNumb;->warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_77} :catch_e6

    move-object v9, v8

    .line 101
    .end local v5           #dfName:Ljava/lang/String;
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .end local v14           #qname:Lorg/apache/xml/utils/QName;
    .local v9, formatter:Ljava/text/DecimalFormat;
    :goto_78
    if-nez v9, :cond_ef

    .line 105
    :try_start_7a
    new-instance v17, Lorg/apache/xml/utils/QName;

    const-string v18, ""

    invoke-direct/range {v17 .. v18}, Lorg/apache/xml/utils/QName;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/apache/xalan/templates/StylesheetRoot;->getDecimalFormatComposed(Lorg/apache/xml/utils/QName;)Ljava/text/DecimalFormatSymbols;

    move-result-object v6

    .line 107
    if-eqz v6, :cond_c0

    .line 109
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8e} :catch_aa

    .line 111
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    :try_start_8e
    invoke-virtual {v8, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 112
    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V

    .line 130
    :goto_94
    new-instance v17, Lorg/apache/xpath/objects/XString;

    invoke-virtual {v8, v11, v12}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/apache/xpath/objects/XString;-><init>(Ljava/lang/String;)V

    .line 137
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    :goto_9d
    return-object v17

    .line 93
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v5       #dfName:Ljava/lang/String;
    .restart local v14       #qname:Lorg/apache/xml/utils/QName;
    :cond_9e
    new-instance v9, Ljava/text/DecimalFormat;

    invoke-direct {v9}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_a3} :catch_e6

    .line 95
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :try_start_a3
    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 96
    invoke-virtual {v9, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a9} :catch_aa

    goto :goto_78

    .line 132
    .end local v5           #dfName:Ljava/lang/String;
    .end local v14           #qname:Lorg/apache/xml/utils/QName;
    :catch_aa
    move-exception v10

    move-object v8, v9

    .line 134
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    .local v10, iae:Ljava/lang/Exception;
    :goto_ac
    const-string v17, "ER_MALFORMED_FORMAT_STRING"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v13, v18, v19

    invoke-virtual/range {v16 .. v18}, Lorg/apache/xalan/templates/ElemTemplateElement;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    sget-object v17, Lorg/apache/xpath/objects/XString;->EMPTYSTRING:Lorg/apache/xpath/objects/XString;

    goto :goto_9d

    .line 116
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .end local v10           #iae:Ljava/lang/Exception;
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :cond_c0
    :try_start_c0
    new-instance v7, Ljava/text/DecimalFormatSymbols;

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c9} :catch_aa

    .line 118
    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .local v7, dfs:Ljava/text/DecimalFormatSymbols;
    :try_start_c9
    const-string v17, "Infinity"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setInfinity(Ljava/lang/String;)V

    .line 119
    const-string v17, "NaN"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/text/DecimalFormatSymbols;->setNaN(Ljava/lang/String;)V

    .line 121
    new-instance v8, Ljava/text/DecimalFormat;

    invoke-direct {v8}, Ljava/text/DecimalFormat;-><init>()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_dc} :catch_e8

    .line 123
    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    :try_start_dc
    invoke-virtual {v8, v7}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 125
    if-eqz v13, :cond_e4

    .line 126
    invoke-virtual {v8, v13}, Ljava/text/DecimalFormat;->applyLocalizedPattern(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e4} :catch_ec

    :cond_e4
    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    goto :goto_94

    .line 132
    .end local v4           #arg2Expr:Lorg/apache/xpath/Expression;
    :catch_e6
    move-exception v10

    goto :goto_ac

    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v4       #arg2Expr:Lorg/apache/xpath/Expression;
    .restart local v7       #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :catch_e8
    move-exception v10

    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    move-object v8, v9

    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    goto :goto_ac

    .end local v6           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v7       #dfs:Ljava/text/DecimalFormatSymbols;
    :catch_ec
    move-exception v10

    move-object v6, v7

    .end local v7           #dfs:Ljava/text/DecimalFormatSymbols;
    .restart local v6       #dfs:Ljava/text/DecimalFormatSymbols;
    goto :goto_ac

    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    :cond_ef
    move-object v8, v9

    .end local v9           #formatter:Ljava/text/DecimalFormat;
    .restart local v8       #formatter:Ljava/text/DecimalFormat;
    goto :goto_94

    :cond_f1
    move-object v9, v8

    .end local v8           #formatter:Ljava/text/DecimalFormat;
    .restart local v9       #formatter:Ljava/text/DecimalFormat;
    goto :goto_78
.end method

.method protected reportWrongNumberArgs()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xpath/functions/WrongNumberArgsException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/apache/xpath/functions/WrongNumberArgsException;

    const-string v1, "ER_TWO_OR_THREE"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/xalan/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xpath/functions/WrongNumberArgsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public warn(Lorg/apache/xpath/XPathContext;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 8
    .parameter "xctxt"
    .parameter "msg"
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p2, p3}, Lorg/apache/xalan/res/XSLMessages;->createWarning(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, formattedMsg:Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object v0

    .line 161
    .local v0, errHandler:Ljavax/xml/transform/ErrorListener;
    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lorg/apache/xpath/XPathContext;->getSAXLocator()Ljavax/xml/transform/SourceLocator;

    move-result-object v2

    check-cast v2, Lorg/apache/xml/utils/SAXSourceLocator;

    invoke-direct {v3, v1, v2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;)V

    invoke-interface {v0, v3}, Ljavax/xml/transform/ErrorListener;->warning(Ljavax/xml/transform/TransformerException;)V

    .line 163
    return-void
.end method
