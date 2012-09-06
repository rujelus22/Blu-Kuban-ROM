.class Lorg/simpleframework/xml/util/Dictionary$Table;
.super Ljava/util/HashMap;
.source "Dictionary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/simpleframework/xml/util/Dictionary;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/util/Dictionary;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lorg/simpleframework/xml/util/Dictionary$Table;->this$0:Lorg/simpleframework/xml/util/Dictionary;

    .line 145
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 146
    return-void
.end method
