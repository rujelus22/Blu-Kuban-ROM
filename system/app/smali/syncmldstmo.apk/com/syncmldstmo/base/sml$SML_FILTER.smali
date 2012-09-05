.class public Lcom/syncmldstmo/base/sml$SML_FILTER;
.super Ljava/lang/Object;
.source "sml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/sml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SML_FILTER"
.end annotation


# instance fields
.field public field:Lcom/syncmldstmo/base/sml$SML_FIELD;

.field public filterType:Ljava/lang/String;

.field public meta:Lcom/syncmldstmo/base/sml$SML_META;

.field public record:Lcom/syncmldstmo/base/sml$SML_RECORD;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2301
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
