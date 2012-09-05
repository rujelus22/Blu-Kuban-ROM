.class Lcom/google/android/youtube/core/converter/http/SubtitleConverter$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "SubtitleConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/SubtitleConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/SubtitleConverter;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/SubtitleConverter$1;->this$0:Lcom/google/android/youtube/core/converter/http/SubtitleConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    const-class v0, Lcom/google/android/youtube/core/model/Subtitle$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subtitle$Builder;

    .line 52
    const-string v1, "start"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->timeToMillis(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->access$000(Ljava/lang/String;)I

    move-result v2

    .line 53
    const-string v1, "dur"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->timeToMillis(Ljava/lang/String;)I
    invoke-static {v1}, Lcom/google/android/youtube/core/converter/http/SubtitleConverter;->access$000(Ljava/lang/String;)I

    move-result v1

    .line 54
    if-nez v1, :cond_20

    .line 55
    const/16 v1, 0x1b58

    .line 57
    :cond_20
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, "<br/>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 58
    add-int/2addr v1, v2

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/youtube/core/model/Subtitle$Builder;->addLine(Ljava/lang/String;II)Lcom/google/android/youtube/core/model/Subtitle$Builder;

    .line 59
    return-void
.end method
