.class public Lcom/android/exchange/CommandStatusException;
.super Lcom/android/exchange/EasException;
.source "CommandStatusException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/CommandStatusException$CommandStatus;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final mItemId:Ljava/lang/String;

.field public final mStatus:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 137
    iput p1, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .parameter "status"
    .parameter "itemId"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/exchange/EasException;-><init>()V

    .line 142
    iput p1, p0, Lcom/android/exchange/CommandStatusException;->mStatus:I

    .line 143
    iput-object p2, p0, Lcom/android/exchange/CommandStatusException;->mItemId:Ljava/lang/String;

    .line 144
    return-void
.end method
