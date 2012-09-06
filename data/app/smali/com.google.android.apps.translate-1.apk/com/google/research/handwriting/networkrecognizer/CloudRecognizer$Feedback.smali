.class public Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;
.super Ljava/lang/Object;
.source "CloudRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feedback"
.end annotation


# instance fields
.field final debugInfo:Ljava/lang/String;

.field final label:Ljava/lang/String;

.field final mode:Ljava/lang/String;

.field final resultId:Ljava/lang/String;

.field final strokes:Lcom/google/research/handwriting/base/StrokeList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/research/handwriting/base/StrokeList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "label"
    .parameter "strokes"
    .parameter "mode"
    .parameter "debugInfo"

    .prologue
    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->label:Ljava/lang/String;

    .line 497
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 498
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->resultId:Ljava/lang/String;

    .line 499
    iput-object p3, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->mode:Ljava/lang/String;

    .line 500
    iput-object p4, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->debugInfo:Ljava/lang/String;

    .line 501
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "label"
    .parameter "resultId"
    .parameter "mode"
    .parameter "debugInfo"

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->label:Ljava/lang/String;

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    .line 506
    iput-object p2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->resultId:Ljava/lang/String;

    .line 507
    iput-object p3, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->mode:Ljava/lang/String;

    .line 508
    iput-object p4, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->debugInfo:Ljava/lang/String;

    .line 509
    return-void
.end method


# virtual methods
.method public asJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5
    .parameter "language"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 513
    .local v0, request:Lorg/json/JSONObject;
    const-string v1, "feedback"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->debugInfo:Ljava/lang/String;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->debugInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 516
    const-string v1, "debug_info"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->debugInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    :cond_24
    const-string v1, "select_type"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->resultId:Ljava/lang/String;

    if-nez v1, :cond_4f

    .line 521
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    #calls: Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addWritingGuide(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V
    invoke-static {v0, v1}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->access$000(Lorg/json/JSONObject;Lcom/google/research/handwriting/base/StrokeList;)V

    .line 522
    const-string v1, "ink"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->asJsonArray()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    iget-object v1, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v1}, Lcom/google/research/handwriting/base/StrokeList;->getPreContext()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->strokes:Lcom/google/research/handwriting/base/StrokeList;

    invoke-virtual {v2}, Lcom/google/research/handwriting/base/StrokeList;->getPostContext()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->addContext(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer;->access$100(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_4e
    return-object v0

    .line 525
    :cond_4f
    const-string v1, "ink_hash"

    iget-object v2, p0, Lcom/google/research/handwriting/networkrecognizer/CloudRecognizer$Feedback;->resultId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4e
.end method
