.class Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullMessageDialogImpl;
.super Ljava/lang/Object;
.source "VlingoVoiceRecognitionService.java"

# interfaces
.implements Lcom/vlingo/client/core/asr/ui/RecognitionMessageDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NullMessageDialogImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;


# direct methods
.method constructor <init>(Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService$NullMessageDialogImpl;->this$0:Lcom/vlingo/client/asr/service/VlingoVoiceRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "content"
    .parameter "errorCode"
    .parameter "type"

    .prologue
    .line 414
    return-void
.end method

.method public isDisplayed()Z
    .registers 2

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method
