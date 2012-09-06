.class public Lbk/x;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x679fdd3b29a24eb3L


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Lbk/p;)V
    .registers 3
    .parameter

    .prologue
    .line 25
    const-string v0, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lbk/x;->a:Ljava/util/List;

    .line 28
    return-void
.end method
