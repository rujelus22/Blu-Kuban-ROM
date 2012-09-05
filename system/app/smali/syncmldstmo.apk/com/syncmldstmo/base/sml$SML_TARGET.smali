.class public Lcom/syncmldstmo/base/sml$SML_TARGET;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_TARGET"
.end annotation


# instance fields
.field public filter:Lcom/syncmldstmo/base/sml$SML_FILTER;

.field public pLocName:Ljava/lang/String;

.field public pLocURI:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2309
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
