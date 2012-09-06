.class Lcom/google/common/base/CaseFormat$1;
.super Lcom/google/common/base/Converter;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CaseFormat;->converterTo(Lcom/google/common/base/CaseFormat;)Lcom/google/common/base/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Converter",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/base/CaseFormat;

.field final synthetic val$targetFormat:Lcom/google/common/base/CaseFormat;


# direct methods
.method constructor <init>(Lcom/google/common/base/CaseFormat;Lcom/google/common/base/CaseFormat;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/common/base/CaseFormat$1;->this$0:Lcom/google/common/base/CaseFormat;

    iput-object p2, p0, Lcom/google/common/base/CaseFormat$1;->val$targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-direct {p0}, Lcom/google/common/base/Converter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doBackward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CaseFormat$1;->doBackward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doBackward(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$1;->val$targetFormat:Lcom/google/common/base/CaseFormat;

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$1;->this$0:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doForward(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/CaseFormat$1;->doForward(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doForward(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/base/CaseFormat$1;->this$0:Lcom/google/common/base/CaseFormat;

    iget-object v1, p0, Lcom/google/common/base/CaseFormat$1;->val$targetFormat:Lcom/google/common/base/CaseFormat;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/base/CaseFormat;->to(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
