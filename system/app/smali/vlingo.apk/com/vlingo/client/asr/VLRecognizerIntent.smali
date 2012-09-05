.class public Lcom/vlingo/client/asr/VLRecognizerIntent;
.super Ljava/lang/Object;
.source "VLRecognizerIntent.java"


# static fields
.field public static final ACTION_RECOGNIZE:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE"

.field public static final DEFAULT_FIELD_ID:Ljava/lang/String; = "vp_main"

.field public static final EXTRA_AMR_FILE:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.amr_wavefile"

.field public static final EXTRA_APP_ID:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.app_id"

.field public static final EXTRA_CURSOR_POS:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.cursor_pos"

.field public static final EXTRA_CUR_TEXT:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.cur_text"

.field public static final EXTRA_EXECUTE_ACTION:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.execute_action"

.field public static final EXTRA_FIELD_CONTEXT:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.field_context"

.field public static final EXTRA_FIELD_ID:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.field_id"

.field public static final EXTRA_PCM_FILE:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.pcm_wavefile"

.field public static final EXTRA_PCM_SAMPLE_BITS:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.pcm_sample_bits"

.field public static final EXTRA_PCM_SAMPLE_RATE:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.pcm_sample_rate"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.pending_intent"

.field public static final EXTRA_RECO_DURATION_MS:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.duration_ms"

.field public static final EXTRA_RESULTS:Ljava/lang/String; = "com.vlingo.client.actions.RESULTS"

.field public static final EXTRA_SERVER:Ljava/lang/String; = "com.vlingo.client.actions.RECOGNIZE.server"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static fillSRContextFromIntent(Lcom/vlingo/client/core/recognizer/SRContext;Landroid/content/Intent;Landroid/content/Context;)V
    .registers 11
    .parameter "srContext"
    .parameter "i"
    .parameter "context"

    .prologue
    .line 63
    const/4 v3, 0x0

    .line 64
    .local v3, fieldContext:Ljava/lang/String;
    const/4 v4, 0x0

    .line 65
    .local v4, fieldId:Ljava/lang/String;
    const/4 v0, 0x0

    .line 66
    .local v0, curText:Ljava/lang/String;
    const/4 v1, 0x0

    .line 67
    .local v1, cursorPos:I
    if-eqz p1, :cond_1f

    .line 68
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.field_id"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.field_context"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.cursor_pos"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 71
    const-string v6, "com.vlingo.client.actions.RECOGNIZE.cur_text"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_1f
    if-nez v4, :cond_23

    .line 75
    const-string v4, "vp_main"

    .line 78
    :cond_23
    const-string v6, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, lm:Ljava/lang/String;
    const-string v6, "calling_package"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, fc:Ljava/lang/String;
    invoke-static {v5}, Lcom/vlingo/client/core/util/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    .line 81
    move-object v3, v2

    .line 87
    :goto_36
    invoke-virtual {p0, v3}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldContext(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0, v4}, Lcom/vlingo/client/core/recognizer/SRContext;->setFieldID(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/vlingo/client/core/recognizer/SRContext;->setCursorPos(I)V

    .line 90
    if-nez v0, :cond_43

    .line 91
    const-string v0, ""

    .line 92
    :cond_43
    invoke-virtual {p0, v0}, Lcom/vlingo/client/core/recognizer/SRContext;->setCurText(Ljava/lang/String;)V

    .line 93
    return-void

    .line 84
    :cond_47
    invoke-static {p2}, Lcom/vlingo/client/util/ActivityUtil;->getActiveActivityProcess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_36
.end method
