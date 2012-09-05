.class public final Lcom/google/api/client/testing/json/AbstractJsonGeneratorTest$Feed;
.super Ljava/lang/Object;
.source "AbstractJsonGeneratorTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/testing/json/AbstractJsonGeneratorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feed"
.end annotation


# instance fields
.field public entries:Ljava/util/Collection;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/client/testing/json/AbstractJsonGeneratorTest$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/testing/json/AbstractJsonGeneratorTest$Feed;->entries:Ljava/util/Collection;

    return-void
.end method
