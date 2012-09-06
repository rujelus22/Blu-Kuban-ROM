.class Lcom/google/android/apps/translate/DonutTtsWrapper$1;
.super Ljava/lang/Object;
.source "DonutTtsWrapper.java"

# interfaces
.implements Lcom/google/tts/TextToSpeechBeta$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/DonutTtsWrapper;-><init>(Landroid/content/Context;Lcom/google/android/apps/translate/DonutTtsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/DonutTtsWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/DonutTtsWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/apps/translate/DonutTtsWrapper$1;->this$0:Lcom/google/android/apps/translate/DonutTtsWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(II)V
    .registers 5
    .parameter "status"
    .parameter "version"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper$1;->this$0:Lcom/google/android/apps/translate/DonutTtsWrapper;

    #getter for: Lcom/google/android/apps/translate/DonutTtsWrapper;->mCallback:Lcom/google/android/apps/translate/DonutTtsCallback;
    invoke-static {v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->access$000(Lcom/google/android/apps/translate/DonutTtsWrapper;)Lcom/google/android/apps/translate/DonutTtsCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/apps/translate/DonutTtsWrapper$1;->this$0:Lcom/google/android/apps/translate/DonutTtsWrapper;

    #getter for: Lcom/google/android/apps/translate/DonutTtsWrapper;->mCallback:Lcom/google/android/apps/translate/DonutTtsCallback;
    invoke-static {v0}, Lcom/google/android/apps/translate/DonutTtsWrapper;->access$000(Lcom/google/android/apps/translate/DonutTtsWrapper;)Lcom/google/android/apps/translate/DonutTtsCallback;

    move-result-object v1

    if-nez p1, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-interface {v1, v0}, Lcom/google/android/apps/translate/DonutTtsCallback;->onInit(Z)V

    .line 58
    :cond_14
    return-void

    .line 57
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
