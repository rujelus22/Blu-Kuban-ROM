.class public Lcom/swype/android/compat/GetSelectedTextHandler;
.super Ljava/lang/Object;
.source "GetSelectedTextHandler.java"


# static fields
.field protected static final InputConnection_getSelectedText:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 25
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_f} :catch_13

    move-result-object v0

    .line 31
    :goto_10
    sput-object v0, Lcom/swype/android/compat/GetSelectedTextHandler;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    .line 32
    return-void

    .line 29
    :catch_13
    move-exception v0

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;
    .registers 3
    .parameter "ic"
    .parameter "flags"

    .prologue
    .line 77
    sget-object v0, Lcom/swype/android/compat/GetSelectedTextHandler;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_9

    .line 79
    invoke-static {p0, p1}, Lcom/swype/android/compat/GetSelectedTextHandler;->invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static getSelectedTextString(Landroid/view/inputmethod/InputConnection;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    sget-object v0, Lcom/swype/android/compat/GetSelectedTextHandler;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_13

    .line 106
    invoke-static {p0, v1}, Lcom/swype/android/compat/GetSelectedTextHandler;->invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :goto_10
    return-object v0

    :cond_11
    move-object v0, v2

    .line 107
    goto :goto_10

    .line 111
    :cond_13
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v0, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_3f

    .line 113
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 114
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 115
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v1, v3

    .line 116
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    .line 118
    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3f
    move-object v0, v2

    .line 121
    goto :goto_10
.end method

.method private static invokeGetSelectedText(Landroid/view/inputmethod/InputConnection;I)Ljava/lang/CharSequence;
    .registers 9
    .parameter "ic"
    .parameter "flags"

    .prologue
    .line 40
    :try_start_0
    sget-object v3, Lcom/swype/android/compat/GetSelectedTextHandler;->InputConnection_getSelectedText:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/CharSequence;
    :try_end_12
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_12} :catch_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_12} :catch_2e

    move-object v3, p0

    .line 54
    :goto_13
    return-object v3

    .line 41
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 43
    .local v2, ite:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 44
    .local v0, cause:Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_21

    .line 45
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 46
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_21
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_28

    .line 47
    check-cast v0, Ljava/lang/Error;

    .end local v0           #cause:Ljava/lang/Throwable;
    throw v0

    .line 50
    .restart local v0       #cause:Ljava/lang/Throwable;
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 52
    .end local v0           #cause:Ljava/lang/Throwable;
    .end local v2           #ite:Ljava/lang/reflect/InvocationTargetException;
    :catch_2e
    move-exception v3

    move-object v1, v3

    .line 53
    .local v1, ie:Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    const/4 v3, 0x0

    goto :goto_13
.end method
