.class public final Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;
.super Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;
.source "MultiKindFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/api/client/xml/atom/AbstractAtomFeedParser",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final kindToEntryClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;,"Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser<TT;>;"
    invoke-direct {p0}, Lcom/google/api/client/xml/atom/AbstractAtomFeedParser;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/xml/atom/MultiKindFeedParser;->kindToEntryClassMap:Ljava/util/HashMap;

    .line 52
    return-void
.end method
