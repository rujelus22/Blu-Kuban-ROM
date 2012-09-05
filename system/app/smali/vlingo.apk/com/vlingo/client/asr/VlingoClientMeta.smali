.class public Lcom/vlingo/client/asr/VlingoClientMeta;
.super Lcom/vlingo/client/android/core/recognizer/AndroidClientMeta;
.source "VlingoClientMeta.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vlingo/client/android/core/recognizer/AndroidClientMeta;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->getVlingoLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
