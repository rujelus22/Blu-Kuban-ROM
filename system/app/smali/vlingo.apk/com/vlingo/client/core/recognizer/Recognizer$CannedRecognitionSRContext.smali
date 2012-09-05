.class Lcom/vlingo/client/core/recognizer/Recognizer$CannedRecognitionSRContext;
.super Lcom/vlingo/client/core/recognizer/SRContext;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/core/recognizer/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CannedRecognitionSRContext"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 8
    .parameter "fieldID"

    .prologue
    .line 949
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vlingo/client/core/recognizer/SRContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 950
    return-void
.end method


# virtual methods
.method public getCustomParam(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "name"

    .prologue
    .line 953
    const-string v2, "Custom2"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 954
    invoke-static {}, Lcom/vlingo/client/core/net/ConnectionManager;->getInstance()Lcom/vlingo/client/core/net/ConnectionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/net/ConnectionManager;->getCurrentConnectionType()Ljava/lang/String;

    move-result-object v2

    .line 965
    :goto_10
    return-object v2

    .line 955
    :cond_11
    const-string v2, "Custom3"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 956
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 957
    .local v1, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getInstance()Lcom/vlingo/client/core/deviceinfo/PhoneInfo;

    move-result-object v0

    .line 958
    .local v0, phoneInfo:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getCarrierCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 960
    invoke-virtual {v0}, Lcom/vlingo/client/core/deviceinfo/PhoneInfo;->getCurrentCarrier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 961
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    .line 962
    .end local v0           #phoneInfo:Lcom/vlingo/client/core/deviceinfo/PhoneInfo;
    .end local v1           #sb:Ljava/lang/StringBuffer;
    :cond_3a
    const-string v2, "Custom5"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 963
    const-string v2, "TestRecognition"

    goto :goto_10

    .line 965
    :cond_45
    const-string v2, ""

    goto :goto_10
.end method
