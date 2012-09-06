.class public Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;
.super Ljava/lang/Object;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputWrapper"
.end annotation


# static fields
.field private static final sInputWrapperInstance:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;


# instance fields
.field private mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 826
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->sInputWrapperInstance:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    .line 825
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 842
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/latin/SubtypeSwitcher;)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->setVoiceInput(Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/latin/SubtypeSwitcher;)V

    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;
    .registers 1

    .prologue
    .line 829
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->sInputWrapperInstance:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    return-object v0
.end method

.method private setVoiceInput(Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/latin/SubtypeSwitcher;)V
    .registers 4
    .parameter "voiceInput"
    .parameter "switcher"

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    .line 836
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    .line 838
    :cond_8
    invoke-virtual {p2, p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->setVoiceInputWrapper(Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;)Z

    .line 839
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->cancel()V

    .line 849
    :cond_9
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->reset()V

    .line 856
    :cond_9
    return-void
.end method
