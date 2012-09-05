.class public Lcom/swype/android/voice/VLingoSpeechManager;
.super Lcom/swype/android/voice/VoiceKeyboardManager;
.source "VLingoSpeechManager.java"


# static fields
.field public static final FIELD_ID_VP_MAIN:Ljava/lang/String; = "vp_main"


# instance fields
.field private final connection:Landroid/content/ServiceConnection;

.field protected final listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

.field protected vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;


# direct methods
.method public constructor <init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/swype/android/voice/VoiceKeyboardManager;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 125
    new-instance v0, Lcom/swype/android/voice/VLingoSpeechManager$1;

    invoke-direct {v0, p0}, Lcom/swype/android/voice/VLingoSpeechManager$1;-><init>(Lcom/swype/android/voice/VLingoSpeechManager;)V

    iput-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager;->listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    .line 166
    new-instance v0, Lcom/swype/android/voice/VLingoSpeechManager$2;

    invoke-direct {v0, p0}, Lcom/swype/android/voice/VLingoSpeechManager$2;-><init>(Lcom/swype/android/voice/VLingoSpeechManager;)V

    iput-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager;->connection:Landroid/content/ServiceConnection;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/voice/VLingoSpeechManager;IZ)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/swype/android/voice/VLingoSpeechManager;->getErrorStringId(IZ)I

    move-result v0

    return v0
.end method

.method private getErrorStringId(IZ)I
    .registers 4
    .parameter
    .parameter

    .prologue
    const v0, 0x7f070081

    .line 179
    packed-switch p1, :pswitch_data_24

    .line 200
    const v0, 0x7f070087

    :cond_9
    :goto_9
    :pswitch_9
    return v0

    .line 182
    :pswitch_a
    const v0, 0x7f070080

    goto :goto_9

    .line 186
    :pswitch_e
    if-nez p2, :cond_9

    const v0, 0x7f070082

    goto :goto_9

    .line 189
    :pswitch_14
    const v0, 0x7f070083

    goto :goto_9

    .line 191
    :pswitch_18
    const v0, 0x7f070084

    goto :goto_9

    .line 193
    :pswitch_1c
    const v0, 0x7f070085

    goto :goto_9

    .line 195
    :pswitch_20
    const v0, 0x7f070086

    goto :goto_9

    .line 179
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
        :pswitch_9
        :pswitch_14
        :pswitch_18
        :pswitch_a
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vlingo.client.actions.RECOGNIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    move v0, v2

    goto :goto_17
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/swype/android/voice/VLingoSpeechManager;->hideVoiceKeyboard()V

    .line 113
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    if-eqz v0, :cond_c

    .line 115
    :try_start_7
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    invoke-interface {v0}, Lcom/vlingo/client/asr/service/IVLRecognitionService;->cancel()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d

    .line 119
    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method protected getFirstResult(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vlingo/client/asr/service/VLRecognitionResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vlingo/client/asr/service/VLRecognitionResult;

    iget-object v0, p0, Lcom/vlingo/client/asr/service/VLRecognitionResult;->mText:Ljava/lang/String;

    goto :goto_8
.end method

.method public isAvailable()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public startListening()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vlingo.client.actions.RECOGNIZE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    if-nez v1, :cond_15

    .line 59
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    iget-object v2, p0, Lcom/swype/android/voice/VLingoSpeechManager;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 98
    :goto_14
    return-void

    .line 63
    :cond_15
    invoke-virtual {p0}, Lcom/swype/android/voice/VLingoSpeechManager;->showVoiceKeyboard()V

    .line 66
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    .line 69
    const-string v2, ""

    .line 71
    if-eqz v1, :cond_64

    .line 72
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_35

    .line 73
    iget-object v2, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_35
    iget v1, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 79
    :goto_37
    const-string v3, "com.vlingo.client.actions.RECOGNIZE.cur_text"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "com.vlingo.client.actions.RECOGNIZE.cursor_pos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v1, "com.vlingo.client.actions.RECOGNIZE.field_id"

    const-string v2, "vp_main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 88
    if-eqz v1, :cond_57

    .line 90
    const-string v2, "com.vlingo.client.actions.RECOGNIZE.field_context"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    iget-object v2, p0, Lcom/swype/android/voice/VLingoSpeechManager;->listener:Lcom/vlingo/client/asr/service/IVLRecognitionListener;

    invoke-interface {v1, v0, v2}, Lcom/vlingo/client/asr/service/IVLRecognitionService;->startListening(Landroid/content/Intent;Lcom/vlingo/client/asr/service/IVLRecognitionListener;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_14

    .line 96
    :catch_5f
    move-exception v0

    invoke-virtual {p0}, Lcom/swype/android/voice/VLingoSpeechManager;->cancel()V

    goto :goto_14

    :cond_64
    move v1, v3

    goto :goto_37
.end method

.method protected stopListening()Z
    .registers 2

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/swype/android/voice/VLingoSpeechManager;->vlingoService:Lcom/vlingo/client/asr/service/IVLRecognitionService;

    invoke-interface {v0}, Lcom/vlingo/client/asr/service/IVLRecognitionService;->stopListening()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method
