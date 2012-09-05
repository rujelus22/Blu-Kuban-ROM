.class Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;
.super Ljava/lang/Object;
.source "EvTextToSpeechHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    if-eqz v0, :cond_18

    .line 441
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    iget-object v0, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    invoke-virtual {v0}, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->finalizeSpeech()V

    .line 442
    iget-object v0, p0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper$10;->this$0:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    iget-object v0, v0, Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;->mActivity:Lcom/infraware/office/baseframe/EvBaseViewerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/infraware/office/baseframe/EvBaseViewerActivity;->mEvTextToSpeechHelper:Lcom/infraware/office/baseframe/porting/EvTextToSpeechHelper;

    .line 444
    :cond_18
    return-void
.end method
