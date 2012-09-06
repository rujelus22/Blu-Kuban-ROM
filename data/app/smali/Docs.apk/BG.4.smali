.class public LBG;
.super Ljava/lang/Object;
.source "ManualOffsetTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<NodeOwner:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:LBH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBH",
            "<TNodeOwner;>;"
        }
    .end annotation
.end field

.field private final a:LEY;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEY",
            "<TNodeOwner;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, LEY;

    invoke-direct {v0}, LEY;-><init>()V

    iput-object v0, p0, LBG;->a:LEY;

    .line 27
    iget-object v0, p0, LBG;->a:LEY;

    invoke-virtual {v0}, LEY;->a()LFb;

    move-result-object v0

    invoke-interface {v0, v2, v1}, LFb;->a(Ljava/lang/Object;I)LFb;

    move-result-object v0

    .line 28
    invoke-interface {v0, v2, v1}, LFr;->a(Ljava/lang/Object;I)LFr;

    move-result-object v1

    .line 29
    new-instance v2, LBH;

    invoke-direct {v2, v1, v0}, LBH;-><init>(LFr;LFr;)V

    iput-object v2, p0, LBG;->a:LBH;

    .line 30
    return-void
.end method


# virtual methods
.method public a()LBH;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBH",
            "<TNodeOwner;>;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, LBG;->a:LBH;

    return-object v0
.end method
