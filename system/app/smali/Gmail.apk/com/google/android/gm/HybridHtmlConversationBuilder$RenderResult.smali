.class public Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;
.super Ljava/lang/Object;
.source "HybridHtmlConversationBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HybridHtmlConversationBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenderResult"
.end annotation


# instance fields
.field private mHtml:Ljava/lang/String;

.field private final mInitialRender:Z

.field private final mParcelableState:Lcom/google/android/gm/ConversationViewState;

.field private final mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/ConversationInfo;Lcom/google/android/gm/ConversationViewState;)V
    .registers 4
    .parameter "info"
    .parameter "previousParceledState"

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    if-nez p2, :cond_1b

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mInitialRender:Z

    .line 114
    iget-boolean v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mInitialRender:Z

    if-eqz v0, :cond_11

    new-instance p2, Lcom/google/android/gm/ConversationViewState;

    .end local p2
    invoke-direct {p2}, Lcom/google/android/gm/ConversationViewState;-><init>()V

    :cond_11
    iput-object p2, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mParcelableState:Lcom/google/android/gm/ConversationViewState;

    .line 116
    new-instance v0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    invoke-direct {v0}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    .line 117
    return-void

    .line 113
    .restart local p2
    :cond_1b
    const/4 v0, 0x0

    goto :goto_6
.end method

.method static synthetic access$400(Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->setHtml(Ljava/lang/String;)V

    return-void
.end method

.method private setHtml(Ljava/lang/String;)V
    .registers 2
    .parameter "html"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mHtml:Ljava/lang/String;

    .line 129
    return-void
.end method


# virtual methods
.method public getHtml()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderState()Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mRenderState:Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderState;

    return-object v0
.end method

.method public getViewState()Lcom/google/android/gm/ConversationViewState;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gm/HybridHtmlConversationBuilder$RenderResult;->mParcelableState:Lcom/google/android/gm/ConversationViewState;

    return-object v0
.end method
