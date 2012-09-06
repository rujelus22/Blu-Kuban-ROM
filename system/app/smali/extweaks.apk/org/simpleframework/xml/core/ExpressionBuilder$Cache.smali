.class Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;
.super Ljava/util/HashMap;
.source "ExpressionBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/Expression;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/core/ExpressionBuilder;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/ExpressionBuilder;)V
    .registers 2
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lorg/simpleframework/xml/core/ExpressionBuilder$Cache;->this$0:Lorg/simpleframework/xml/core/ExpressionBuilder;

    .line 124
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 125
    return-void
.end method
