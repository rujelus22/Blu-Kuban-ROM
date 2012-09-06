.class Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;
.super Ljava/lang/Object;
.source "TranslateManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoggingTranslationRequestHandlerObject"
.end annotation


# instance fields
.field private mExtraParams:Ljava/lang/String;

.field private mFromLangShortName:Ljava/lang/String;

.field private mInputText:Ljava/lang/String;

.field private mToLangShortName:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->this$0:Lcom/google/android/apps/translate/TranslateManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/translate/TranslateManagerImpl;Lcom/google/android/apps/translate/TranslateManagerImpl$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;-><init>(Lcom/google/android/apps/translate/TranslateManagerImpl;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mInputText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mInputText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mExtraParams:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mExtraParams:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mFromLangShortName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mFromLangShortName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mToLangShortName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateManagerImpl$LoggingTranslationRequestHandlerObject;->mToLangShortName:Ljava/lang/String;

    return-object p1
.end method
