.class Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;
.super Ljava/lang/Object;
.source "ChipView.java"

# interfaces
.implements Lcom/google/android/apps/translate/NetworkTts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/ChipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkTtsCallback"
.end annotation


# instance fields
.field private mTriggeringSpeaker:Landroid/view/View;

.field private mTtsIconView:Landroid/view/View;

.field final synthetic this$0:Lcom/google/android/apps/translate/translation/ChipView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/translation/ChipView;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter "ttsIconView"

    .prologue
    .line 851
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTtsIconView:Landroid/view/View;

    .line 853
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTtsIconView:Landroid/view/View;

    sget v1, Lcom/google/android/apps/translate/R$id;->btn_translate_tts_speak:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTriggeringSpeaker:Landroid/view/View;

    .line 854
    return-void
.end method

.method static synthetic access$2900(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTtsIconView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 847
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->mTriggeringSpeaker:Landroid/view/View;

    return-object v0
.end method

.method private hideTtsLoading(I)V
    .registers 4
    .parameter "ttsLoadingResId"

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$2;-><init>(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 896
    return-void
.end method

.method private showTtsLoading(I)V
    .registers 4
    .parameter "ttsLoadingResId"

    .prologue
    .line 873
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback$1;-><init>(Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 885
    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3
    .parameter "error"

    .prologue
    .line 868
    sget v0, Lcom/google/android/apps/translate/R$id;->translate_tts_loading:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->hideTtsLoading(I)V

    .line 869
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->this$0:Lcom/google/android/apps/translate/translation/ChipView;

    #getter for: Lcom/google/android/apps/translate/translation/ChipView;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/ChipView;->access$1800(Lcom/google/android/apps/translate/translation/ChipView;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/translate/Util;->showNetworkTtsError(Landroid/app/Activity;I)V

    .line 870
    return-void
.end method

.method public onPrepare()V
    .registers 2

    .prologue
    .line 863
    sget v0, Lcom/google/android/apps/translate/R$id;->translate_tts_loading:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->showTtsLoading(I)V

    .line 864
    return-void
.end method

.method public onReady()V
    .registers 2

    .prologue
    .line 858
    sget v0, Lcom/google/android/apps/translate/R$id;->translate_tts_loading:I

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/translation/ChipView$NetworkTtsCallback;->hideTtsLoading(I)V

    .line 859
    return-void
.end method
