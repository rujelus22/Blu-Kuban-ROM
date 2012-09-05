.class abstract Lcom/infraware/common/util/text/CharsetRecognizer;
.super Ljava/lang/Object;
.source "CharsetRecognizer.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method abstract match(Lcom/infraware/common/util/text/CharsetDetector;)I
.end method
