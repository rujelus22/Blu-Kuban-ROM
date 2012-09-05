.class public Lcom/android/inputmethod/voice/FieldContext;
.super Ljava/lang/Object;
.source "FieldContext.java"


# instance fields
.field mFieldInfo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .parameter "conn"
    .parameter "info"
    .parameter "selectedLanguage"
    .parameter "enabledLanguages"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p2, v0}, Lcom/android/inputmethod/voice/FieldContext;->addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/inputmethod/voice/FieldContext;->addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p3, p4, v0}, Lcom/android/inputmethod/voice/FieldContext;->addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method private static addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V
    .registers 4
    .parameter "info"
    .parameter "bundle"

    .prologue
    .line 63
    if-nez p0, :cond_3

    .line 74
    :goto_2
    return-void

    .line 67
    :cond_3
    const-string v0, "label"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "hint"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "fieldId"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "fieldName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/inputmethod/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "inputType"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "imeOptions"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private static addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V
    .registers 6
    .parameter "conn"
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_4

    .line 87
    :cond_3
    :goto_3
    return-void

    .line 82
    :cond_4
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 83
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_3

    .line 86
    const-string v2, "singleLine"

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_18

    const/4 v1, 0x1

    :cond_18
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method private static addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .parameter "selectedLanguage"
    .parameter "enabledLanguages"
    .parameter "bundle"

    .prologue
    .line 91
    const-string v0, "selectedLanguage"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "enabledLanguages"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter "o"

    .prologue
    .line 56
    if-nez p0, :cond_5

    .line 57
    const-string v0, ""

    .line 59
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/inputmethod/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
