.class public LadK;
.super Ljava/lang/Object;
.source "CustomizeJsonParser.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 49
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method
