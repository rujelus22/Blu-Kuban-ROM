.class public Lcom/android/exchange/IllegalHeartbeatException;
.super Lcom/android/exchange/EasException;
.source "IllegalHeartbeatException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mLegalHeartbeat:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .parameter "legalHeartbeat"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/exchange/IllegalHeartbeatException;->mLegalHeartbeat:I

    .line 53
    return-void
.end method
