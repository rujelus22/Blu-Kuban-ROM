.class Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;
.super Ljava/lang/Object;
.source "BasicReaderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/render/BasicReaderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassageTextRequest"
.end annotation


# instance fields
.field private final mExternalRequestId:I

.field private final mPassageIndex:I

.field private final mPosition:Ljava/lang/String;

.field private final mTaskRequestId:I

.field final synthetic this$0:Lcom/google/android/apps/books/render/BasicReaderController;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/render/BasicReaderController;ILjava/lang/String;II)V
    .registers 6
    .parameter
    .parameter "passageIndex"
    .parameter "position"
    .parameter "externalRequestId"
    .parameter "requestId"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPassageIndex:I

    .line 138
    iput-object p3, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;

    .line 139
    iput p4, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I

    .line 140
    iput p5, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    .line 141
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mExternalRequestId:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    return v0
.end method

.method static synthetic access$900(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method run()V
    .registers 14

    .prologue
    const/4 v3, 0x0

    .line 154
    iget v1, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPassageIndex:I

    .line 156
    .local v1, passage:I
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;

    if-nez v0, :cond_40

    .line 157
    const/4 v9, 0x1

    .line 168
    .local v9, exactPassage:Z
    :goto_8
    if-eqz v9, :cond_7c

    .line 169
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mLoadedPassages:Ljava/util/Set;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 172
    new-instance v12, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;

    invoke-direct {v12, p0}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$1;-><init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)V

    .line 183
    .local v12, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPassageTextReadyHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$600(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/apps/books/render/TextReader;->requestPassageText(ILjava/lang/String;I)V

    .line 259
    .end local v12           #handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPassageTextReadyHandler;
    :goto_39
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReaderIsBusy:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1302(Lcom/google/android/apps/books/render/BasicReaderController;Z)Z

    .line 260
    return-void

    .line 159
    .end local v9           #exactPassage:Z
    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mPositionToPassage:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 160
    .local v11, foundPassage:Ljava/lang/Integer;
    if-eqz v11, :cond_56

    .line 161
    const/4 v9, 0x1

    .line 162
    .restart local v9       #exactPassage:Z
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8

    .line 164
    .end local v9           #exactPassage:Z
    :cond_56
    const/4 v9, 0x0

    .restart local v9       #exactPassage:Z
    goto :goto_8

    .line 191
    .end local v11           #foundPassage:Ljava/lang/Integer;
    :cond_58
    move v10, v1

    .line 192
    .local v10, finalPassage:I
    new-instance v12, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;

    invoke-direct {v12, p0, v10}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$2;-><init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;I)V

    .line 211
    .local v12, handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    const/4 v2, 0x0

    iget v6, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    move-object v4, v3

    move-object v5, v3

    invoke-interface/range {v0 .. v6}, Lcom/google/android/apps/books/render/TextReader;->loadPage(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    goto :goto_39

    .line 220
    .end local v10           #finalPassage:I
    .end local v12           #handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;
    :cond_7c
    move v10, v1

    .line 221
    .restart local v10       #finalPassage:I
    new-instance v12, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$3;

    invoke-direct {v12, p0, v10}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$3;-><init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;I)V

    .line 240
    .restart local v12       #handler:Lcom/google/android/apps/books/render/BasicReaderController$OnPageLoadedHandler;
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnPageLoadedHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1100(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v8, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;

    invoke-direct {v8, p0}, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest$4;-><init>(Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;)V

    .line 253
    .local v8, errorHandler:Lcom/google/android/apps/books/render/BasicReaderController$OnInvalidPositionHandler;
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mOnInvalidPositionHandlers:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$1200(Lcom/google/android/apps/books/render/BasicReaderController;)Ljava/util/Map;

    move-result-object v0

    iget v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->this$0:Lcom/google/android/apps/books/render/BasicReaderController;

    #getter for: Lcom/google/android/apps/books/render/BasicReaderController;->mReader:Lcom/google/android/apps/books/render/TextReader;
    invoke-static {v0}, Lcom/google/android/apps/books/render/BasicReaderController;->access$700(Lcom/google/android/apps/books/render/BasicReaderController;)Lcom/google/android/apps/books/render/TextReader;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mPosition:Ljava/lang/String;

    iget v6, p0, Lcom/google/android/apps/books/render/BasicReaderController$PassageTextRequest;->mTaskRequestId:I

    move-object v4, v3

    move-object v5, v3

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/books/render/TextReader;->loadPosition(ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;)V

    goto :goto_39
.end method
