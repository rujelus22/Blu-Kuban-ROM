.class public Lcom/google/android/apps/unveil/protocol/QueryBuilder$QueryBuilderParseException;
.super Ljava/lang/Exception;
.source "QueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryBuilderParseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 2
    .parameter "e"

    .prologue
    .line 909
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 910
    return-void
.end method
