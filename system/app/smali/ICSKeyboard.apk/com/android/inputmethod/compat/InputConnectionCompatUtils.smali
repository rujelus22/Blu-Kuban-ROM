.class public Lcom/android/inputmethod/compat/InputConnectionCompatUtils;
.super Ljava/lang/Object;
.source "InputConnectionCompatUtils.java"


# static fields
.field private static final CLASS_CorrectionInfo:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final CONSTRUCTOR_CorrectionInfo:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final INPUT_TYPE_CorrectionInfo:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final METHOD_InputConnection_commitCorrection:Ljava/lang/reflect/Method;

.field private static final METHOD_getSelectedText:Ljava/lang/reflect/Method;

.field private static final METHOD_setComposingRegion:Ljava/lang/reflect/Method;

.field public static final RECORRECTION_SUPPORTED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    const-string v2, "android.view.inputmethod.CorrectionInfo"

    invoke-static {v2}, Lcom/android/inputmethod/compat/CompatUtils;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 27
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CLASS_CorrectionInfo:Ljava/lang/Class;

    .line 29
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    .line 30
    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v2, v0

    const-class v3, Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    .line 29
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->INPUT_TYPE_CorrectionInfo:[Ljava/lang/Class;

    .line 32
    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CLASS_CorrectionInfo:Ljava/lang/Class;

    sget-object v3, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->INPUT_TYPE_CorrectionInfo:[Ljava/lang/Class;

    invoke-static {v2, v3}, Lcom/android/inputmethod/compat/CompatUtils;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 31
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CONSTRUCTOR_CorrectionInfo:Ljava/lang/reflect/Constructor;

    .line 34
    const-class v2, Landroid/view/inputmethod/InputConnection;

    const-string v3, "commitCorrection"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CLASS_CorrectionInfo:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_InputConnection_commitCorrection:Ljava/lang/reflect/Method;

    .line 36
    const-class v2, Landroid/view/inputmethod/InputConnection;

    const-string v3, "getSelectedText"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_getSelectedText:Ljava/lang/reflect/Method;

    .line 38
    const-class v2, Landroid/view/inputmethod/InputConnection;

    const-string v3, "setComposingRegion"

    new-array v4, v6, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 37
    sput-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_setComposingRegion:Ljava/lang/reflect/Method;

    .line 42
    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_getSelectedText:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_65

    .line 43
    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_setComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_65

    .line 42
    :goto_62
    sput-boolean v0, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->RECORRECTION_SUPPORTED:Z

    .line 26
    return-void

    :cond_65
    move v0, v1

    .line 43
    goto :goto_62
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitCorrection(Landroid/view/inputmethod/InputConnection;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 10
    .parameter "ic"
    .parameter "offset"
    .parameter "oldText"
    .parameter "newText"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 48
    if-eqz p0, :cond_c

    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CONSTRUCTOR_CorrectionInfo:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_c

    .line 49
    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_InputConnection_commitCorrection:Ljava/lang/reflect/Method;

    if-nez v2, :cond_d

    .line 58
    :cond_c
    :goto_c
    return-void

    .line 52
    :cond_d
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object p2, v0, v4

    const/4 v2, 0x2

    aput-object p3, v0, v2

    .line 53
    .local v0, args:[Ljava/lang/Object;
    sget-object v2, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->CONSTRUCTOR_CorrectionInfo:Ljava/lang/reflect/Constructor;

    invoke-static {v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->newInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 54
    .local v1, correctionInfo:Ljava/lang/Object;
    if-eqz v1, :cond_c

    .line 55
    const/4 v2, 0x0

    sget-object v3, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_InputConnection_commitCorrection:Ljava/lang/reflect/Method;

    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    aput-object v1, v4, v5

    .line 55
    invoke-static {p0, v2, v3, v4}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c
.end method

.method public static getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .registers 8
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v4, 0x0

    .line 67
    const/4 v0, 0x0

    sget-object v1, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_getSelectedText:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 66
    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)V
    .registers 7
    .parameter "ic"
    .parameter "word"

    .prologue
    .line 78
    const/4 v0, 0x0

    sget-object v1, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->METHOD_setComposingRegion:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mStart:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 77
    invoke-static {p0, v0, v1, v2}, Lcom/android/inputmethod/compat/CompatUtils;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method
