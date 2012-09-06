.class public LnT;
.super Ljava/lang/Object;
.source "TimeRangeSectionIndexer.java"

# interfaces
.implements LsK;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LsK",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Long;

.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, LnT;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, LnT;->a:Ljava/lang/Long;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, LnT;->a:Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, LnT;->a()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LnT;->a:Ljava/lang/String;

    return-object v0
.end method
